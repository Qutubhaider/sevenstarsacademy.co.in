<%@ Page Language="C#" AutoEventWireup="true" CodeFile="apply-online.aspx.cs" Inherits="apply_online" %>

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
    <title>Apply Online Application for Registration -  SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
    <style type="text/css">
        .Contacteactive {
            background: #052153 none repeat scroll 0 0;
            color: #fff;
        }

        .pd-70 {
            padding: 22px 0 !important;
        }

        .pd {
            padding: 14px !important;
        }

        .form-control {
            border: 1px solid black !important;
            padding: 7px !important;
            height: 30px !important;
            font-size: 13px !important;
        }

        label {
            font-weight: normal;
            color: black;
            float: left;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
      
        $(document).ready(function () {
            $('#check').change(function () {
                if (!this.checked) {
                    $("#txtPHouseNo").val('');
                    $("#txtPRoadStreet").val('');
                    $("#txtPLocality").val('');
                    $("#txtPPSPO").val('');
                    $("#txtPDictrict").val('');
                    $("#txtPPincode").val('');
                    $("#txtPState").val('');
                    $("#txtPCountry").val('');
                }
                else {
                    $("#txtPHouseNo").val($("#txtHouseNo").val());
                    $("#txtPRoadStreet").val($("#txtRoadStreet").val());
                    $("#txtPLocality").val($("#txtLocality").val());
                    $("#txtPPSPO").val($("#txtPSPO").val());
                    $("#txtPDictrict").val($("#txtDictrict").val());
                    $("#txtPPincode").val($("#txtPinCode").val());
                    $("#txtPState").val($("#txtState").val());
                    $("#txtPCountry").val($("#txtCountry").val());
                }
            });
        });
    </script>
</head>
<body>
    <form id="f1" runat="server">

        <!-- Breadcrumb Area Start -->
        <div class="breadcrumb-area breadcrumb-bg overlay-black pd-70">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2>Apply Online Application for Registration</h2>
                        <ul>
                            <li><a href="index.aspx">Home</a></li>
                            <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                            <li>Apply Online Application for Registration</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%-- <a href="https://sevenstars.edu-world.in/" target="_blank">For Test Link</a>--%>
        <!-- Breadcrumb Area End -->
        <!-- Contact Area Start -->
        <div class="contact-us-area pd">
            <div class="container">

                <!-- Start Student’s Particulars -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Student’s Particulars</h4>
                            <div class="search-box">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label>First Name</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txt_firstname" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="regName" runat="server"
                                            ControlToValidate="txt_firstname"
                                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                            Text="Enter a valid first name" Style="position: absolute; margin-top: -24px; font-size: 10px;" />
                                    </div>
                                    <div class="col-md-2">
                                        <label>Middle Name</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="txtMiddleName"
                                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                            Text="Enter a valid last name" Style="position: absolute; margin-top: -24px; font-size: 10px;" />
                                    </div>
                                    <div class="col-md-2">
                                        <label>Last Name</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txt_lastname" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="txt_lastname"
                                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                                            Text="Enter a valid last name" Style="position: absolute; margin-top: -24px; font-size: 10px;" />
                                    </div>
                                    <div class="col-sm-2">
                                        <label>Date of Birth</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txt_date_of_birth" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Birth Certificate No</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtBirthCertificateNo" runat="server" CssClass="form-control" placeholder="Birth Certificate No"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label>Gender</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:DropDownList ID="dd_gender" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="---Select---" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <label>Blood Group</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txt_blood_group" runat="server" CssClass="form-control" placeholder="Blood Group"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label>Religion</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txt_Religion" runat="server" CssClass="form-control" placeholder="Religion"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label>Student Caste</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtStudentCaste" runat="server" CssClass="form-control" placeholder="Student Caste"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label>Category</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control" placeholder="Category"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label>Nationality</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txt_Nationality" runat="server" CssClass="form-control" placeholder="Nationality"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label>Mother Tongue </label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtMotherTongue" runat="server" CssClass="form-control" placeholder="Mother Tongue"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <label>Aadhar No. (Optional)</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtAadharNo" runat="server" CssClass="form-control" placeholder="Aadhar No. Of Child"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Student’s Particulars -->

                <!-- Start Residential Address -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Residential Address</h4>
                            <div class="search-box">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label>House No</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtHouseNo" runat="server" CssClass="form-control" placeholder="House No"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Road/Street</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtRoadStreet" runat="server" CssClass="form-control" placeholder="Road/Street"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Locality</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtLocality" runat="server" CssClass="form-control" placeholder="Locality"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label>P.S/P.O</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtPSPO" runat="server" CssClass="form-control" placeholder="P.S/P.O"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Dictrict</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtDictrict" runat="server" CssClass="form-control" placeholder="Dictrict"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Pin Code</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" placeholder="Pin Code"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>State</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Country</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" placeholder="Country"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Residential Address -->

                <!-- Start Permanent Address -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Permanent Address</h4>
                            <div class="search-box">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label>Same As Residential</label>                                       
                                    </div>
                                    <div class="col-md-1">
                                         <input type="checkbox" id="check" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <label>House No</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtPHouseNo" runat="server" CssClass="form-control" placeholder="House No"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Road/Street</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtPRoadStreet" runat="server" CssClass="form-control" placeholder="Road/Street"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Locality</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtPLocality" runat="server" CssClass="form-control" placeholder="Locality"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label>P.S/P.O</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtPPSPO" runat="server" CssClass="form-control" placeholder="P.S/P.O"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Dictrict</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtPDictrict" runat="server" CssClass="form-control" placeholder="Dictrict"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Pin Code</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtPPincode" runat="server" CssClass="form-control" placeholder="Pin Code"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>State</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtPState" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Country</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtPCountry" runat="server" CssClass="form-control" placeholder="Country"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Permanent Address -->

                <!-- Start Father Details -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Father Details</h4>
                            <div class="search-box">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label>Father Name</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Aadhar No Of Father</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtAadharNoOfFather" runat="server" CssClass="form-control" placeholder="Aadhar No Of Father"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Is Father Alumni</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:DropDownList ID="ddIsFatherAlumni" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="---Select Is Father Alumni---" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                        </asp:DropDownList>                                      
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3" style="width: 18%;">
                                        <label>Educational Qualification</label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtEducationalQualification" runat="server" CssClass="form-control" placeholder="Educational Qualification"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-3">
                                        <label>Father Annual Income/Total Income</label>
                                    </div>
                                    <div class="col-sm-3">
                                        <asp:TextBox ID="txtFatherAnnual" runat="server" CssClass="form-control" placeholder="Father Annual Income/Total Income"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Occupation</label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:DropDownList ID="ddOccupation" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="---Select Occupation---" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="BusinessMan" Value="BusinessMan"></asp:ListItem>
                                            <asp:ListItem Text="Govt Service" Value="Govt Service"></asp:ListItem>
                                            <asp:ListItem Text="Private Job" Value="Private Job"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Father Address -->

                <!-- Start Mother Details -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Mother Details</h4>
                            <div class="search-box">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label>Mother Name</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtMotherName" runat="server" CssClass="form-control" placeholder="Mother Name"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Aadhar No Of Mother</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtAadharNoMother" runat="server" CssClass="form-control" placeholder="Aadhar No Of Mother"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Is Mother Alumni</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:DropDownList ID="ddIsMotherAlumni" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="---Select Is Mother Alumni---" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3" style="width: 18%;">
                                        <label>Educational Qualification</label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtMotherEducationalQualification" runat="server" CssClass="form-control" placeholder="Educational Qualification"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-3">
                                        <label>Mother Annual Income/Total Income</label>
                                    </div>
                                    <div class="col-sm-3">
                                        <asp:TextBox ID="txtMotherAnnual" runat="server" CssClass="form-control" placeholder="Mother Annual Income/Total Income"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>Occupation</label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:DropDownList ID="ddMotherOccupation" runat="server" CssClass="form-control">
                                           <asp:ListItem Text="---Select Occupation---" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="House Wife" Value="House Wife"></asp:ListItem>
                                            <asp:ListItem Text="BusinessMan" Value="BusinessMan"></asp:ListItem>
                                            <asp:ListItem Text="Govt Service" Value="Govt Service"></asp:ListItem>
                                            <asp:ListItem Text="Private Job" Value="Private Job"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Mother Address -->

                <!-- Start Sibling's Details -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Sibling's Details</h4>
                            <div class="search-box">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label>No. Of Boys</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtNoOfBoys" runat="server" CssClass="form-control" placeholder="No. Of Boys"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">
                                        <label>No. Of Girls</label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox ID="txtNoOfGirls" runat="server" CssClass="form-control" placeholder="No. Of Girls"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>Total No. Of Child(Inclusive Of Applicant)</label>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtTotalNoOfChild" runat="server" CssClass="form-control" placeholder="Total No. Of Child(Inclusive Of Applicant)"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Sibling's Details -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Is There Any Sibling Currently Studying In This School</h4>
                            <asp:DropDownList ID="ddSiblingCurrentlyStudying" runat="server" CssClass="form-control">
                                <asp:ListItem Text="---Select---" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                <asp:ListItem Text="No" Value="No"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                  <div class="row">
                    <div class="col-md-12">
                        <div class="contact-form">
                            <h4>Is Transport Required</h4>
                            <asp:DropDownList ID="ddIsTransportRequired" runat="server" CssClass="form-control">
                                <asp:ListItem Text="---Select---" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                <asp:ListItem Text="No" Value="No"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <!-- Start Button -->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p style="padding: 10px;">
                            <asp:Button ID="btn_send" CssClass="btn btn-success" Text="Apply Now" runat="server" OnClick="btn_send_Click" />
                        </p>
                    </div>
                </div>
                <!-- End Button -->
            </div>
        </div>
    </form>
</body>   
</html>
