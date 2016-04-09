using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SchoolSite.DAL.DAO;
using SchoolSite.DAL.Gateway;
using SchoolSite.UI.Students;
using Profile = SchoolSite.DAL.DAO.Profile;

namespace SchoolSite.BLL
{
    public class ProfileManager
    {
        ProfileGateway _profileGateway = new ProfileGateway();
        public string SaveProfile(Profile profile)
        {
            return _profileGateway.SaveProfile(profile);
        }

        public List<Profile> GetInformationByUserId(int userId)
        {
            return _profileGateway.GetInformationByUserId(userId);
        }
    }
}