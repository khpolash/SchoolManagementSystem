<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Students/StudentsSite.Master" AutoEventWireup="true" CodeBehind="editProfile.aspx.cs" Inherits="SchoolSite.UI.Students.EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="col-md-8">
        <div class="widget-item">
            <form id="editProfileForm" role="form" runat="server" method="POST">
                <div class="top-content">
                    <div class="inner-bg">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-top">
                                    <div class="form-top-left">
                                        <h4 class="widget-title">My Profile</h4>
                                    </div>
                                    <div class="form-top-right" style="font-size: 38px; line-height: 0;">
                                        <i class="fa fa-pencil"></i>
                                        <asp:Label ID="userIdLabel" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <div class="form-bottom">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Student</label>
                                                </div>
                                                <asp:TextBox ID="nameTextBox" name="nameTextBox" CssClass="form-control" runat="server" placeholder="Student Name"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Class</label>
                                                </div>
                                                <asp:DropDownList ID="classDropDownList" runat="server" CssClass="form-control dropdownMenu"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Section</label>
                                                </div>
                                                <asp:TextBox ID="sectionTextBox" runat="server" name="sectionTextBox" placeholder="Section" CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Session</label>
                                                </div>
                                                <asp:TextBox ID="sessionTextBox" runat="server" name="sessionTextBox" placeholder="Session" CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Gender</label>
                                                </div>
                                                <asp:TextBox ID="genderTextBox" runat="server" name="genderTextBox" placeholder="Gender " CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">DOB</label>
                                                </div>
                                                <asp:TextBox ID="dobTextBox" runat="server" name="dobTextBox" placeholder="Date of Birth " CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Address</label>
                                                </div>
                                                <asp:TextBox ID="addressTextBox" TextMode="MultiLine" Height="100" runat="server" name="addressTextBox" placeholder="Address " CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">District</label>
                                                </div>
                                                <asp:DropDownList ID="districtDropDownList" runat="server" CssClass="form-control dropdownMenu" AutoPostBack="True" OnSelectedIndexChanged="districtDropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Upazila</label>
                                                </div>
                                                <asp:DropDownList ID="upazilaDropDownList" runat="server" CssClass="form-control dropdownMenu"></asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Blood Group</label>
                                                </div>
                                                <asp:DropDownList ID="bloodGroupDropDownList" runat="server" CssClass="form-control dropdownMenu"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Religion</label>
                                                </div>
                                                <asp:DropDownList ID="religionDropDownList" runat="server" CssClass="form-control dropdownMenu"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Contact</label>
                                                </div>
                                                <asp:TextBox ID="contactTextBox" runat="server" name="contactTextBox" placeholder="Contact Number" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Father</label>
                                                </div>
                                                <asp:TextBox ID="fatherNameTextBox" runat="server" name="fatherNameTextBox" placeholder="Fathers Name " CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Mother</label>
                                                </div>
                                                <asp:TextBox ID="motherNameTextBox" runat="server" name="motherNameTextBox" placeholder="Mothers Name " CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Contact</label>
                                                </div>
                                                <asp:TextBox ID="fatherContactTextBox" runat="server" name="fatherContactTextBox" placeholder="Fathers Contact Number" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Guardian</label>
                                                </div>
                                                <asp:TextBox ID="guardianNameTextBox" runat="server" name="guardianNameTextBox" placeholder="Guardian Name" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Profession</label>
                                                </div>
                                                <asp:TextBox ID="guardianProfessionTextBox" runat="server" name="guardianProfessionTextBox" placeholder="Guardian Profession" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <label class="form-title">Contact</label>
                                                </div>
                                                <asp:TextBox ID="guardianContactTextBox" runat="server" name="guardianContactTextBox" placeholder="Guardian Contact Number" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:FileUpload ID="imgFileUpload" buttonText="Choose Image" CssClass="filestyle" data-buttonName="btn-primary" runat="server" /><br />
                                            <asp:Button ID="btnUpload" UseSubmitBehavior="false" runat="server" Text="Upload" CssClass=" btn btn-success align-right" OnClick="btnUpload_Click" />
                                        </div>
                                    </div>



                                    <div class="form-group">
                                        <asp:Image ID="uploadImage" runat="server" Height="100px" Width="150px" />
                                    </div>

                                    <div class="form-group">
                                        <label class="sr-only">Captcha Image</label>
                                        <asp:Image ID="captchaImage" runat="server" src="../CaptchaImage.aspx" />
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only">Captcha Text</label>
                                        <asp:TextBox ID="captchaTextBox" runat="server" name="captchaTextBox" placeholder=" [Type security code here] " CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="btn btn-success" type="submit" OnClick="submitButton_Click" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="msgLabel" runat="server" Text="" CssClass="text-success"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="../../Scripts/jquery-2.2.0.min.js"></script>
    <script src="../../js/jquery.validate.min.js"></script>
    <script type="text/javascript">
       
        $(document).ready(function () {
            $.validator.addMethod("CheckDropDownList", function (value) {  
                if (value == '-1')  
                    return false;  
                else  
                    return true;  
            },"Please select One."); 
            $('#editProfileForm').validate({
                rules: {
                    <%=nameTextBox.UniqueID %>: { required: true },
                    <%=classDropDownList.UniqueID %>: { CheckDropDownList: true },
                    <%=sectionTextBox.UniqueID %>: { required: true},
                    <%=sessionTextBox.UniqueID %>: { required: true},
                    <%=genderTextBox.UniqueID %>: { required: true},
                    <%=dobTextBox.UniqueID %>: { required: true},
                    <%=addressTextBox.UniqueID %>: { required: true},
                    <%=districtDropDownList.UniqueID %>: {CheckDropDownList: true },
                    <%=upazilaDropDownList.UniqueID %>: { CheckDropDownList: true },
                    <%=bloodGroupDropDownList.UniqueID %>: {CheckDropDownList: true  },
                    <%=religionDropDownList.UniqueID %>: {CheckDropDownList: true  },
                    <%=contactTextBox.UniqueID %>: { required: true },
                    <%=fatherNameTextBox.UniqueID %>: { required: true },
                    <%=motherNameTextBox.UniqueID %>: { required: true},
                    <%=fatherContactTextBox.UniqueID %>: { required: true},
                    <%=guardianNameTextBox.UniqueID %>: { required: true},
                    <%=guardianProfessionTextBox.UniqueID %>: { required: true},
                    <%=guardianContactTextBox.UniqueID %>: { required: true},
                    <%=captchaTextBox.UniqueID %>: { required: true},
                },     
            });
        });
        $("#imgFileUpload").filestyle();
    </script>
</asp:Content>
