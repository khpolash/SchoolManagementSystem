using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolSite.BLL;
using SchoolSite.DAL.DAO;

namespace SchoolSite.UI
{
    public partial class Login : System.Web.UI.Page
    {
        readonly RegistationManager _registationManager = new RegistationManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session.Clear();
        }

        protected void singInButton_Click(object sender, EventArgs e)
        {
            bool isCaptchaValid = Session["CaptchaText"] != null && Session["CaptchaText"].ToString() == captchaTextBox.Text;

            var registation = new Registation { UserId = userIdTextBox.Text, Password = passwordTextBox.Text };

            if (isCaptchaValid)
            {
                int msg = _registationManager.CheckingRequirements(registation);

                if (msg == 1)
                {
                    Session["User"] = registation;
                    Response.Redirect("Teachers/home.aspx");
                }
                else if (msg == 2)
                {
                    Session["User"] = registation;
                    Response.Redirect("Students/home.aspx");
                }
                else if (msg == 3)
                {
                    Session["User"] = registation;
                    Response.Redirect("Admin/home.aspx");
                }
                else if (msg == 0)
                {
                    msgLabel.Text = "Password does not match";
                    msgLabel.ForeColor = Color.Red;
                    msgLabel.Font.Size = 16;
                }
                else if(msg==-2)
                {
                    msgLabel.Text = "Account Blocked. Please contact administrator.";
                    msgLabel.ForeColor = Color.Red;
                    msgLabel.Font.Size = 16;
                }
                else
                {
                    msgLabel.Text = "Invalid  UserID";
                    msgLabel.ForeColor = Color.Red;
                    msgLabel.Font.Size = 16;
                }
            }
            else
            {
                msgLabel.Text = "Invalid Security Code";
                msgLabel.ForeColor = Color.Red;
                msgLabel.Font.Size = 16;
            }
        }
    }
}