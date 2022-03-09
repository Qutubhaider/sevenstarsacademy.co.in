<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facultydt.aspx.cs" Inherits="facultydt" %>

<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>




<!DOCTYPE html>
<html lang="en"> 
<head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Faculty Details - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
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
                  <h2>Faculty Details</h2>
                  <ul>
                     <li><a href="index.aspx">Home</a></li>
                     <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                     <li>Faculty Details</li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <!-- Breadcrumb Area End -->
      <!-- Teacher Details Area Start -->
      <div class="teacher-details-area pd">
         <div class="container">
            <div class="row">
               <div class="col-sm-5">
                  <div class="teacher-img">
                     <img src="" id="txt_faculty_imgs" runat="server" alt="" />
                    <%-- <div class="teacher-link">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                     </div>--%>
                  </div>
               </div>
               <div class="col-sm-7">
                  <div class="teacher-skill">
                     <h3 id="txt_faculty_name" runat="server"></h3>
                      <br />
                      <span id="txt_faculty_desgination" runat="server"></span>
                      <br />
                      <span id="txt_faculty_qualification" runat="server"></span>
                     <%--<p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum Mirum Enotare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas humanitat seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sol</p>
                     <div class="spacer-15"></div>
                     <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum Mirum enotare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas humanitati seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari</p>--%>
                     <div class="skill-progress">
                        <h3>best skill</h3>
                        <div class="row">
                           <div class="col-md-3 col-sm-6">
                              <div class="progress-single-item">
                                 <div class="progress blue same-color">
                                    <span class="progress-left">
                                    <span class="progress-bar"></span>
                                    </span>
                                    <span class="progress-right">
                                    <span class="progress-bar"></span>
                                    </span>
                                    <div class="progress-value">100%</div>
                                 </div>
                                 <h5>English</h5>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="progress-single-item">
                                 <div class="progress yellow">
                                    <span class="progress-left">
                                    <span class="progress-bar"></span>
                                    </span>
                                    <span class="progress-right">
                                    <span class="progress-bar"></span>
                                    </span>
                                    <div class="progress-value">75%</div>
                                 </div>
                                 <h5>Computer</h5>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="progress-single-item">
                                 <div class="progress pink">
                                    <span class="progress-left">
                                    <span class="progress-bar"></span>
                                    </span>
                                    <span class="progress-right">
                                    <span class="progress-bar"></span>
                                    </span>
                                    <div class="progress-value">65%</div>
                                 </div>
                                 <h5>Science</h5>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="progress-single-item">
                                 <div class="progress green">
                                    <span class="progress-left">
                                    <span class="progress-bar"></span>
                                    </span>
                                    <span class="progress-right">
                                    <span class="progress-bar"></span>
                                    </span>
                                    <div class="progress-value">80%</div>
                                 </div>
                                 <h5>Mathematics</h5>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="spacer-50"></div>
            <%--<div class="row">
               <div class="col-md-7">
                  <h3 class="coursetitle">education details</h3>
                  <div class="course-details">
                     <div class="table-responsive">
                        <table class="table table-bordered">
                           <thead class="table-head">
                              <tr>
                                 <th>course name</th>
                                 <th>passing year</th>
                                 <th>school / collage</th>
                                 <th>result</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <th>s. s. c</th>
                                 <td>1999</td>
                                 <td>oxford</td>
                                 <td>“a+”</td>
                              </tr>
                              <tr>
                                 <th>diploma (cse)</th>
                                 <td>1999</td>
                                 <td>university of cambridge</td>
                                 <td>“a+”</td>
                              </tr>
                              <tr>
                                 <th>B. s. c (cse)</th>
                                 <td>2001</td>
                                 <td>stamford university</td>
                                 <td>“a”</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>--%>
         </div>
      </div>
      <uc1:footer runat="server" ID="footer" />
   </body>
</html>
