using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SchoolSite.DAL.Gateway
{
    public class DbConnection
    {
        protected static SqlConnection ConnectionObj;
        protected static SqlCommand CommandObj;
        public DbConnection()
        {
            ConnectionObj = new SqlConnection(ConfigurationManager.ConnectionStrings["SchoolManagementDBConnString"].ConnectionString);
            CommandObj = new SqlCommand {Connection = ConnectionObj};
        }
    }
}