using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apply_online : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        if(txt_firstname.Text=="")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "Hello", "alert('Please enter first name.');", true);
        }
        else if(txt_lastname.Text=="")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "Hello", "alert('Please enter last name.');", true);
        }
        else if(txt_date_of_birth.Text=="")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "Hello", "alert('Please enter date of birth.');", true);
        }
        else if(dd_gender.SelectedItem.Value=="0")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "Hello", "alert('Please select gender.');", true);
        }
        else if(txt_blood_group.Text=="")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "Hello", "alert('Please enter blood group.');", true);
        }
        else if(txt_Religion.Text=="")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "Hello", "alert('Please enter religion.');", true);
        }
        
        else
        {
            //string query = "INSERT INTO ADMIN.APPLYONLINE (FIRSTNAME,LASTNAME,DOB,GENDER,BLOODGROUP,RELIGION,POB,NATIONALITY,PADDRESS,CITY,PINCODE,COUNTRY,MOBILE) VALUES ('" + txt_firstname.Text
            //    + "','" + txt_lastname.Text + "','" + txt_date_of_birth.Text + "','" + dd_gender.SelectedItem.Text + "','" + txt_blood_group.Text
            //    + "','" + txt_Religion.Text + "','" + txt_Place_Of_Birth.Text + "','" + txt_Nationality.Text + "','" + txt_paddress.Text + "','" + txt_city.Text + "','" + txt_pincode.Text
            //    + "','" + txt_country.Text + "','" + txt_mobile.Text + "')";
            //string res = Database.Execute(query);
            //if(res=="1")
            //{
            //    Page.ClientScript.RegisterStartupScript(GetType(), "Hello", "alert('Succussfull Apply Online Application for Registration.');", true);
            //    txt_blood_group.Text = "";

            //    dd_gender.SelectedIndex = 0;
            //}


            string Email_Body = "";
            string path = "~/EmailTemplate/student-apply-online.html";
            Email_Body = Function.ReadMailBody(path);
            Email_Body = Email_Body.Replace("##FirstName##", txt_firstname.Text);
            Email_Body = Email_Body.Replace("##MiddleName##", txtMiddleName.Text);
            Email_Body = Email_Body.Replace("##LastName##", txt_lastname.Text);
            Email_Body = Email_Body.Replace("##DateOfBirth##", txt_date_of_birth.Text);
            Email_Body = Email_Body.Replace("##BirthCertificateNo##", txtBirthCertificateNo.Text);
            Email_Body = Email_Body.Replace("##Gender##", dd_gender.Text);
            Email_Body = Email_Body.Replace("##BloodGroup##", txt_blood_group.Text);
            Email_Body = Email_Body.Replace("##Religion##", txt_Religion.Text);
            Email_Body = Email_Body.Replace("##StudentCaste##", txtStudentCaste.Text);
            Email_Body = Email_Body.Replace("##Category##", txtCategory.Text);
            Email_Body = Email_Body.Replace("##Nationality##", txt_Nationality.Text);
            Email_Body = Email_Body.Replace("##MotherTongue##", txtMotherTongue.Text);
            Email_Body = Email_Body.Replace("##AadharNo##", txtAadharNo.Text);

            Email_Body = Email_Body.Replace("##HouseNo##", txtHouseNo.Text);
            Email_Body = Email_Body.Replace("##RoadStreet##", txtRoadStreet.Text);
            Email_Body = Email_Body.Replace("##Locality##", txtLocality.Text);
            Email_Body = Email_Body.Replace("##PSPO##", txtPSPO.Text);
            Email_Body = Email_Body.Replace("##Dictrict##", txtDictrict.Text);
            Email_Body = Email_Body.Replace("##PinCode##", txtPinCode.Text);
            Email_Body = Email_Body.Replace("##State##", txtState.Text);
            Email_Body = Email_Body.Replace("##Country##", txtCountry.Text);

            Email_Body = Email_Body.Replace("##PHouseNo##", txtPHouseNo.Text);
            Email_Body = Email_Body.Replace("##PRoadStreet##", txtPRoadStreet.Text);
            Email_Body = Email_Body.Replace("##PLocality##", txtPLocality.Text);
            Email_Body = Email_Body.Replace("##PPSPO##", txtPPSPO.Text);
            Email_Body = Email_Body.Replace("##PDictrict##", txtPDictrict.Text);
            Email_Body = Email_Body.Replace("##PPincode##", txtPPincode.Text);
            Email_Body = Email_Body.Replace("##PState##", txtPState.Text);
            Email_Body = Email_Body.Replace("##PCountry##", txtPCountry.Text);

            Email_Body = Email_Body.Replace("##FatherName##", txtFatherName.Text);
            Email_Body = Email_Body.Replace("##AadharNoOfFather##", txtAadharNoOfFather.Text);
            Email_Body = Email_Body.Replace("##IsFatherAlumni##", ddIsFatherAlumni.Text);
            Email_Body = Email_Body.Replace("##EducationalQualification##", txtEducationalQualification.Text);
            Email_Body = Email_Body.Replace("##FatherAnnual##", txtFatherAnnual.Text);
            Email_Body = Email_Body.Replace("##Occupation##", ddOccupation.Text);

            Email_Body = Email_Body.Replace("##MotherName##", txtMotherAnnual.Text);
            Email_Body = Email_Body.Replace("##AadharNoMother##", txtAadharNoMother.Text);
            Email_Body = Email_Body.Replace("##IsMotherAlumni##", ddIsMotherAlumni.Text);
            Email_Body = Email_Body.Replace("##MotherEducationalQualification##", txtMotherEducationalQualification.Text);
            Email_Body = Email_Body.Replace("##MotherAnnual##", txtMotherAnnual.Text);
            Email_Body = Email_Body.Replace("##MotherOccupation##", ddMotherOccupation.Text);

            Email_Body = Email_Body.Replace("##NoOfBoys##", txtNoOfBoys.Text);
            Email_Body = Email_Body.Replace("##NoOfGirls##", txtNoOfGirls.Text);
            Email_Body = Email_Body.Replace("##TotalNoOfChild##", txtTotalNoOfChild.Text);
            Email_Body = Email_Body.Replace("##SiblingCurrentlyStudying##", ddSiblingCurrentlyStudying.Text);
            Email_Body = Email_Body.Replace("##IsTransportRequired##", ddIsTransportRequired.Text);
            string studentName = txt_firstname.Text + " " + txtMiddleName.Text + " " + txt_lastname.Text;
            SendEmail(Email_Body, "", "sevenstarsacademy0011@gmail.com", studentName);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank You For Online Apply ! We Will Revert You Soon.')", true);
            //Response.Redirect("apply-online.aspx");
            txtAadharNo.Text = "";
            txtAadharNoMother.Text = "";
            txtAadharNoOfFather.Text = "";
            txtBirthCertificateNo.Text = "";
            txtCategory.Text = "";
            txtCountry.Text = "";
            txtDictrict.Text = "";
            txtEducationalQualification.Text = "";
            txtFatherAnnual.Text = "";
            txtFatherName.Text = "";
            txtHouseNo.Text = "";
            txtLocality.Text = "";
            txtMiddleName.Text = "";
            txtMotherAnnual.Text = "";
            txtMotherEducationalQualification.Text = "";
            txtMotherName.Text = "";
            txtMotherTongue.Text = "";
            txtNoOfBoys.Text = "";
            txtNoOfGirls.Text = "";
                
        }
    }

    public void SendEmail(string emailbody, string test, string emailrp,string studentName)
    {
       
        string eid = ConfigurationManager.AppSettings["eid"].ToString();
        string epass = ConfigurationManager.AppSettings["epass"].ToString();
        
        try
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(eid);
            msg.To.Add(emailrp);
            msg.Subject = studentName+" Apply Online Application";
            msg.IsBodyHtml = true;
            msg.Body = emailbody;
            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = eid.ToString();
            ntwd.Password = epass.ToString();
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);

        }
        catch (Exception ex)
        {   
        }
    }
}