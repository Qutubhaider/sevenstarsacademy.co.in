<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trustees-speak.aspx.cs" Inherits="trustees_speak" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/control/governing.ascx" TagPrefix="uc1" TagName="governing" %>
<%@ Register Src="~/control/testimonial.ascx" TagPrefix="uc1" TagName="testimonial" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trustees’ Speak - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
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
                        <li>Trustees’ Speak</li>
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
                    <h2 class="section-title">Trustees’ Speak</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="about-box-item">
                        <img src="assets/img/rpsingh.png" alt="">

                        <p style="text-align: justify;">
                            A dynamic economy generests the need for compliant managers who are capable of meeting the challenges in today’s fast 
                         paced and competitive educational environment.
                        </p>
                        <p style="text-align: justify;">
                            Manrakhan Mahto B.Ed. college groom their students in a manner that they become capable of meeting these challenges . 
                          The collage has a guiding philosophy to integrate globally with the object of imparting education and dissemination and
                          application of knowledge to create a synergetic Impact.
                      
                        </p>
                        <p style="text-align: justify;">
                            With this belief we are committed to continually engage ourselves in a relentless pursuit to improve upon our performance 
                            and enhance college’s position in the best B.Ed. college in India.
                        </p>

                        <span style="font-weight: bold;"></span>
                        <div class="author-signature">
                          <%--  <img src="assets/img/signature.png" alt="">--%>
                            <h4>Rajendra Prasad Singh<span>Trustee</span></h4>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="about-box-item">
                        <img src="assets/img/brohdar.png" alt="">
                        <p style="text-align: justify;">
                            Manrakhan Mahto B.Ed. College is conceived under M R M Educational trust as a progressive body of dedicated individuals and registered in 2008.
                        </p>
                        <p style="text-align:justify">
                            The initial agenda endeavored to provide high quality and best system educational Training facilities in the region.
                        </p>
                        <p style="text-align:justify">
                            Our aim to forward educational interest and well being of individuals challenged by the lack of quality education . By imparting good education Training,
                            We can play a vital Role in growth and development of education in our country.
                        </p>
                        <p style="text-align:justify;">
                            Our mission and vision is to develop our students into capable and intellectual leaders, who can solve as able and resource any where in world of education.
                        </p>
                        <span style="font-weight: bold;"></span>
                        <div class="author-signature">
                            <%--<img src="assets/img/signature.png" alt="">--%>
                            <h4>Birendra Nath Ohdar<span>Trustee</span></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About School Area End -->
    <!-- Counter Area Start -->
    
    <!-- Counter Area End -->
    <!-- Lecturera Area Start -->
    <uc1:governing runat="server" ID="governing" />
    <!-- Lecturera Area End -->
    <!-- Testimonial Area Start -->
    <div class="testimonial-chooce-area pd">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="section-title">What student say ?</h2>
                    <uc1:testimonial runat="server" ID="testimonial" />
                </div>
                <div class="col-md-6">
                    <h2 class="section-title">why study plus ?</h2>
                    <div class="accordion accordion-box-4">
                        <div class="panel-group" id="accordion1">
                            <div class="panel panel-default">
                                <div class="panel-heading active">
                                    <h3 class="panel-title">
                                        <a class="accordion-toggle open collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1" aria-expanded="false">1.  ConsultPress continues to grow and expand, increasing
                                
                                            <i class="fa fa-caret-down pull-right"></i>
                                        </a>
                                    </h3>
                                </div>
                                <div id="collapseOne1" class="panel-collapse collapse" style="height: 0px;" aria-expanded="false">
                                    <div class="panel-body">
                                        <p>Just sit right back and you'll hear a tale a tale of a fateful trip that started from this tropic port aboard this tiny ship all of them had hair of gold like their mother the youngest one in curls. Space. The final frontier.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1" aria-expanded="false">2.  Where are your consultant based 
                                
                                            <i class="fa fa-caret-down pull-right"></i>
                                        </a>
                                    </h3>
                                </div>
                                <div id="collapseTwo1" class="panel-collapse collapse" style="height: 0px;" aria-expanded="false">
                                    <div class="panel-body">
                                        <p>Just sit right back and you'll hear a tale a tale of a fateful trip that started from this tropic port aboard this tiny ship all of them had hair of gold like their mother the youngest one in curls. Space. The final frontier.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1" aria-expanded="false">3.  Network supports  intermediaries in different  
                                
                                            <i class="fa fa-caret-down pull-right"></i>
                                        </a>
                                    </h3>
                                </div>
                                <div id="collapseThree1" class="panel-collapse collapse" style="height: 0px;" aria-expanded="false">
                                    <div class="panel-body">
                                        <p>Just sit right back and you'll hear a tale a tale of a fateful trip that started from this tropic port aboard this tiny ship all of them had hair of gold like their mother the youngest one in curls. Space. The final frontier.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseFoure1" aria-expanded="false">4. ConsultPress continues to grow and expand, increasing 
                                
                                            <i class="fa fa-caret-down pull-right"></i>
                                        </a>
                                    </h3>
                                </div>
                                <div id="collapseFoure1" class="panel-collapse collapse" style="height: 0px;" aria-expanded="false">
                                    <div class="panel-body">
                                        <p>Just sit right back and you'll hear a tale a tale of a fateful trip that started from this tropic port aboard this tiny ship all of them had hair of gold like their mother the youngest one in curls. Space. The final frontier.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Area Start -->
    <uc1:footer runat="server" ID="footer" />
    <!-- Footer Area End -->
</body>
</html>
