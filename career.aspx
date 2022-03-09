<%@ Page Language="C#" AutoEventWireup="true" CodeFile="career.aspx.cs" Inherits="career" %>

<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/control/homecontact.ascx" TagPrefix="uc1" TagName="homecontact" %>
<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>





<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>Career -  SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
    <style type="text/css">
        .careeravtive {
            background: #052153 none repeat scroll 0 0;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="f1" runat="server">
        <uc1:header runat="server" ID="header" />
        <!-- Breadcrumb Area Start -->
        <div class="breadcrumb-area breadcrumb-bg overlay-black pd-70">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2>Career</h2>
                        <ul>
                            <li><a href="index.aspx">Home</a></li>
                            <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                            <li>Career</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End -->
        <!-- Contact Area Start -->
        <div class="contact-us-area pd">
            <div class="container">

                <div class="spacer-50"></div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Career Form</h4>
                            <div class="search-box">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Name :"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="regName" runat="server"
                                            ControlToValidate="txt_name"
                                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                            Text="Enter a valid name" Style="position: absolute; margin-top: -24px; font-size: 10px;" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txt_city" runat="server" CssClass="form-control" placeholder="City :"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="txt_city"
                                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                            Text="Enter a valid name" Style="position: absolute; margin-top: -24px; font-size: 10px;" />
                                    </div>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txt_phone" runat="server" CssClass="form-control" placeholder="Phone :"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="txt_phone" ErrorMessage="Invalid Phone Number"
                                            ValidationExpression="[0-9]{10}" Style="position: absolute; margin-top: -24px; font-size: 10px;"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Email :"></asp:TextBox>
                                        <asp:RegularExpressionValidator Style="position: absolute; margin-top: -24px; font-size: 10px;" ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-md-12">
                                        <label style="float:left;">Upload Your CV</label>&nbsp;&nbsp;
                                       <asp:FileUpload ID="file1" runat="server" />
                                    </div>
                                    <div class="col-md-12">
                                        <p>
                                            <asp:Button ID="btn_send" Text="Send" runat="server" OnClick="btn_send_Click" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
