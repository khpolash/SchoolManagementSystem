using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolSite.DAL.DAO
{
    public class Profile :ViewProfile
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int ClassId { get; set; }
        public string Section { get; set; }
        public string Session { get; set; }
        public string Gender { get; set; }
        public string DateOfBirth { get; set; }
        public string Address { get; set; }
        public int DistrictId { get; set; }
        public int UpazilaId { get; set; }
        public int BloodGroupId { get; set; }
        public int ReligionId { get; set; }
        public string Contact { get; set; }
        public string FathersName { get; set; }
        public string MothersName { get; set; }
        public string FathersContact { get; set; }
        public string GuardianName { get; set; }
        public string GuardianProfession { get; set; }
        public string GuardianContact { get; set; }
        public string Designation { get; set; }
        public string JoiningDate { get; set; }
        public string Image { get; set; }
    }
}