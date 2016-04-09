<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SchoolSite.UI.contact" %>

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
            <form>
                <div class="col-md-7">
                    <div class="contact-page-content">
                        <div class="contact-heading">
                            <h3>Our Contact Details</h3>
                            <p>Someone finds it difficult to understand your creative idea? There is a better visualisation. Share your views with me...</p>
                        </div>
                        <div class="contact-form clearfix">
                            <p class="full-row">
                                <span class="contact-label">
                                    <label for="name-id">First Name:</label>
                                    <span class="small-text">Put your name here</span>
                                </span>
                                <input type="text" id="name-id" name="name-id" />
                            </p>
                            <p class="full-row">
                                <span class="contact-label">
                                    <label for="email-id">E-mail:</label>
                                    <span class="small-text">Type email address</span>
                                </span>
                                <input type="text" id="email-id" name="email-id" />
                            </p>
                            <p class="full-row">
                                <span class="contact-label">
                                    <label for="message">Message:</label>
                                    <span class="small-text">Type your message</span>
                                </span>
                                <textarea name="message" id="message" rows="4"></textarea>
                            </p>
                            <p class="full-row">
                                <input class="mainBtn" type="submit" name="" value="Send Message" />
                            </p>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-7 -->
                <div class="col-md-5">
                    <div class="contact-map">
                        <div class="google-map-canvas" id="map-canvas" style="height: 238px">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d2109.4914323848857!2d90.36236418659836!3d23.758648349838708!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sbn!2sbd!4v1442350259676" width="100%" height="100%" frameborder="0" style="border: 0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
