using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SchoolSite.DAL.DAO;
using SchoolSite.DAL.Gateway;
using System.Web.Security;

namespace SchoolSite.BLL
{
    public class RegistationManager
    {
        readonly RegistationGateway _registationGateway = new RegistationGateway();

        public string RegistarNewUser(Registation registation)
        {
            if (_registationGateway.IsUserIdExists(registation.UserId))
            {
                return "Sorry! Username already exists";
            }
            if (_registationGateway.IsUserEmailExists(registation.Email))
            {
                return "Sorry! Email already exists";
            }
            return _registationGateway.SaveInformationIntoDb(registation);
        }

        public int CheckingRequirements(Registation registation)
        {
            if (_registationGateway.IsUserIdExists(registation.UserId))
            {
                List<Registation> userInfoList = _registationGateway.GetAllInfo(registation.UserId);
                foreach (var userInfo in userInfoList)
                {
                    if (userInfo.Islocked==false)
                    {
                        var retryAttemps = userInfo.RetryAttemps;
                        if (retryAttemps!=4)
                        {
                            if (userInfo.Password != FormsAuthentication.HashPasswordForStoringInConfigFile(registation.Password, "SHA1"))
                            {
                                retryAttemps = retryAttemps + 1;
                                _registationGateway.UpdateUserTable(retryAttemps, registation.UserId);
                                return 0;
                            }
                            if (userInfo.Type == "admin")
                            {
                                _registationGateway.ResetAttempt(registation.UserId);
                                return 3;
                            }
                            if (userInfo.Type == "teacher")
                            {
                                _registationGateway.ResetAttempt(registation.UserId);
                                return 1;
                            }
                            if (userInfo.Type == "student")
                            {
                                _registationGateway.ResetAttempt(registation.UserId);
                                return 2;
                            }
                            return 3;
                        }
                        _registationGateway.LockUser(registation.UserId);
                    }
                    else
                    {
                        return-2;
                    }
                }
            }
            
            return -1;
        }

        public List<Registation> GetUserDetail(string userId)
        {
           return _registationGateway.GetAllInfo(userId);

        }
    }
}