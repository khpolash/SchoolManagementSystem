using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SchoolSite.DAL.DAO;

namespace SchoolSite.DAL.Gateway
{
    public class RegistationGateway : DbConnection
    {
        public string SaveInformationIntoDb (Registation registation)
        {
            string insertSql = "INSERT INTO tbl_user (";
            insertSql += "user_id, user_pass, user_email, user_type,retryAttemps,isLocked) ";
            insertSql += "VALUES (";
            insertSql += "@userid, @userpass, @useremail, @usertype,@retryAttemps,@isLocked)";

            ConnectionObj.Open();
            CommandObj.CommandText = insertSql;
            CommandObj.Parameters.AddWithValue("@userid", registation.UserId);
            CommandObj.Parameters.AddWithValue("@userpass", registation.Password);
            CommandObj.Parameters.AddWithValue("@useremail", registation.Email);
            CommandObj.Parameters.AddWithValue("@usertype", registation.Type);
            CommandObj.Parameters.AddWithValue("@retryAttemps", registation.RetryAttemps);
            CommandObj.Parameters.AddWithValue("@isLocked", registation.Islocked);

            int saveRowAffected = CommandObj.ExecuteNonQuery();
            ConnectionObj.Close();
            if (saveRowAffected > 0)
            {
                return "success";
            }
            return "Save Failed";
        }

        public bool IsUserIdExists(string userId)
        {
            string userIdExists = "SELECT * FROM tbl_user WHERE user_id='" + userId + "'";
            ConnectionObj.Open();
            CommandObj.CommandText = userIdExists;
            SqlDataReader userIdExistsReader = CommandObj.ExecuteReader();
            bool isUserIdExists = false;
            isUserIdExists = userIdExistsReader.HasRows;
            userIdExistsReader.Close();
            ConnectionObj.Close();

            return isUserIdExists;
        }

        public bool IsUserEmailExists(string email)
        {
            string userEmailExists = "SELECT * FROM tbl_user WHERE user_email='" + email + "'";
            ConnectionObj.Open();
            CommandObj.CommandText = userEmailExists;
            SqlDataReader userEmailExistsReader = CommandObj.ExecuteReader();
            bool isUserEmailExists = false;
            isUserEmailExists = userEmailExistsReader.HasRows;
            userEmailExistsReader.Close();
            ConnectionObj.Close();

            return isUserEmailExists;
        }

        public List<Registation> GetAllInfo(string userId)
        {
            string selectSql = "SELECT * FROM tbl_user WHERE user_id ='"+userId+"'";
            ConnectionObj.Open();
            CommandObj.CommandText = selectSql;
            SqlDataReader reader = CommandObj.ExecuteReader();

            var userInfoList = new List<Registation>();

            while (reader.Read())
            {
                var registation = new Registation
                {
                    Id = Convert.ToInt32(reader["id"].ToString()),
                    UserId = reader["user_id"].ToString(),
                    Password = reader["user_pass"].ToString(),
                    Type = reader["user_type"].ToString(),
                    RetryAttemps = Convert.ToInt32(reader["retryAttemps"].ToString()),
                    Islocked = Convert.ToBoolean(reader["isLocked"].ToString())
                };

                userInfoList.Add(registation);
            }
            reader.Close();
            ConnectionObj.Close();

            return userInfoList;
        }

        public void UpdateUserTable(int retryAttemps, string userId)
        {
            string attemps = "UPDATE tbl_user SET retryAttemps = '" +retryAttemps + "' WHERE user_id='" + userId + "'";
            ConnectionObj.Open();
            CommandObj.CommandText = attemps;
            var rowAffected = CommandObj.ExecuteReader();
        }

        public void LockUser(string userId)
        {
            string lockUser = "UPDATE tbl_user SET isLocked = '" + 1 + "', retryAttemps = '" + 0 + "',lockDateTime='"+DateTime.Now+"' WHERE user_id='" + userId + "'";
            ConnectionObj.Open();
            CommandObj.CommandText = lockUser;
            var rowAffected = CommandObj.ExecuteReader();

        }

        public void ResetAttempt(string userId)
        {
            string attemps = "UPDATE tbl_user SET retryAttemps = '" + 0 + "' WHERE user_id='" + userId + "'";
            ConnectionObj.Open();
            CommandObj.CommandText = attemps;
            var rowAffected = CommandObj.ExecuteReader();
        }
    }
}