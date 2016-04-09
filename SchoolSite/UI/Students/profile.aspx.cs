using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using SchoolSite.BLL;
using SchoolSite.DAL.DAO;

namespace SchoolSite.UI.Students
{
    public partial class Profile : System.Web.UI.Page
    {
        ProfileManager _profileManager = new ProfileManager();
        RegistationManager _registationManager = new RegistationManager();
        Registation _registation = new Registation();
        protected List<DAL.DAO.Profile> UserList;
        protected List<Registation> UserRList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                _registation = (Registation)Session["User"];
            }
        }

        protected override void CreateChildControls()
        {
            UserRList = _registationManager.GetUserDetail(_registation.UserId);
            int id = 0;
            foreach (var registation in UserRList)
            {
                id = registation.Id;
            }
            UserList = _profileManager.GetInformationByUserId(id);
            foreach (var profile in UserList)
            {
                var div = new HtmlGenericControl("div");
                div.Attributes.Add("class", "panel panel-primary");
                div.Controls.Add(new Label() { CssClass = "panel-heading fa fa-hand-o-right", Text = " Academic" });
                div.Controls.Add(new LiteralControl("<br/>"));
                div.Controls.Add(new Image() { CssClass = "img-thumbnail pull-right", ImageUrl = profile.Image });
                div.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Name : " +profile.Name });
                div.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Class : " +profile.ClassName + "( " + profile.ClassCode + " )" });
                div.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Section : "+ profile.Section });
                div.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Session : " +profile.Session });
                acadamicProfile.Controls.Add(div);

                var div1 = new HtmlGenericControl("div");
                div1.Attributes.Add("class", "panel  panel-primary");
                div1.Controls.Add(new Label() { CssClass = "panel-heading fa fa-hand-o-right", Text = " Personal " });
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Father Name : " +profile.FathersName});
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Mother Name : " +profile.MothersName });
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Gender : " + profile.Gender});
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Date of Birth : " +profile.DateOfBirth });
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Address : " +profile.Address + ", " + profile.UpazilaName + ", " + profile.DistrictName });
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Blood Group : " + profile.BloodGroup });
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Religion : " +profile.Religion });
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Contact : " + profile.Contact });
                div1.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Fathers Contact : " +profile.FathersContact});                
                personalProfile.Controls.Add(div1);

                var div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "panel panel-primary");
                div2.Controls.Add(new Label() { CssClass = "panel-heading fa fa-hand-o-right", Text = " Guardian " });
                div2.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Guardian Name : " +profile.GuardianName  });                
                div2.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Profession : " +profile.GuardianProfession});
                div2.Controls.Add(new Label() { CssClass = "PersonalTitle", Text = "Contact : " +profile.GuardianContact });
                guardianProfile.Controls.Add(div2);
            }
        }
    }
}