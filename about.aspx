<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/control/governing.ascx" TagPrefix="uc1" TagName="governing" %>
<%@ Register Src="~/control/testimonial.ascx" TagPrefix="uc1" TagName="testimonial" %>
<%@ Register Src="~/control/whymrmcollege.ascx" TagPrefix="uc1" TagName="whymrmcollege" %>



<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>About - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
      <uc1:headercss runat="server" ID="headercss" />
    <%-- <style type="text/css">
        .mainmenu ul li.aboutactive > a {
            background: #052153 none repeat scroll 0 0;
            color: #fff;
        }
    </style>--%>
   </head>
   <body>
     <!-- Mainmenu Area Start -->
    <uc1:header runat="server" ID="header" />
      <!-- Mainmenu Area End -->
      <!-- Breadcrumb Area Start -->
      <div class="breadcrumb-area breadcrumb-bg overlay-black pd-70">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h2>about us</h2>
                  <ul>
                     <li><a href="index.aspx">Home</a></li>
                     <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                     <li>About</li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <!-- Breadcrumb Area End -->
      <!-- About School Area Start -->
      <div class="about-our-schoor-area pd">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <h2 class="section-title">About</h2>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-12">
                  <div class="about-box-item">                    
                     <p style="text-align:justify;">
                        Seven Stars Academy Hehal ,Ranchi was founded in the year 2011. it is powered by Seven stars welfare trust and backed by wel qualified and trained faculties. 
                        The word seven stars bring a memories of seven sisters and two parents Late MahadevTigga and Late UdayTigga of a family who inspired to start this academy 
                        to groom the rural children. Mrs.SonamotiTigga,Mr. B.Beck,Mrs.seemaTigga,Dr.JagarnathOraon and Mr.MangaTiggaand more others are the founder members of this 
                        Institution. From a modest beginning, Seven Stars Academy enjoys a position of eminence among the city schools today. The school has strength of over 500 
                        students and nearly 23 teaching staff and 6 non teaching staff members.
                     </p>                    
                  </div>
               </div>
               
            </div>
         </div>
      </div>
      <!-- About School Area End -->
     
      <!-- Lecturera Area Start -->
     <uc1:governing runat="server" ID="governing" />
      <!-- Lecturera Area End -->
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
            <!-- Footer Area Start -->
                <uc1:footer runat="server" ID="footer" />
            <!-- Footer Area End -->
   </body>
</html>
