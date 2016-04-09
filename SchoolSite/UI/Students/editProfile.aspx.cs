using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolSite.BLL;
using SchoolSite.DAL.DAO;

namespace SchoolSite.UI.Students
{
    public partial class EditProfile : System.Web.UI.Page
    {
        readonly RegistationManager _registationManager = new RegistationManager();
        readonly DropDownManager _dropDownManager = new DropDownManager();
        readonly ProfileManager _profileManager = new ProfileManager();
        Registation _registation = new Registation();

        protected List<Registation> UserList;
        //protected int Tid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                _registation = (Registation)Session["User"];
                UserList = _registationManager.GetUserDetail(_registation.UserId);
                foreach (var detail in UserList)
                {

                    ViewState["Tid"] = detail.Id;
                }


                classDropDownList.DataSource = _dropDownManager.GetAllClasses();
                classDropDownList.DataTextField = "ClassName";
                classDropDownList.DataValueField = "Id";
                classDropDownList.DataBind();

                districtDropDownList.DataSource = _dropDownManager.GetAllDistrict();
                districtDropDownList.DataTextField = "DistrictName";
                districtDropDownList.DataValueField = "Id";
                districtDropDownList.DataBind();

                

                bloodGroupDropDownList.DataSource = _dropDownManager.GetAllBloodGroup();
                bloodGroupDropDownList.DataTextField = "GroupName";
                bloodGroupDropDownList.DataValueField = "Id";
                bloodGroupDropDownList.DataBind();

                religionDropDownList.DataSource = _dropDownManager.GetAllReligion();
                religionDropDownList.DataTextField = "ReligionName";
                religionDropDownList.DataValueField = "Id";
                religionDropDownList.DataBind();


                ListItem classItem = new ListItem("Select Class", "-1");
                classDropDownList.Items.Insert(0, classItem);
                ListItem districtItem = new ListItem("Select District", "-1");
                districtDropDownList.Items.Insert(0, districtItem);
                ListItem upazilaItem = new ListItem("Select Upazila", "-1");
                upazilaDropDownList.Items.Insert(0, upazilaItem);
                ListItem bloodItem = new ListItem("Select Blood Group", "-1");
                bloodGroupDropDownList.Items.Insert(0, bloodItem);
                ListItem religionItem = new ListItem("Select Religion", "-1");
                religionDropDownList.Items.Insert(0, religionItem);
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                if (imgFileUpload != null && imgFileUpload.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(imgFileUpload.FileName);
                    int imgSize = imgFileUpload.PostedFile.ContentLength;
                    if (extension == ".jpg" || extension == ".jpeg")
                    {
                        if (imgSize >= 102400)
                        {
                            msgLabel.ForeColor = Color.Red;
                            msgLabel.Text = "Image size is greater than 100Kb";
                            return;
                        }
                        string fileUrl = Path.GetFileName(imgFileUpload.PostedFile.FileName);
                        imgFileUpload.SaveAs(Server.MapPath("~/images/Students/" + fileUrl));

                        //Display the Image in the File Upload Control  
                        uploadImage.ImageUrl = "~/images/Students/" + fileUrl;
                    }
                    else
                    {
                        msgLabel.ForeColor = Color.Red;
                        msgLabel.Text = "Only image formats (jpg, jpeg) are accepted ";
                    }
                    
                }
            }
            catch (Exception exc)
            {
                msgLabel.ForeColor = Color.Red;
                msgLabel.Text = "Application Error : " + exc.Message;
            }  
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            var profile = new DAL.DAO.Profile();
            profile.Id = (int) ViewState["Tid"];
            profile.Name = nameTextBox.Text;
            profile.ClassId = Convert.ToInt32(classDropDownList.SelectedValue);
            profile.Section = sectionTextBox.Text;
            profile.Session = sessionTextBox.Text;
            profile.Gender = genderTextBox.Text;
            profile.DateOfBirth = dobTextBox.Text;
            profile.Address = addressTextBox.Text;
            profile.DistrictId = Convert.ToInt32(districtDropDownList.SelectedValue);
            profile.UpazilaId = Convert.ToInt32(upazilaDropDownList.SelectedValue);
            profile.BloodGroupId = Convert.ToInt32(bloodGroupDropDownList.SelectedValue);
            profile.ReligionId = Convert.ToInt32(religionDropDownList.SelectedValue);
            profile.Contact = contactTextBox.Text;
            profile.FathersName = fatherNameTextBox.Text;
            profile.MothersName = motherNameTextBox.Text;
            profile.FathersContact = fatherContactTextBox.Text;
            profile.GuardianName = guardianNameTextBox.Text;
            profile.GuardianProfession = guardianProfessionTextBox.Text;
            profile.GuardianContact = guardianContactTextBox.Text;
            profile.Image = uploadImage.ImageUrl;

            string msg = _profileManager.SaveProfile(profile);

            msgLabel.Text = msg;
        }

        protected void districtDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (districtDropDownList.SelectedValue!="-1")
            {
                int districtId = Convert.ToInt32(districtDropDownList.SelectedValue);
                upazilaDropDownList.DataSource = _dropDownManager.GetAllUpazila(districtId);
                upazilaDropDownList.DataTextField = "UpazilaName";
                upazilaDropDownList.DataValueField = "Id";
                upazilaDropDownList.DataBind();
                ListItem upazilaItem = new ListItem("Select Upazila", "-1");
                upazilaDropDownList.Items.Insert(0, upazilaItem);
            }
        }
    }
}