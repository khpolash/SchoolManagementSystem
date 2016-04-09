<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Students/StudentsSite.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="SchoolSite.UI.Students.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="col-md-8">
        <div class="widget-item">
            <div class="top-content">
                <div class="inner-bg">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-top">
                                <div class="form-top-left" style="color: white;">
                                    <h4 class="widget-title">My Profile</h4>
                                </div>
                                <div class="form-top-right" style="font-size: 38px; line-height: 0;">
                                    <i class="fa fa-book"></i>
                                    <asp:Label ID="userIdLabel" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <div id="acadamicProfile" runat="server">
                                    
                                </div>
                                <div id="personalProfile" runat="server">
                                    
                                </div>
                                <div id="guardianProfile" runat="server">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
