using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolSite.BLL;
using SchoolSite.DAL.DAO;
using System.Web.Security;

namespace SchoolSite.UI
{
    public partial class Signup : System.Web.UI.Page
    {
        readonly RegistationManager _registationManager = new RegistationManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            var registation = new Registation();
            registation.UserId = userIdTextBox.Text;
            registation.Password = FormsAuthentication.HashPasswordForStoringInConfigFile(passwordTextBox.Text,"SHA1");
            registation.Email = emailTextBox.Text;
            registation.Type = typeDropDownList.SelectedItem.Text;
            registation.RetryAttemps = 0;
            registation.Islocked = false;

            bool isCaptchaValid = Session["CaptchaText"] != null && Session["CaptchaText"].ToString() == captchaTextBox.Text;
            if (isCaptchaValid)
            {
                string msg = _registationManager.RegistarNewUser(registation);
                if (msg=="success")
                {
                    Server.Transfer("Login.aspx?x=1&y=2");
                }
            }
            else
            {
                msgLabel.Text = "Captcha Missmatch";
                msgLabel.ForeColor = Color.Red;
                msgLabel.Font.Size = 16;
            }
        }
    }
}