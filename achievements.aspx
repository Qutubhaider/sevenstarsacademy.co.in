<%@ Page Language="C#" AutoEventWireup="true" CodeFile="achievements.aspx.cs" Inherits="achievements" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Achievements - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
      <uc1:headercss runat="server" ID="headercss" />
    
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
                  <h2>Achievements</h2>
                  <ul>
                     <li><a href="index.aspx">Home</a></li>
                     <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                     <li>Achievements</li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <!-- Breadcrumb Area End -->
      <!-- About School Area Start -->
    
    <div class="blog-area pd-top-100 pd-bottom-70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <h2 class="section-title">Achievements</h2>
               </div>
            </div>
            <div class="row" id="Eventlist" runat="server">
           
            </div>
         </div>
      </div>
            <!-- Footer Area Start -->
                <uc1:footer runat="server" ID="footer" />
            <!-- Footer Area End -->
   </body>
</html>
