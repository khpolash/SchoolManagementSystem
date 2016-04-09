<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SchoolSite.UI.Login" %>

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
            <div class="col-md-6">
                <div class="contact-page-content">
                </div>
            </div>
            <div class="col-md-6">
                <div class="contact-page-content">
                    <form ID="loginForm" role="form" runat="server" action="login.aspx" method="POST">
                        <div class="top-content">
                            <div class="inner-bg">
                                <div class="row">
                                    <div class="form-box">
                                        <div class="form-top">
                                            <div class="form-top-left">
                                                <h3>User Login</h3>
                                                <p>Enter UserID and Password to log on:</p>
                                            </div>
                                            <div class="form-top-right">
                                                <i class="fa fa-key"></i>
                                            </div>
                                        </div>
                                        <div class="form-bottom">
                                            <div class="form-group">
                                                <label class="sr-only">Username</label>
                                                <asp:TextBox ID="userIdTextBox" runat="server" name="userIdTextBox" placeholder="User ID" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Password</label>
                                                <asp:TextBox ID="passwordTextBox" TextMode="Password" runat="server" name="passwordTextBox" placeholder="Password" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Captcha Image</label>
                                                <asp:Image ID="Image1" runat="server" src="CaptchaImage.aspx" />
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only">Captcha Text</label>
                                                <asp:TextBox ID="captchaTextBox" runat="server" name="captchaTextBox" placeholder=" [Type security code here] " CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only"></label>
                                                <asp:Button ID="singInButton" runat="server" Text="Sign in!" CssClass="btn btn-success" OnClick="singInButton_Click" />
                                                 <a class="radio-inline" href="#">Forgot Password?</a>&nbsp;|&nbsp;<a href="signup.aspx">Creat a new account</a>
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
            $('#loginForm').validate({
                rules: {
                    <%=userIdTextBox.UniqueID %>: { required: true },
                    <%=passwordTextBox.UniqueID %>: { required: true },
                    <%=captchaTextBox.UniqueID %>: { required: true }
                },     
            });
        });
    </script>
</asp:Content>
