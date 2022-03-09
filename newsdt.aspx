<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsdt.aspx.cs" Inherits="newsdt" %>

<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/recentnews.ascx" TagPrefix="uc1" TagName="recentnews" %>





<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>News Details - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
</head>
<body>
    <uc1:header runat="server" ID="header" />
    <!-- Mainmenu Area End -->
    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area breadcrumb-bg overlay-black pd-70">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2>News details</h2>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                        <li>News Details</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End -->
    <!-- Event Details Area Start -->
    <div class="courses-details-area courses-list  pd">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="event-box event-list">
                                <div id="txt_style" runat="server"></div>
                                <div class="event-bg event-bg-1">
                                    <div class="event-date" id="txt_news_date" runat="server"></div>
                                </div>
                                <div class="text-box">
                                    <h4 id="txt_news_title" runat="server"></h4>
                                    <p id="txt_news_details" runat="server">
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">

                    <uc1:recentnews runat="server" ID="recentnews" />
                </div>
            </div>
        </div>
    </div>
    <uc1:footer runat="server" ID="footer" />
</body>


</html>
