<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eligibility-for-admission.aspx.cs" Inherits="eligibility_for_admission" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eligibility for Admission - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
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
                        <li>Eligibility for Admission</li>
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
                    <h2 class="section-title">Eligibility for Admission</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-10">

                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Academic Requisite</h3>
                            <ul class="mul">
                                <li>Science, Commerce and Arts Graduated and Post Graduates may apply with College leaving certificate.</li>
                                <li>As per NCTE norms, a candidate should have secured at least 45% marks in the aggregate at the Bachelors Degree Examination of a recognized university.</li>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="about-box-item">

                        <div class="widget widget-tag">
                            <h3 class="widget-title">Please Note</h3>
                            <blockquote>Candidates of the following background will not be considered for admission:</blockquote>
                            <ul class="mul">
                                <li>
                                  Candidates who have appeared for the university examination and are awaiting results.
                                </li>
                                <li>
                                  Candidates who have received the marks from the list only.
                                </li>
                                <li>
                                  Candidates who have already been enrolled for other courses viz computer science, management training program, competitive exams or any post graduate studies. 
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Length of Course</h3>
                            <p style="text-align: justify; line-height: 19px;">
                                The course is of one academic year duration, starting form 1st July. There shall be at least 150 teaching days in a year exclusive of period of admission examination etc.
                            </p>
                        </div>
                    </div>
                    <br />
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">A candidate has to choose any one of the following combination</h3>
                            <a>English & History</a>
                            <a>English & Civics</a>
                            <a>Hindi & History
                            </a>
                            <a>Hindi & Civics
                            </a>
                            <a>History & Civics
                            </a>
                            <a>Geography & History
                            </a>
                            <a>Geography & Civics
                            </a>
                            <a>Physical & Biological Sciences
                            </a>
                            <a>Physical Sciences & Math’s
                            </a>
                        </div>
                    </div>
                    <br />
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">The method subjects have to be selected as per RU norms Given Below</h3>
                            <ul class="mul">
                                <li>
                                 Candidates who offer English / Hindi / History / Geography / Biological or Physical Science / Maths as methods shall have to clear the subject at the Bachelor’s Degree stage or Master’s degree stage.
                                </li>
                                <li>
                                 Candidates who have passed their Degree examination in Science with subjects other than Mathematics may be permitted to offer Mathematics as their ‘method’ subject.
                                </li>
                                <li>
                                 Those who offer Civics as a ‘method’ should have studied at the Degree stage any one of the following subjects : History, Geography, Political science, Sociology, Anthropology, Economics or Commerce.
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Selection of Candidates for Admission</h3>
                            <blockquote>
                                Selection of candidates for admission should be made either on the basis of marks obtained in the qualifying examination as per the policy of the State Government / University, to which the institution is affiliated. There shall the rules of the State Government.
                            </blockquote>
                            <strong>Selection of candidates will be made on faculty basis as follows :</strong><br />
                            <a href="#">Language – 30</a>
                            <a href="#">Arts Students – 30</a>
                            <a href="#">Science Students – 30</a>
                            <a href="#">Commerce Students – 10</a>
                            <a href="#">Ex<strong>Total – 100</strong>am</a>
                        </div>
                    </div>
                    <br />
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">At the time of Admission</h3>
                           <blockquote>All relevant original certificates along with following must be produced to verifying officer by the candidates at the time of admission:</blockquote>
                            <ol >
                                <li>Original Marks sheet of all examinations</li>
                                <li>College Leaving Certificate</li>
                                <li>Registration Number of University Concerned if any</li>
                                <li>Migration Certificate of the University form which the candidate received her Bachelor’s or Master’s Degree, if that university is other than Ranchi University.</li>
                                <li>Caste &amp; Income Certificates ( if SC / ST / BC / OBC).</li>
                                <li>Three copies of recent passport size photographs</li>
                            </ol>
                        </div>
                    </div>
                     <br />
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Intake</h3>
                            <blockquote>
                                Only 100 students will be admitted in one academic year. Reservation Policy of the Government of Jharkhand as under will be followed :
                            </blockquote>
                            
                            <a href="#">SC – 10</a>
                            <a href="#">ST – 26</a>
                            <a href="#">OBC – 14,  50</a>
                        </div>
                    </div>
                    <br />
                    <div class="about-box-item">
                        <div class="widget widget-tag">
                            <h3 class="widget-title">Medium of Instruction</h3>
                            <blockquote>
                                The medium of Instruction will be Hindi and English. Examination may be written in Hindi or English except in language subjects.
                            </blockquote>
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

