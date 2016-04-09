using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolSite.DAL.DAO
{
    public class Registation
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Type { get; set; }
        public int RetryAttemps { get; set; }
        public bool Islocked { get; set; }
    }
}