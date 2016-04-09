using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SchoolSite.DAL.DAO;
using SchoolSite.UI.Students;
using Profile = SchoolSite.DAL.DAO.Profile;

namespace SchoolSite.DAL.Gateway
{
    public class ProfileGateway : DbConnection
    {
        public string SaveProfile(Profile profile)
        {
            string insertSql = "INSERT INTO tbl_student (";
            insertSql += "stu_name, stu_class_id, stu_section, stu_session,";
            insertSql += "stu_gender, stu_dob, stu_address, district_id, upazila_id, blood_group_id,";
            insertSql += "religion_id, stu_contact, stu_father_name, stu_mother_name, father_contact,";
            insertSql += "stu_guardian_name, stu_guardian_profession, stu_guardian_contact,stu_img,user_id)";
            insertSql += "VALUES (";
            insertSql += "@name, @class, @section, @session, @gender, @dob, @address, @district, @upazila, @bloodGroup,";
            insertSql += "@religion, @contact, @fatherName, @motherName, @fatherContact, @guardianName, @guardianProfession,";
            insertSql += " @guardianContact, @image, @userId)";

            ConnectionObj.Open();
            CommandObj.CommandText = insertSql;
            CommandObj.Parameters.AddWithValue("@name", profile.Name);
            CommandObj.Parameters.AddWithValue("@class", profile.ClassId);
            CommandObj.Parameters.AddWithValue("@section", profile.Section);
            CommandObj.Parameters.AddWithValue("@session", profile.Session);
            CommandObj.Parameters.AddWithValue("@gender", profile.Gender);
            CommandObj.Parameters.AddWithValue("@dob", profile.DateOfBirth);
            CommandObj.Parameters.AddWithValue("@address", profile.Address);
            CommandObj.Parameters.AddWithValue("@district", profile.DistrictId);
            CommandObj.Parameters.AddWithValue("@upazila", profile.UpazilaId);
            CommandObj.Parameters.AddWithValue("@bloodGroup", profile.BloodGroupId);
            CommandObj.Parameters.AddWithValue("@religion", profile.ReligionId);
            CommandObj.Parameters.AddWithValue("@contact", profile.Contact);
            CommandObj.Parameters.AddWithValue("@fatherName", profile.FathersName);
            CommandObj.Parameters.AddWithValue("@motherName", profile.MothersName);
            CommandObj.Parameters.AddWithValue("@fatherContact",profile.FathersContact);
            CommandObj.Parameters.AddWithValue("@guardianName", profile.GuardianName);
            CommandObj.Parameters.AddWithValue("@guardianProfession", profile.GuardianProfession);
            CommandObj.Parameters.AddWithValue("@guardianContact", profile.GuardianContact);
            CommandObj.Parameters.AddWithValue("@image", profile.Image);
            CommandObj.Parameters.AddWithValue("@userId",profile.Id);
            
            int saveRowAffected = CommandObj.ExecuteNonQuery();
            ConnectionObj.Close();
            if (saveRowAffected > 0)
            {
                return "Success!";
            }
            return "Save Failed";
        }

        public List<Profile> GetInformationByUserId(int userId)
        {
            string selectSql = "select stu_name,class_name,class_code,stu_section,stu_session,stu_gender,stu_dob,stu_address,district_name,upazila_name, blood_name,religion,stu_contact,stu_father_name,stu_mother_name,father_contact,stu_guardian_name,stu_guardian_profession,stu_guardian_contact,stu_img from tbl_student JOIN tbl_class ON tbl_class.id = tbl_student.stu_class_id JOIN tbl_district ON tbl_district.id = tbl_student.district_id JOIN tbl_upazila ON tbl_upazila.id = tbl_student.upazila_id JOIN tbl_blood ON tbl_blood.id = tbl_student.blood_group_id JOIN tbl_religion ON tbl_religion.id = tbl_student.religion_id where user_id = '"+userId+"' ";
            ConnectionObj.Open();
            CommandObj.CommandText = selectSql;
            SqlDataReader reader = CommandObj.ExecuteReader();
            var userList = new List<Profile>();
            while (reader.Read())
            {
                var aProfile = new Profile
                {
                    Name = reader["stu_name"].ToString(),
                    ClassName = reader["class_name"].ToString(),
                    ClassCode = reader["class_code"].ToString(),
                    Section = reader["stu_section"].ToString(),
                    Session = reader["stu_session"].ToString(),
                    Gender = reader["stu_gender"].ToString(),
                    DateOfBirth = reader["stu_dob"].ToString(),
                    Address = reader["stu_address"].ToString(),
                    DistrictName = reader["district_name"].ToString(),
                    UpazilaName = reader["upazila_name"].ToString(),
                    BloodGroup =reader["blood_name"].ToString(),
                    Religion = reader["religion"].ToString(),
                    Contact = reader["stu_contact"].ToString(),
                    FathersName = reader["stu_father_name"].ToString(),
                    MothersName = reader["stu_mother_name"].ToString(),
                    FathersContact = reader["father_contact"].ToString(),
                    GuardianName = reader["stu_guardian_name"].ToString(),
                    GuardianProfession = reader["stu_guardian_profession"].ToString(),
                    GuardianContact = reader["stu_guardian_contact"].ToString(),
                    Image = reader["stu_img"].ToString()
                };

                userList.Add(aProfile);
            }
            reader.Close();
            ConnectionObj.Close();
            return userList;
        }
    }
}