<%@ Page Language="C#" AutoEventWireup="true" CodeFile="words-from-the-principal.aspx.cs" Inherits="words_from_the_principal" %>

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
      <title>Words from the Principal - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
      <uc1:headercss runat="server" ID="headercss" />
     <style type="text/css">
        .mainmenu ul li.aboutactive > a {
            background: #052153 none repeat scroll 0 0;
            color: #fff;
        }
    </style>
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
                     <li>Words from the Principal</li>
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
                  <h2 class="section-title">Words from the Principal</h2>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-6">
                  <div class="about-box-item">
                    
                     <p style="text-align:justify;">
                        We at seven stars Academy Hehal Ranchi believe that the aim of any good school should be provide the best possible education to its students. All great ideas begin with commitment to the future. Vision gives one the impulse to make the picture of its own. Aim of holistic education is to inculcate the ability to have a mission with a vision. Our primary aim is to develop in the student qualities of Integrity, Honesty, Trust, Tolerance and Compassion, to promote a spirit of inquiry, to foster a scientific temper within the bonds of humanism, to help the students to became a meaningful part of their environment and to see that courage and industry have their due reward. The pursuit of excellence encouraged at Seven Star Academy rests on the positive belief tha every man has it in him to produce work that stands out with distinction. We are focused on identifying unique gift of each individual and helping to create the best life pathways for them so that they grow into sensitive humans and responsible global citizens.
                     </p>
                     
                  </div>
               </div>
               <div class="col-sm-6">
                    <img src="http://cms.sevenstarsacademy.co.in/upload/awards/1602828042796.31.jpeg" alt="">
               </div>
            </div>
         </div>
      </div>
      <!-- About School Area End -->
      
      <!-- Counter Area End -->
      <!-- Lecturera Area Start -->
  <%--  <uc1:governing runat="server" ID="governing" />--%>
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

