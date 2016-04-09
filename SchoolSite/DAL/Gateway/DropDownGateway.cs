using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SchoolSite.DAL.DAO;

namespace SchoolSite.DAL.Gateway
{
    public class DropDownGateway : DbConnection
    {
        public List<Classes> GetAllClasses()
        {
            string getClasses = "SELECT * FROM tbl_class";
            ConnectionObj.Open();
            CommandObj.CommandText = getClasses;
            SqlDataReader reader = CommandObj.ExecuteReader();
            var districtList = new List<Classes>();
            while (reader.Read())
            {
                Classes aClasses = new Classes();
                aClasses.Id = Convert.ToInt32(reader["id"].ToString());
                aClasses.ClassName = reader["class_name"].ToString();
                aClasses.ClassCode = reader["class_code"].ToString();
                districtList.Add(aClasses);

            }
            reader.Close();
            ConnectionObj.Close();
            return districtList;
        }

        public List<District> GetAllDistrict()
        {
            string getDistrict = "SELECT * FROM tbl_district Order By district_name ASC";
            ConnectionObj.Open();
            CommandObj.CommandText = getDistrict;
            SqlDataReader reader = CommandObj.ExecuteReader();
            var districtList = new List<District>();
            while (reader.Read())
            {
                District aDistrict = new District();
                aDistrict.Id = Convert.ToInt32(reader["id"].ToString());
                aDistrict.DistrictName = reader["district_name"].ToString();
                districtList.Add(aDistrict);

            }
            reader.Close();
            ConnectionObj.Close();
            return districtList;
        }

        public List<Upazila> GetAllUpazila(int districtId)
        {
            string getUpazila = "SELECT * FROM tbl_upazila where district_id = '"+districtId+"' Order By upazila_name ASC";
            ConnectionObj.Open();
            CommandObj.CommandText = getUpazila;
            SqlDataReader reader = CommandObj.ExecuteReader();
            var upazilaList = new List<Upazila>();
            while (reader.Read())
            {
                Upazila aUpazila = new Upazila();
                aUpazila.Id = Convert.ToInt32(reader["id"].ToString());
                aUpazila.UpazilaName = reader["upazila_name"].ToString();
                upazilaList.Add(aUpazila);

            }
            reader.Close();
            ConnectionObj.Close();
            return upazilaList;
        }

        public List<BloodGroup> GetAllBloodGroup()
        {
            string getBloodGroup = "SELECT * FROM tbl_blood";
            ConnectionObj.Open();
            CommandObj.CommandText = getBloodGroup;
            SqlDataReader reader = CommandObj.ExecuteReader();
            var upazilaList = new List<BloodGroup>();
            while (reader.Read())
            {
                BloodGroup aBloodGroup = new BloodGroup();
                aBloodGroup.Id = Convert.ToInt32(reader["id"].ToString());
                aBloodGroup.GroupName = reader["blood_name"].ToString();
                upazilaList.Add(aBloodGroup);

            }
            reader.Close();
            ConnectionObj.Close();
            return upazilaList;
        }

        public List<Religion> GetAllReligion()
        {
            string getReligion = "SELECT * FROM tbl_religion";
            ConnectionObj.Open();
            CommandObj.CommandText = getReligion;
            SqlDataReader reader = CommandObj.ExecuteReader();
            var upazilaList = new List<Religion>();
            while (reader.Read())
            {
                Religion aReligion = new Religion();
                aReligion.Id = Convert.ToInt32(reader["id"].ToString());
                aReligion.ReligionName = reader["religion"].ToString();
                upazilaList.Add(aReligion);

            }
            reader.Close();
            ConnectionObj.Close();
            return upazilaList;
        }
    }
}