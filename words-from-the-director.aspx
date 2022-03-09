<%@ Page Language="C#" AutoEventWireup="true" CodeFile="words-from-the-director.aspx.cs" Inherits="words_from_the_director" %>

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
      <title>Words from the Director - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
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
                     <li>Words from the Director</li>
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
                  <h2 class="section-title">Words from the Director</h2>
               </div>
            </div>
            <div class="row">     
                <div class="col-sm-6">
                  <div class="about-box-item">
                    
                     <p style="text-align:justify;">
                        Education is the backbone of society. It is a Challenging task to develop the complete personality of the students. We are committed to provide quality education to develop the personality of the future citizens of a dynamic and pulsating nation. We make a concrete effort towards the development of academics, sports and other activities to make each of our students a wholesome entity. We, at Seven Stars Academy have undertaken the task of creating worthy citizens of the country by exploring the various facets of education. In the changing scenario, we shall imbibe all the possibilities of wisdom and create Seven Stars Academy as a true center of excellence.
                     </p>                    
                      
                  </div>
               </div>          
               <div class="col-sm-6">
                  <div class="about-box-item">
                     <img src="assets/img/dir1.jpg" alt="">
                     <p style="font-style:italic; text-align:center;">
                         “ The power of Future is the power of mind “
                         <br />
                          Winston churchil
                     </p>  
                      <span style="font-weight:bold;"></span>
                     <div class="author-signature">                        
                        <h4>MR. B.BECK DIRECTOR<span>Director</span></h4>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- About School Area End -->   
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
