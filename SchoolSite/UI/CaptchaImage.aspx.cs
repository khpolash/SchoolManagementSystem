using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SRVTextToImage;

namespace SchoolSite.UI
{
    public partial class CaptchaImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ci = new CaptchaRandomImage();
            // GetRandomString Function return random text of your provided characters size
            string captchaText = ci.GetRandomString(5);
 
            //GenearteImage function return image of the provided text of provided size
            //CI.GenerateImage(captchaText, 200, 50);
            //there is a overload function available for set color of the image
            Session["CaptchaText"] = captchaText;
            ci.GenerateImage(captchaText, 200, 50, Color.DarkGray, Color.White);
 
            this.Response.Clear();
            this.Response.ContentType = "image/jpeg";
            ci.Image.Save(this.Response.OutputStream, ImageFormat.Jpeg);
            ci.Dispose();
        }
    }
}