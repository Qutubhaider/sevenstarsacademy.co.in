<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

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
    <title>Contact -  SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
     <style type="text/css">
        .Contacteactive{
            background: #052153 none repeat scroll 0 0;
            color: #fff !important;
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
                        <h2>Conatct with us</h2>
                        <ul>
                            <li><a href="index.aspx">Home</a></li>
                            <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                            <li>Conatct Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End -->
        <!-- Contact Area Start -->
        <div class="contact-us-area pd">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14649.755402774741!2d85.2805506!3d23.3723362!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2624b32468ce446!2sSeven+Stars+Academy!5e0!3m2!1sen!2sin!4v1553523128142" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                            
                        </div>
                    </div>
                </div>
                <div class="spacer-50"></div>
                <div class="row">
                    <div class="col-md-3 col-sm-5">
                        <div class="contact-number">
                            <p><i class="fa fa-phone"></i>+91-9334173672</p>
                            <p><i class="fa fa-phone"></i>+91-7761844344</p>
                            <p><i class="fa fa-map-marker"></i>Mandap Toli, Hehal, P.O Hehal, Dist - Ranchi (834005) Jharkhand</p>
                            <p style="font-size: 10px;"><i class="fa fa-envelope"></i>info@sevenstarsacademy.co.in</p>
                            <p style="font-size: 10px;"><i class="fa fa-envelope"></i>sevenstarsacademy@gmail.com</p>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-7">
                        <div class="contact-info-text">
                            <h3>contact info</h3>
                           Seven Stars Academy Hehal ,Ranchi was founded in the year 2011. it is powered by Seven stars welfare trust and backed by wel qualified and trained faculties. The word seven stars bring a memories of seven sisters and two parents Late MahadevTigga and Late UdayTigga of a family who donated the space for this academy to groom the rural children. Mrs.SonamotiTigga,Mr. B.Beck,Mrs.seemaTigga,Dr.JagarnathOraon and Mr.MangaTiggaand more others are the founder members of this Institution. From a modest beginning, Seven Stars Academy enjoys a position of eminence among the city schools today. The school has strength of over 800 students and nearly 30 teaching staff and 20 non teaching staff members. 
                 
                        </div>
                    </div>
                </div>
                <div class="spacer-50"></div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Write a message</h4>
                            <div class="search-box">
                                <div class="row">
                                     <div class="col-sm-6">
                                                            <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Name :"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="regName" runat="server"
                                                                ControlToValidate="txt_name"
                                                                ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                                                Text="Enter a valid name" Style="position: absolute; margin-top: -24px; font-size: 10px;" />
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txt_phone" runat="server" CssClass="form-control" placeholder="Phone :"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                                ControlToValidate="txt_phone" ErrorMessage="Invalid Phone Number"
                                                                ValidationExpression="[0-9]{10}" Style="position: absolute; margin-top: -24px; font-size: 10px;"></asp:RegularExpressionValidator>
                                                        </div>
                                                        <div class="col-md-12">
                                                             <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Email :"></asp:TextBox>
            <asp:RegularExpressionValidator style="position: absolute;margin-top: -24px;font-size: 10px;" ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                                        </div>
                                                        <div class="col-md-12">
                                                              <asp:TextBox ID="txt_messages" TextMode="MultiLine" runat="server" CssClass="form-control" placeholder="Message :"></asp:TextBox>
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
