using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolSite.BLL;
using SchoolSite.DAL.DAO;

namespace SchoolSite.UI.Students
{
    public partial class StudentsSite : System.Web.UI.MasterPage
    {
        readonly ProfileManager _profileManager = new ProfileManager();
        readonly RegistationManager _registationManager = new RegistationManager();
        Registation _registation = new Registation();
        protected List<DAL.DAO.Profile> UserList;
        protected List<Registation> UserRList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["User"] != null)
                {
                    _registation = (Registation)Session["User"];
                    userNameLabel.Text ="User ID : "+ _registation.UserId;
                    rollLabel.Text = "Roll No : " + _registation.UserId.Substring(_registation.UserId.Length - 3);
                }
                else
                {
                    Response.Redirect("~/UI/Login.aspx");
                }
            }
            UserRList = _registationManager.GetUserDetail(_registation.UserId);
            foreach (var registation in UserRList)
            {
                UserList = _profileManager.GetInformationByUserId(registation.Id);
                foreach (var profile in UserList)
                {
                    studentNameLabel.Text = profile.Name;
                    studentImage.ImageUrl = profile.Image;
                    classLabel.Text ="Class : "+ profile.ClassName + " (" + profile.ClassCode + ")";
                    iconLabel.CssClass = profile.Gender=="Male" ? "fa fa-male" : "fa fa-female";
                }
            }
            
        }
    }
}