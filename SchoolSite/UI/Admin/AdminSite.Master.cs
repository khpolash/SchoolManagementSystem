using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolSite.BLL;
using SchoolSite.DAL.DAO;

namespace SchoolSite.UI.Admin
{
    public partial class AdminSite : System.Web.UI.MasterPage
    {
        private Registation _registation = new Registation();
        readonly RegistationManager _registationManager = new RegistationManager();
        readonly ProfileManager _profileManager = new ProfileManager();
        protected List<DAL.DAO.Profile> UserList;
        protected List<Registation> UserRList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] != null)
                {
                    _registation = (Registation)Session["User"];
                    headingNameLabel.Text = _registation.UserId;
                }
                else
                {
                    Response.Redirect("~/UI/login.aspx");
                }
            }
            UserRList = _registationManager.GetUserDetail(_registation.UserId);
            foreach (var registation in UserRList)
            {
                UserList = _profileManager.GetInformationByUserId(registation.Id);
                foreach (var profile in UserList)
                {
                    nameLabel.Text = profile.Name;
                    studentImage.ImageUrl = profile.Image;
                    classLabel.Text = "Class : " + profile.ClassName + " (" + profile.ClassCode + ")";
                    iconLabel.CssClass = profile.Gender == "Male" ? "fa fa-male" : "fa fa-female";
                }
            }
        }


    }
}