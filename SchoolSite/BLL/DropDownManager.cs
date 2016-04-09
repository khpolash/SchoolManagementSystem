using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SchoolSite.DAL.DAO;
using SchoolSite.DAL.Gateway;

namespace SchoolSite.BLL
{
    public class DropDownManager
    {
        DropDownGateway _dropDownGateway = new DropDownGateway();
        public List<Classes> GetAllClasses()
        {
            return _dropDownGateway.GetAllClasses();
        }

        public List<District> GetAllDistrict()
        {
            return _dropDownGateway.GetAllDistrict();
        }

        public List<Upazila> GetAllUpazila(int districtId)
        {
            return _dropDownGateway.GetAllUpazila(districtId);
        }

        public List<BloodGroup> GetAllBloodGroup()
        {
            return _dropDownGateway.GetAllBloodGroup();
        }

        public List<Religion> GetAllReligion()
        {
            return _dropDownGateway.GetAllReligion();
        }
    }
}