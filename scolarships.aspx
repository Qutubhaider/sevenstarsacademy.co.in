<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scolarships.aspx.cs" Inherits="scolarships" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scolarships - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
    <style type="text/css">
        .mainmenu ul li.Academicsactive > a {
            background: #052153 none repeat scroll 0 0;
            color: #fff;
        }

        h3 {
            font-size: 18px;
            line-height: 1;
            color: #e1991c;
        }

        blockquote {
            font-style: italic;
            font-weight: 400;
        }

        .widget-title {
            background: #1E90FF none repeat scroll 0 0;
            margin-bottom: 20px;
            padding: 12px;
            border-radius: 2px;
            color: white;
        }

        .mul {
            list-style-image: url('assets/icon/right.png');
            margin-left: 32px;
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
                    <h2>Academics</h2>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                        <li>Scolarships</li>
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
                    <h2 class="section-title">Scolarships</h2>
                </div>
            </div>
            <%--<div class="row">
                <div class="col-sm-10">

                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Admission Procedure</h3>
                            <blockquote>Application forms may be had from the college office. It is to be filled in by the candidate and submitted to the office along with all relevant documents such as:</blockquote>
                            <ul class="mul">
                               <li>Attested Matric / CSC / CBSE / Pass certificates to verify Date of Birth.</li>
                                <li>Attested Matric / CSC / CBSE marksheet.</li>
                                <li>Attested Intermediate / Plus Two marksheet.</li>
                                <li>Attested Degree Marksheet form the University. (M.A./ M. Sc. / M.Com marksheet if available).</li>
                                <li>Attested College Leaving Certificate.</li>
                                <li>Attested Caste Certificate (SC / ST / OBC Student ) of recognized authority.Three recent Colour photos (4x3cms). Application forms should be presented by the candidate to the office personally.</li>
                                <li>Xerox copy of money receipt for Application Purchase. All original certificates should be brought for verification on the day of submission.</li>
                            </ul>
                        </div>
                    </div>
                    <br />

                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Choice of Subjects as Method</h3>
                            <blockquote>The college offers the following subjects as method:</blockquote>
                            <ul class="mul">
                                <li>Language Hindi, English</li>
                                <li>Social Science History, Geography and Civics</li>
                                <li>Science & Math’s Physical Sciences, Biological Science & Mathematics</li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>--%>
        </div>
    </div>

    <!-- Footer Area Start -->
    <uc1:footer runat="server" ID="footer" />
    <!-- Footer Area End -->
</body>
</html>
