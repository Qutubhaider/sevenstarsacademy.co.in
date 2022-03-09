<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/governing.ascx" TagPrefix="uc1" TagName="governing" %>
<%@ Register Src="~/control/counters.ascx" TagPrefix="uc1" TagName="counters" %>
<%@ Register Src="~/control/features.ascx" TagPrefix="uc1" TagName="features" %>
<%@ Register Src="~/control/news.ascx" TagPrefix="uc1" TagName="news" %>
<%@ Register Src="~/control/slider.ascx" TagPrefix="uc1" TagName="slider" %>
<%@ Register Src="~/control/eventsection.ascx" TagPrefix="uc1" TagName="eventsection" %>
<%@ Register Src="~/control/homecontact.ascx" TagPrefix="uc1" TagName="homecontact" %>
<%@ Register Src="~/control/testimonial.ascx" TagPrefix="uc1" TagName="testimonial" %>
<%@ Register Src="~/control/whymrmcollege.ascx" TagPrefix="uc1" TagName="whymrmcollege" %>
<%@ Register Src="~/control/courses.ascx" TagPrefix="uc1" TagName="courses" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SEVEN STARS ACADEMY RANCHI, seven stars academy ranchi, SEVEN STARS ACADEMY, seven stars academy</title>
    
    <uc1:headercss runat="server" ID="headercss" />
    <style type="text/css">
        .mainmenu ul li.homeactive > a {
            background: #052153 none repeat scroll 0 0;
            color: #fff;
        }

        .slider-item-table {
            display: table;
            height: 250px !important;
            width: 100%;
        }
    </style>

</head>
<body>
    <form id="f1" runat="server">
        <uc1:header runat="server" ID="header" />        
        <uc1:slider runat="server" ID="slider" /> 
        <!-- Slider Area End -->
        <!-- Application Area Start -->
        <div class="application-area pd">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h2 class="section-title">Welcome to Seven Stars Academy</h2>
                        <div class="video-bg overlay-black">
                            <a href="#">
                                <i class="fa fa-play"></i>
                                <p>Watch Our  Campus</p>
                            </a>
                        </div>
                        <div class="video-text">
                            <p>
                                Seven Stars Academy Hehal ,Ranchi was founded in the year 2011. it is powered by Seven stars welfare trust and backed by wel qualified and trained faculties. 
                                The word seven stars bring a memories of seven sisters and two parents Late MahadevTigga and Late UdayTigga of a family who donated the space for this academy 
                                to groom the rural children. Mrs.SonamotiTigga,Mr. B.Beck,Mrs.seemaTigga,Dr.JagarnathOraon and Mr.MangaTiggaand more others are the founder members of 
                                this Institution. From a modest beginning, Seven Stars Academy enjoys a position of eminence among the city schools today. The school has strength of over 500 
                                students and nearly 23 teaching staff and 6 non teaching staff members.
                            </p>
                            <a href="about.aspx" class="study-plus-btn">Read more</a>
                        </div>
                    </div>
                    <uc1:homecontact runat="server" ID="homecontact" />
                </div>
            </div>
        </div>
        <!-- Application Area End -->
        <!-- Features Area Start -->
        <uc1:features runat="server" ID="features" />
        <!-- Features Area End -->
        <!-- Populer Courses Area Start -->
         <uc1:eventsection runat="server" ID="eventsection" />
        <%--<uc1:courses runat="server" ID="courses" />--%>
        <!-- Populer Courses Area End -->
        <!-- Counter Area Start -->
        <uc1:counters runat="server" ID="counters" />
        <!-- Counter Area End -->
        <!-- Event Area Start -->
         <uc1:news runat="server" ID="news" />
        <!-- Event Area End -->
        <!-- Lecturera Area Start -->
        <uc1:governing runat="server" ID="governing" />
        <!-- Lecturera Area End -->
        <!-- Blog Area Start -->
      
        <!-- Blog Area End -->
        <!-- Testimonial Area Start -->
        <div class="testimonial-chooce-area pd">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="section-title">What student say ?</h2>
                        <uc1:testimonial runat="server" ID="testimonial"/>
                    </div>
                    <uc1:whymrmcollege runat="server" ID="whymrmcollege" />
                </div>
            </div>
        </div>
        <!-- Testimonial Area End -->
        <!-- Footer Area Start -->
        <uc1:footer runat="server" ID="footer" />
        <!-- Footer Area End -->
    </form>
</body>
</html>
