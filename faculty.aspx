<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faculty.aspx.cs" Inherits="faculty" %>

<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>Faculty - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
    <style type="text/css">
        .Facultiessactive {
            background: #052153 none repeat scroll 0 0;
            color: #fff;
        }
    </style>
</head>
<body>
    <!-- Preloader CSS Start -->
    <uc1:header runat="server" ID="header" />
    <!-- Mainmenu Area End -->
    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area breadcrumb-bg overlay-black pd-70">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2>Faculty</h2>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                        <li>Faculty</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area Start -->
    <!-- Lecturera Area Start -->
    <div class="lecturera-area pd-top-100 pd-bottom-70">
        <div class="container">
            <div class="row" id="faculty_list" runat="server">
                
               
            </div>
        </div>
    </div>
    <!-- Lecturera Area End -->
    <uc1:footer runat="server" ID="footer" />
</body>
</html>
