<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student-Strength.aspx.cs" Inherits="Student_Strength" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Strength - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
    <style type="text/css">
        .mainmenu ul li.StudentStrength > a {
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
                    <h2>Student Strength</h2>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                        <li>Student Strength</li>
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
                    <h2 class="section-title">STATEMENT OF STUDENTS 2020-21
                    </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <table style="width: 100%;">
                        <tr>
                            <th>S.NO</th>
                            <th>Class</th>
                            <th>No. of Sections</th>
                            <th>Total No. of Students</th>
                            <th>No. of Boys</th>
                            <th>No. of Girls</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Std. I</td>
                            <td>1</td>
                            <td>42</td>
                            <td>24</td>
                            <td>18</td>
                        </tr>
                         <tr>
                            <td>2</td>
                            <td>Std. II</td>
                            <td>1</td>
                            <td>42</td>
                            <td>25</td>
                            <td>16</td>
                        </tr>
                         <tr>
                            <td>3</td>
                            <td>Std. III</td>
                            <td>1</td>
                            <td>40</td>
                            <td>27</td>
                            <td>13</td>
                        </tr>
                         <tr>
                            <td>4</td>
                            <td>Std. IV</td>
                            <td>1</td>
                            <td>45</td>
                            <td>24</td>
                            <td>17</td>
                        </tr>
                         <tr>
                            <td>5</td>
                            <td>Std. V</td>
                            <td>1</td>
                            <td>41</td>
                            <td>29</td>
                            <td>12</td>
                        </tr>
                         <tr>
                            <td>6</td>
                            <td>Std. VI-A</td>
                            <td>1</td>
                            <td>43</td>
                            <td>28</td>
                            <td>15</td>
                        </tr>
                          <tr>
                            <td></td>
                            <td>Std. VI-B</td>
                            <td>1</td>
                            <td>43</td>
                            <td>25</td>
                            <td>18</td>
                        </tr>
                          <tr>
                            <td>7</td>
                            <td>Std. VII-A</td>
                            <td>1</td>
                            <td>43</td>
                            <td>26</td>
                            <td>17</td>
                        </tr>
                          <tr>
                            <td></td>
                            <td>Std. VII-B</td>
                            <td>1</td>
                            <td>42</td>
                            <td>25</td>
                            <td>17</td>
                        </tr>
                          <tr>
                            <td>8</td>
                            <td>Std. VIII-A</td>
                            <td>1</td>
                            <td>40</td>
                            <td>29</td>
                            <td>11</td>
                        </tr>
                          <tr>
                            <td></td>
                            <td>Std. VIII-B</td>
                            <td>1</td>
                            <td>42</td>
                            <td>24</td>
                            <td>18</td>
                        </tr>
                          <tr>
                            <td></td>
                            <td>Std. VIII-C</td>
                            <td>1</td>
                            <td>43</td>
                            <td>25</td>
                            <td>18</td>
                        </tr>
                         <tr>                            
                            <td colspan="2">Total</td>
                            <td>11</td>
                            <td>505</td>
                            <td>311</td>
                            <td>194</td>
                        </tr>
                    </table>
                    <h2>2. DETAILS OF COMPUTER EDUCATIONS: -</h2>
                    <p style="text-align:left;">
                        This Computer Education is very essential in the electronic related modern era. The School has fully equipped 
                        computer laboratory with the latest machine and qualified teachers. The school is committed to develop a practical
                        approach to learning in the students.
                    </p>
                </div>

            </div>
        </div>
    </div>

    <!-- Footer Area Start -->
    <uc1:footer runat="server" ID="footer" />
    <!-- Footer Area End -->
</body>
</html>

