<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fee-structure.aspx.cs" Inherits="fee_structure" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fee Structure - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
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
                text-align: center;
                font-size: 20px;
            }

            table tr:first-child th:last-child {
                -moz-border-radius-topright: 3px;
                -webkit-border-top-right-radius: 3px;
                border-top-right-radius: 3px;
            }

            table tr {
                text-align: center;
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
                    <h2>FEE STRUCTURE</h2>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                        <li>Fee Structure</li>
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
                    <h2 class="section-title">FEE STRUCTURE FOR THE YEAR 2020-21</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <table style="width: 100%;">
                        <tr>
                            <th>PARTICULARS</th>
                            <th>Std. I</th>
                            <th>Std. II/ III</th>
                            <th>Std. IV/ V</th>
                            <th>Std. VI/ VII</th>
                            <th>Std. VIII</th>
                        </tr>
                        <tr>
                            <td>Registration Fee</td>
                            <td>2000</td>
                            <td>2000</td>
                            <td>2000</td>
                            <td>2000</td>
                            <td>2000</td>
                        </tr>
                        <tr>
                            <td>Admission</td>
                            <td>4000</td>
                            <td>4000</td>
                            <td>4000</td>
                            <td>4000</td>
                            <td>4000</td>
                        </tr>
                        <tr>
                            <td>Development Fee</td>
                            <td>1000</td>
                            <td>1000</td>
                            <td>1000</td>
                            <td>1000</td>
                            <td>1000</td>
                        </tr>
                        <tr>
                            <td>School Fee</td>
                            <td>650</td>
                            <td>700</td>
                            <td>750</td>
                            <td>800</td>
                            <td>900</td>
                        </tr>
                        <tr>
                            <td>Lab. Charge (Yearly)</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Computer Fee (Monthly)</td>
                            <td>100</td>
                            <td>100</td>
                            <td>100</td>
                            <td>100</td>
                            <td>100</td>
                        </tr>
                        <tr>
                            <td>Examination Charge (Half Yearly)</td>
                            <td>200</td>
                            <td>200</td>
                            <td>300</td>
                            <td>300</td>
                            <td>300</td>
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
