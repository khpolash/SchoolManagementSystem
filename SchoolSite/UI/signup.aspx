<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="SchoolSite.UI.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="container">
        <div class="page-title clearfix">
            <div class="row">
                <div class="col-md-12">
                    <h6><a href="index.aspx">প্রথম পাতা</a></h6>
                    <h6><span class="page-active">যোগাযোগ</span></h6>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="contact-page-content">
                </div>
            </div>
            <div class="col-md-8">
                <div class="contact-page-content">
                    <form id="signupForm" role="form" runat="server" method="POST">
                        <div class="top-content">
                            <div class="inner-bg">
                                <div class="row">
                                    <div class="col-sm-10 ">
                                        <div class="form-top">
                                            <div class="form-top-left">
                                                <h3>Sign up now</h3>
                                                <p>Fill in the form below to get instant access:</p>
                                            </div>
                                            <div class="form-top-right">
                                                <i class="fa fa-pencil"></i>
                                            </div>
                                        </div>
                                        <div class="form-bottom">

                                            <div class="form-group">
                                                <label class="sr-only">User ID</label>
                                                <asp:TextBox ID="userIdTextBox" name="userIdTextBox" CssClass="form-control text-uppercase" runat="server" placeholder="User ID"></asp:TextBox>                                                
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Password</label>
                                                <asp:TextBox ID="passwordTextBox" TextMode="Password" runat="server" name="passwordTextBox" placeholder="Password" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Confirm Password</label>
                                                <asp:TextBox ID="confirmpasswordTextBox" TextMode="Password" runat="server" name="confirmpasswordTextBox" placeholder="Confirm Password" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Email</label>
                                                <asp:TextBox ID="emailTextBox" runat="server" name="emailTextBox" placeholder="Email " CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Select Type</label>
                                                <asp:DropDownList ID="typeDropDownList" runat="server" CssClass="form-control dropdownMenu">
                                                    <asp:ListItem Text="I am a" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="Teacher" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="Student" Value="2"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Captcha Image</label>
                                                <asp:Image ID="captchaImage" runat="server" src="CaptchaImage.aspx" />
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Captcha Text</label>
                                                <asp:TextBox ID="captchaTextBox" runat="server" name="captchaTextBox" placeholder=" [Type security code here] " CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:Button ID="submitButton" runat="server" Text="Sign me up!" CssClass="btn btn-success" type="submit" OnClick="submitButton_Click" />
                                                <a class="radio-inline" href="login.aspx">Back to Login</a>
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
        </div>
    </div>
    <script src="../Scripts/jquery-2.2.0.min.js"></script>
    <script src="../js/jquery.validate.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.validator.addMethod("CheckDropDownList", function (value) {  
                if (value == '0')  
                    return false;  
                else  
                    return true;  
            },"Please select One."); 
            $('#signupForm').validate({
                rules: {
                    <%=userIdTextBox.UniqueID %>: { required: true },
                    <%=passwordTextBox.UniqueID %>: { required: true, minlength:6 },
                    <%=confirmpasswordTextBox.UniqueID %>: { required: true, equalTo:"#<%=passwordTextBox.ClientID %>"},
                    <%=emailTextBox.UniqueID %>: { required: true, email:true },
                    <%=typeDropDownList.UniqueID %>: { CheckDropDownList: true},
                    <%=captchaTextBox.UniqueID %>: { required: true},
                },     
            });
        });
    </script>
</asp:Content>
