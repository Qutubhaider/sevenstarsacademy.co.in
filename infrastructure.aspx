<%@ Page Language="C#" AutoEventWireup="true" CodeFile="infrastructure.aspx.cs" Inherits="infrastructure" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Infrastructure - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
   
    <style type="text/css">
        .Infrastructureactive {
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
            table th
            {
                text-align:center;
                font-size:20px;
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
                font-size:17px;
            }
            table td{
                  font-size:12px;
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
                    <h2>Academics</h2>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                        <li>Infrastructure</li>
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
                    <h2 class="section-title">Infrastructure</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-10">

                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">The Campus</h3>
                            <blockquote>
                                Situated in lush green surroundings, the college is treat for the eyes and the subtle aesthetic side of you. A library is situated in the campus.
                            </blockquote>
                        </div>
                    </div>
                    <br />
                    <div class="about-box-item">

                        <div class="widget widget-tag">
                            <h3 class="widget-title">Facilities</h3>
                            <blockquote>
                                Equipped with facilities such as Canteen, Fresh Water, Internet Facilities, Electricity Facilities, STD &
                            Xerox facilities etc. You will find that it is self-sufficient, in every possible way and way more.
                            </blockquote>
                        </div>
                    </div>
                    <br />

                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Classrooms</h3>
                            <div class="col-md-6">
                                <blockquote style="text-align: justify;">
                                    The Institute has spacious architecturally designed lecture and tutorial rooms. It also has glossy chalkboards and flannel boards all intact, furnished with adequate modern furniture.
                                </blockquote>
                            </div>
                            <div class="col-md-6">
                                <img src="assets/img/class/class.png" />
                            </div>
                            <strong>Classroom Ethics:</strong><br />
                            <ul class="mul">
                                <li>Position for teaching learning and Research</li>
                                <li>Respects for students</li>
                                <li>Deeper understanding</li>
                                <li>Clarity of expression/thought</li>
                                <li>Fluency of Language</li>
                                <li>Discipline</li>
                            </ul>
                        </div>
                    </div>

                    <br />
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Science and Mathematics Resource Centre</h3>
                            <div class="col-md-6">
                                <blockquote style="text-align: justify; font-size: 14px;">
                                    <p>Science is not only knowledge but also an art. This art is explored, experimented & practiced in Science Resource Centre. Science cannot be taught effectively without testing, Experimentation & demonstration of the scientific facts.</p>
                                    <p>Science Resource Centre is the place and means with the help of which all these necessary activities can be performed smoothly & effectively. Maths Resource centre is a place when students can learn and explore mathematical concepts and verify mathematical facts and theories through a variety of activities using different materials.</p>
                                    <p>These activities may be carried out by teacher or the students themselves to explore, to learn, to stimulate interest & favourable attitude towards maths. These aims are fulfilled by Science & Maths Resource centre setup in the college. Various experiments are done, models & charts are prepared by the students and extenison lectures are delivered by educationists.</p>
                                </blockquote>
                            </div>
                            <div class="col-md-6">
                                <img src="assets/img/class/Science.png" />
                                <br />
                                <img src="assets/img/class/maths.png" />
                            </div>
                        </div>
                    </div>

                    <div style="clear: both;"></div>
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Psychology Research Center</h3>                            
                            <div class="col-md-6">
                                <img src="assets/img/class/pshyco.png" />
                            </div>
                            <div class="col-md-6">
                                <blockquote style="text-align: justify; font-size: 14px;">
                                    In any scheme of study there should be a close integration of theory with practice. We have a curiosity to know intellectual level, interests, aptitudes, personality, adjustment etc. We can know such things about them through their measurements & this measurement is possible through relevant psychological tests. The college has a separate Psychology Laboratory which has sufficient psychological apparatus, tests, transparencies and CD’s which are related to various aspects of human development and teaching learning process for conducting psychology experiments included in the B.Ed. Syllabus.
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <div style="clear: both;"></div>
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Health and Physical Resource Center</h3>
                            <div class="col-md-6">
                                <blockquote style="text-align: justify; font-size: 14px;">
                                    College have a fully equipped health & physical resource centre, it provides ample opportunity for student to indulge in indoor & outdoor sports activities. The students can avail of indoor games like chess, carom-board & outdoor games like badminton, volley ball. Our mission is to help provide students with adecuate resources to excel in sports by creating environment which imbibes on ethics of sportsmanship. College aims to develop professional competence through physical, emotional development for benefit of student.
                                </blockquote>
                            </div>
                            <div class="col-md-6">
                                <img src="assets/img/class/health.png" />
                            </div>
                        </div>
                    </div>
                    <div style="clear: both;"></div>
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Language Lab</h3>                            
                            <div class="col-md-6">
                                <img src="assets/img/class/language.png" />
                            </div>
                            <div class="col-md-6">
                                <blockquote style="text-align: justify; font-size: 14px;">
                                    Language lab is set up in college because it is not only a place where learners perform language experiments but it is a special lab where language experiements can be practiced by speaking & listening with the help of sound equipment. It recognizes the individual differences and language optitude of learner. It is self-learning device, designed in such a manner that a student can practice carefully produced pattern of drills. College’s is well equipped with microphones, LCD projector with screen, CPU & many CD’s to learn & speak English fluently.
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <div style="clear: both;"></div>
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">ICT & ET Laboratory</h3>
                            <div class="col-md-6">
                                <blockquote style="text-align: justify; font-size: 14px;">
                                    The college has a newely-renovated state-of-the-art computer laboratory with Internet connection facilities. The laboratory has 16 personal computers with the latest configurations especially for the use by the students. The laboratory is also equipped with Scanning and Printing facilities. The college also has Overhead Projectors, Audio Equipment, a VCD player and Television, and such other equipments which are often used in the teaching -learning process. The laboratory is looked after by a qualified teaching assistant who also provides technical support.
                                </blockquote>
                            </div>
                            <div class="col-md-6">
                                <img src="assets/img/class/it.png" />
                            </div>
                        </div>
                    </div>
                    <div style="clear: both;"></div>
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Art & Craft Resource Centre</h3>                            
                            <div class="col-md-6">
                                <img src="assets/img/class/art.png" />
                            </div>
                            <div class="col-md-6">
                                <blockquote style="text-align: justify; font-size: 14px;">
                                    A well equipped art & craft resource centre is established in college because canvas is the mode to express the inner feelings of students. It is said that colour speak for themselves. Art is soul of life, creativity is cultured
with opportunities extended to the students in many forms. All the possible facilities & opportunities are extended to our students to engrave their minds & creativity.
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <div style="clear: both;"></div>
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Library</h3>
                            <div class="col-md-6">
                                <blockquote style="text-align: justify; font-size: 14px;">
                                    The institution has a well defined set of vision, mission and objective. The library of BCE camplies with them and has an open-access system. The Library provides services to the faculty members and student. In this regard, the library is supported by 100’s of educational CDs including Encyclopedia Britannica and National Geographic Journals. The library subscribes to 2 International Journals and nearly 30 periodicals including magazines, journals and newspapers. The library is constantly enriched and new material is added to keep abreast with latest changes and advancements in the field of education. For the convenience of the readers, photocopying facility has also been provided in the library premises.
                                </blockquote>
                                <strong>Thea main objectives of the library are:</strong>
                                <ul class="mul">
                                    <li>To develop appropriate collections in various disciplines for satisfying the needs of the students.</li>
                                    <li>To provide reading, lending, reference, information and documentation facilities to all categories of staff and students.</li>
                                    <li>To support and facilitate the research, learning, teaching and administrative activities of the institution.</li>
                                    <li>To provide an appropriate and comfortable environment and facilities for the use of Library resources, and for individual and group study.</li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <img src="assets/img/class/liabrary.png" />
                                <br />
                                <img src="assets/img/class/liabrary2.png" />
                            </div>
                        </div>
                    </div>
                    <div style="clear: both;"></div>
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Specification of Rooms & Other Infrastructural facilities</h3>
                            <div style="overflow:scroll">
                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <th scope="col" width="80" align="center">S. no.</th>
                                        <th scope="col" align="left">Description</th>
                                        <th scope="col" align="right">Length (m)</th>
                                        <th scope="col" align="right">Breadth (m)</th>
                                        <th scope="col" align="right">Carpet Area (sqm)</th>
                                    </tr>
                                    <tr>
                                        <td align="center">1</td>
                                        <td align="left">Classroom (2 nos.)</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">108.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center">2</td>
                                        <td align="left">Multipurpose hall (200 cap.)</td>
                                        <td align="right">9</td>
                                        <td align="right">20.8</td>
                                        <td align="right">187.20</td>
                                    </tr>
                                    <tr>
                                        <td align="center">3</td>
                                        <td align="left">Library cum reading room</td>
                                        <td align="right">9</td>
                                        <td align="right">14.9</td>
                                        <td align="right">134.10</td>
                                    </tr>
                                    <tr>
                                        <td align="center">4</td>
                                        <td align="left">Resource room</td>
                                        <td align="right"></td>
                                        <td align="right"></td>
                                        <td align="right"></td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">(a) ICT resource</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">(b) Psy resource center</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">(c) Arts &amp; crafts resource</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">(d) Health &amp; phy. edu. resource</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">&amp; store</td>
                                        <td align="right">3.48</td>
                                        <td align="right">2.4</td>
                                        <td align="right">8.35</td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">(e) Science &amp; math resource</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">&amp; store</td>
                                        <td align="right">3.48</td>
                                        <td align="right">2.4</td>
                                        <td align="right">8.35</td>
                                    </tr>
                                    <tr>
                                        <td align="center">5</td>
                                        <td align="left">Principal office</td>
                                        <td align="right">4.38</td>
                                        <td align="right">6</td>
                                        <td align="right">26.28</td>
                                    </tr>
                                    <tr>
                                        <td align="center">6</td>
                                        <td align="left">Staff room</td>
                                        <td align="right">4.38</td>
                                        <td align="right">6</td>
                                        <td align="right">26.28</td>
                                    </tr>
                                    <tr>
                                        <td align="center">7</td>
                                        <td align="left">Administrative room</td>
                                        <td align="right">4.38</td>
                                        <td align="right">6</td>
                                        <td align="right">26.28</td>
                                    </tr>
                                    <tr>
                                        <td align="center">8</td>
                                        <td align="left">Visitor’s room</td>
                                        <td align="right">4.35</td>
                                        <td align="right">3</td>
                                        <td align="right">13.05</td>
                                    </tr>
                                    <tr>
                                        <td align="center">9</td>
                                        <td align="left">Girls common room</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center">10</td>
                                        <td align="left">Boy’s common room</td>
                                        <td align="right">4.38</td>
                                        <td align="right">6</td>
                                        <td align="right">26.28</td>
                                    </tr>
                                    <tr>
                                        <td align="center">11</td>
                                        <td align="left">Seminar room</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center">12</td>
                                        <td align="left">Canteen</td>
                                        <td align="right">6</td>
                                        <td align="right">6</td>
                                        <td align="right">36.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center">13</td>
                                        <td align="left">Toilet</td>
                                        <td align="right"></td>
                                        <td align="right"></td>
                                        <td align="right"></td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">(a) Male (3 nos.)</td>
                                        <td align="right">3</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left">(b) Female (3 nos.)</td>
                                        <td align="right">3</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center">14</td>
                                        <td align="left">Store – 1</td>
                                        <td align="right">4.35</td>
                                        <td align="right">3</td>
                                        <td align="right">13.05</td>
                                    </tr>
                                    <tr>
                                        <td align="center">15</td>
                                        <td align="left">Store – 2</td>
                                        <td align="right">4.35</td>
                                        <td align="right">6</td>
                                        <td align="right">26.10</td>
                                    </tr>
                                    <tr>
                                        <td align="center">16</td>
                                        <td align="left">Any other room</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center">17</td>
                                        <td align="left">Chairman’s chamber</td>
                                        <td align="right">9</td>
                                        <td align="right">6</td>
                                        <td align="right">54.00</td>
                                    </tr>
                                    <tr>
                                        <td align="center">18</td>
                                        <td align="left">Lift, stairs &amp; corridor (167.04 x 3)</td>
                                        <td align="right"></td>
                                        <td align="right"></td>
                                        <td align="right">501.12</td>
                                    </tr>
                                    <tr>
                                        <td align="center"></td>
                                        <td align="left"><strong>Total Area</strong></td>
                                        <td align="right"></td>
                                        <td align="right"></td>
                                        <td align="right"><strong>1734.44</strong></td>
                                    </tr>
                                </tbody>
                            </table>
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


