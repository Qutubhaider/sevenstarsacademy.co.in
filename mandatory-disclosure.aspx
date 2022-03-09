<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mandatory-disclosure.aspx.cs" Inherits="mandatory_disclosure" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandatory Disclosure - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
    <style type="text/css">
        .mainmenu ul li.feestructure > a {
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

        table a:link {
            color: #666;
            font-weight: bold;
            text-decoration: none;
        }

        table a:visited {
            color: #999999;
            font-weight: bold;
            text-decoration: none;
        }

        table a:active,
        table a:hover {
            color: #bd5a35;
            text-decoration: underline;
        }

        table {
            font-family: Arial, Helvetica, sans-serif;
            color: #666;
            font-size: 12px;
            text-shadow: 1px 1px 0px #fff;
            background: #eaebec;
            margin: 0px;
            border: #ccc 1px solid;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            -moz-box-shadow: 0 1px 2px #d1d1d1;
            -webkit-box-shadow: 0 1px 2px #d1d1d1;
            box-shadow: 0 1px 2px #d1d1d1;
        }

            table th {
                padding: 10px;
                border-top: 1px solid #fafafa;
                border-bottom: 1px solid #e0e0e0;
                background: #ededed;
                background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
                background: -moz-linear-gradient(top, #ededed, #ebebeb);
            }

                table th:first-child {
                    text-align: left;
                }

            table tr:first-child th:first-child {
                -moz-border-radius-topleft: 3px;
                -webkit-border-top-left-radius: 3px;
                border-top-left-radius: 3px;
            }

            table th {
                text-align: left;
                font-size: 20px;
            }

            table tr:first-child th:last-child {
                -moz-border-radius-topright: 3px;
                -webkit-border-top-right-radius: 3px;
                border-top-right-radius: 3px;
            }

            table tr {
                text-align: left;
                padding-left: 20px;
            }

            table td:first-child {
                text-align: left;
                padding-left: 20px;
                border-left: 0;
            }

            table td {
                padding: 10px;
                border-top: 1px solid #ffffff;
                border-bottom: 1px solid #e0e0e0;
                border-left: 1px solid #e0e0e0;
                background: #fafafa;
                background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
                background: -moz-linear-gradient(top, #fbfbfb, #fafafa);
            }

            table tr.even td {
                background: #f6f6f6;
                background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
                background: -moz-linear-gradient(top, #f8f8f8, #f6f6f6);
                font-size: 17px;
            }

            table td {
                font-size: 12px;
            }

            table tr:last-child td {
                border-bottom: 0;
            }

                table tr:last-child td:first-child {
                    -moz-border-radius-bottomleft: 3px;
                    -webkit-border-bottom-left-radius: 3px;
                    border-bottom-left-radius: 3px;
                }

                table tr:last-child td:last-child {
                    -moz-border-radius-bottomright: 3px;
                    -webkit-border-bottom-right-radius: 3px;
                    border-bottom-right-radius: 3px;
                }

            table tr:hover td {
                background: #f2f2f2;
                background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
                background: -moz-linear-gradient(top, #f2f2f2, #f0f0f0);
            }

        th {
            font-size: 15px !important;
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
                    <h2 id="MainMenu" runat="server">Mandatory Disclosure</h2>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                        <li id="MainMenu1" runat="server">Mandatory Disclosure</li>
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
                <div class="col-sm-12">
                    <h2 class="section-title">A : GENERAL INFORMATION:</h2>
                    <table style="width: 100%;">
                        <tr>
                            <th>SL NO.</th>
                            <th>INFORMATION</th>
                            <th>DETAILS</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>NAME OF SCHOOL</td>
                            <td>SEVEN STARS ACADEMY</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>AFFILIATION NO. (IF APPLICABLE)</td>
                            <td>3430625</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>SCHOOL CODE (IF APPLICABLE)</td>
                            <td>66756</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>COMPLETE ADDRESS WITH PIN CODE</td>
                            <td>MANDAP TOLI, HEHAL, NEAR ITJ, RANCHI JHARKHAND 834001</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>PRINCIPAL NAME & QUALIFICATION</td>
                            <td>DR. BABBAN KUMAR, MBA, PHD.</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>SCHOOL EMAIL ID</td>
                            <td><a href="mailto:sevenstarsacademy0011@gmail.com">sevenstarsacademy0011@gmail.com</a></td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>CONTACT DETAILS (LANDLINE/MOBILE)</td>
                            <td>7761844344</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-sm-12">
                    <h2 class="section-title">B : DOCUMENTS AND INFORMATION </h2>
                    <table style="width: 100%;">
                        <tr>
                            <th>SL NO.</th>
                            <th>DOCUMENTS/INFORMATION</th>
                            <th>DOWNLOAD DOCUMENT</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>COPIES OF AFFILIATION/UPGRADATION LETTER AND RECENT EXTENSION OF AFFILIATION</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>COPIES OF SOCIETIES/TRUST/COMPANY REGISTRATION/RENEWAL CERTIFICATE</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>COPY OF NO OBJECTION CERTIFICATE (NOC) ISSUED, IF APPLICABLE, BY THE STATE GOVT. /UT</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>COPY OF RECOGNITION CERTIFICATE UNDER RTE ACT, 2019, AND IT’S RENEWAL</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>COPY OF VALID FIRE SAFETY CERTIFICATE AS PER THE NATIONAL BUILDING CODE</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>COPY OF THE DEO SAFETY CERTIFICATE ISSUED BY THE COMPETENT AUTHORITY </td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>COPY OF THE DEO CERTIFICATE SUBMITTED BY THE SCHOOL FOR AFFILIATION/UPGRADATION/EXTENSION OF AFFILIATIONOR SELF CERTIFICATE BY SCHOOL</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>COPIES OF VALID WATER, HEALTH AND SANITATION CERTIFICATES</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-sm-12">
                    <h2 class="section-title">C : RESULT AND ACADMICS</h2>
                    <table style="width: 100%;">
                        <tr>
                            <th>SL NO.</th>
                            <th>DOCUMENTS/INFORMATION</th>
                            <th>DOWNLOAD DOCUMENT</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>FEE STRUCTURE OF THE SCHOOL</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>ANNUAL ACADEMIC CALANDER,</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>LIST OF SCHOOL MANAGEMENT COMMITTEE (SMC)</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>LIST OF PARENTS TEACHERS ASSOCIATION (PTA) MEMBERS</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>LAST THREE-YEAR RESULT OF THE BORAD EXAMINATION AS PER APPLICABLILITY</td>
                            <td><a href="assets/documents.pdf" target="_blank">Download</a></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-sm-12">
                    <h2 class="section-title">RESULT CLASS: X</h2>
                    <table style="width: 100%;">
                        <tr>
                            <th>SL NO.</th>
                            <th>YEAR</th>
                            <th>NO. OF REGISTERED STUDENTS</th>
                            <th>NO. OF STUDENTS PASSED</th>
                            <th>PASS PERCENTAGE</th>
                            <th>REMARKS</th>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-sm-12">
                    <h2 class="section-title">RESULT CLASS: X11</h2>
                    <table style="width: 100%;">
                        <tr>
                            <th>SL NO.</th>
                            <th>YEAR</th>
                            <th>NO. OF REGISTERED STUDENTS</th>
                            <th>NO. OF STUDENTS PASSED</th>
                            <th>PASS PERCENTAGE</th>
                            <th>REMARKS</th>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-sm-12">
                    <h2 class="section-title">D : STAFF (TEACHING)</h2>
                    <table style="width: 100%;">
                        <tr>
                            <th>SL NO.</th>
                            <th>INFORMATION</th>
                            <th>DETAILS</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>PRINCIPAL</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>TOTAL NO. OF TEACHERS</td>
                            <td>43</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>o PGT</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>o TGT</td>
                            <td>17</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>o PRT</td>
                            <td>15</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>TEACHERS SECTION RATIO</td>
                            <td>1.5</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>DETAILS OF SPECIAL EDUCATION</td>
                            <td>01</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>DETAILS OF COUNSELLOR AND WELNESS TEACHERS</td>
                            <td>01</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row" style="margin-top: 50px;">
                <div class="col-sm-12">
                    <h2 class="section-title">SCHOOL INFRASTRURE:</h2>
                    <table style="width: 100%;">
                        <tr>
                            <th>SL NO.</th>
                            <th>INFORMATION</th>
                            <th>DETAILS</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>TOTAL CMAPUS AREA OF THE SCHOOL (IN SQUARE MRT)</td>
                            <td>8789.23(SQ. M)</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>NO. AND SIZE OF THE CLASS ROOMS (IN SQ MTR)</td>
                            <td>43</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>NO. AND SIZE LABORATORIES INCLUDING COMPUTER LABS (IN SQ MTR)</td>
                            <td>5-284.6456 (SQ.M)</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>INTERNET FACILITY (Y/N)</td>
                            <td>YES</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>NO. OF GIRLS TOILETS</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>NO. OF BOYS TOILETS</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>LINK OF YOUTUBE VIDEO OF THE INSPECTION OF SCHOOL COVERING THE INFRASTRUCTURE OF THE SCHOOL</td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Area Start -->
    <uc1:footer runat="server" ID="footer" />
    <!-- Footer Area End -->
</body>
</html>
