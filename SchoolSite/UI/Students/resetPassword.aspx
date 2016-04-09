<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Students/StudentsSite.Master" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="SchoolSite.UI.Students.resetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="col-md-8">
        <div class="widget-item">
            <div class="top-content">
                <div class="inner-bg">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-top">
                                <div class="form-top-left" style="color: white;">
                                    <h4 class="widget-title">Change Password</h4>
                                </div>
                                <div class="form-top-right" style="font-size: 38px; line-height: 0;">
                                    <i class="fa fa-key"></i>
                                    <asp:Label ID="userIdLabel" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <form runat="server" method="POST">
                                <div class="form-bottom">
                                    <div id="acadamicProfile">
                                        <div class="panel panel-primary">
                                            <label class="panel-heading fa fa-hand-o-right"> Reset Password</label>
                                            <div class="form-group " style="padding: 0 20px;">
                                                <div class="input-group col-md-8">
                                                    <div class="input-group-addon">
                                                        <label style="width: auto;" class="form-title">Old Password</label>
                                                    </div>
                                                    <asp:TextBox ID="TextBox1" name="nameTextBox" CssClass="form-control" runat="server" placeholder="Old Password" autofocus></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group " style="padding: 0 20px;">
                                                <div class="input-group col-md-8">
                                                    <div class="input-group-addon">
                                                        <label style="width: auto;" class="form-title">New Password</label>
                                                    </div>
                                                    <asp:TextBox ID="newPasswordTextBox" name="nameTextBox" CssClass="form-control" runat="server" placeholder="New password"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group " style="padding: 0 20px;">
                                                <div class="input-group col-md-8">
                                                    <div class="input-group-addon">
                                                        <label style="width: auto;" class="form-title">Re-enter Password</label>
                                                    </div>
                                                    <asp:TextBox ID="reEnterPasswordTextBox" name="nameTextBox" CssClass="form-control" runat="server" placeholder="Re-enter new password"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group " style="padding: 0 20px;">
                                                <div class="input-group col-md-3">
                                                    <div class="input-group-addon">
                                                        <asp:Button ID="Button1" runat="server" Text="Reset Password" />
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
        </div>
    </div>
</asp:Content>
