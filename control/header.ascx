<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="control_header" %>
<!-- Preloader CSS Start -->
<style type="text/css">
    .social-link a {
        color: #777;
        display: inline-block;
        padding: 4px 5px;
    }

    .fa.fa-facebook {
        background: #09277d;
        color: white;
        border: 2px solid #09277d;
        border-radius: 4px;
        font-size: 17px;
        width: 31px;
        padding: 4px;
    }

    .fa.fa-linkedin {
        background: #1249e5;
        color: white;        
        border: 2px solid #1249e5;
        border-radius: 4px;
        font-size: 17px;
        width: 31px;
        padding: 4px;
    }

    .fa.fa-twitter {
        background: #678bf1;
        color: white;        
        border: 2px solid #678bf1;
        border-radius: 4px;
        font-size: 17px;
        width: 31px;
        padding: 4px;
    }

    .fa.fa-youtube {
        background: #f21e0c;
        color: white;
        border: 2px solid #f21e0c;
        border-radius: 4px;
        font-size: 17px;
        width: 31px;
        padding: 4px;
    }

    .adminlog {
        background: #2e3203;
        color: white !important;
        border: 2px solid #2e3203;
        width: 66px !important;
        border-radius: 4px;
        font-size: 13px;
        margin: 5px;
        padding: 0px 5px 0px 8px !important;
    }
    .topmarq {
        background: black;
        height: 35px;
        margin-top: 3px;
        border-radius: 4px;
    }
    .owl-nav {
        display: none;
    }
</style>
<div class="studyplus-preloader-wrapper">
    <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
    </div>
</div>
<!-- Preloader CSS End -->
<!-- Header Top Area Start -->
<div class="header-top-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="header-top-nav">
                    <ul>
                        <li><a target="_blank" href="http://cms.sevenstarsacademy.co.in/loginpanel.aspx" class="adminlog"><i class="fa fa-lock"></i>&nbsp;Login</a></li>
                       
                        <li><a href="EduBridge_Ver_1.0.19.apk" class="adminlog" style="width: 120px !important;">Download Apps</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 topmarq">
                <div class="header-top-nav" id="newlist" runat="server">
                   
                </div>
            </div>
            <div class="col-sm-3 text-right">
                <div class="social-link">
                    <a href="https://www.facebook.com/sevenstarsacademy/" target="_blank"><i class="fa fa-facebook"></i></a>
                    <a href="index.aspx"><i class="fa fa-linkedin"></i></a>
                    <a href="index.aspx"><i class="fa fa-twitter"></i></a>
                    <a href="index.aspx"><i class="fa fa-youtube"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Header Top Area End -->
<!-- Header Area Start -->
<div class="header-area" style="background: darkgoldenrod !important;">
    <div class="container">
        <div class="row">
            <div class="col-sm-12" style="text-align:center;">
                <div class="logo" style="color: white; font-size: 20px; font-weight: bold;">
                    <h2>
                        <a href="index.aspx">
                            <img src="../assets/img/logo/logo.png" alt="">
                        </a>
                    </h2>
                    (Affiliated to CBSE New Delhi - Affiliation No:3430625)
                </div>
            </div>
            <div class="col-sm-12 text-center">
                <a href="index.aspx" class="studyplus-contact-box">
                    <i class="fa fa-phone"></i>
                    <p>+91-9334173672 </p>
                    <p>+91-7761844344</p>
                </a>
                <a href="index.aspx" class="studyplus-contact-box">
                    <i class="fa fa-envelope"></i>
                    <p>sevenstarsacademy0011@gmail.com</p>
                    <p>info@sevenstarsacademy.co.in</p>
                </a>
                <a href="index.aspx" class="studyplus-contact-box">
                    <i class="fa fa-location-arrow "></i>
                    <p>Mandap Toli, Hehal, P.O Hehal,</p>
                    <P>Dist - Ranchi (834005) Jharkhand</P>
                </a>
            </div>
        </div>
        <div class="responsive-menu"></div>
    </div>
</div>
<!-- Header Area End -->
<!-- Mainmenu Area Start -->
<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="mainmenu">
                    <ul id="MenuList" runat="server">
                      
                    </ul>
                </div>
            </div>          
        </div>
    </div>
</div>
<!-- Mainmenu Area End -->
