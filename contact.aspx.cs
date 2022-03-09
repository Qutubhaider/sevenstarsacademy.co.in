using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // emailid : info@sevenstarsacademy.co.in
        // password : Ranchi@123
    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        try
        {
            if (txt_name.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Name')", true);
            }
            else if (txt_phone.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Phone')", true);
            }
            else if (txt_email.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Email')", true);
            }
            else if (txt_messages.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Message')", true);
            }
            else
            {
                string mess = txt_messages.Text;
                mess = mess.Replace('`', ' ');
                string query = "INSERT INTO [customer].[GeneralContact_Info](FIRST_NAME,EMAIL,MOBILE,QUERY,contact_type) VALUES ('" + txt_name.Text
                    + "','" + txt_email.Text + "','" + txt_phone.Text + "','" + txt_messages.Text + "','Contact')";
                string res = Database.Execute(query);
                if (res == "1")
                {
                    string Email_Body = "";
                    string path = "~/EmailTemplate/userlist.html";
                    Email_Body = Function.ReadMailBody(path);
                    Email_Body = Email_Body.Replace("##Name##", txt_name.Text);
                    Email_Body = Email_Body.Replace("##Mobile##", txt_phone.Text);
                    Email_Body = Email_Body.Replace("##Email##", txt_email.Text);
                    Email_Body = Email_Body.Replace("##Message##", txt_messages.Text);
                    SendEmail(Email_Body, "", "info@sevenstarsacademy.co.in");
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank You For Contacting Us! We Will Revert You Soon.')", true);
                    txt_email.Text = "";
                    txt_messages.Text = "";
                    txt_name.Text = "";
                    txt_phone.Text = "";
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please try again')", true);
                }
            }
        }
        catch (Exception ex)
        {

        }
    }

    public void SendEmail(string emailbody, string test, string emailrp)
    {
        //--- Mail code start here ----//

        MailMessage mail = new MailMessage();
        SmtpClient smtp = new SmtpClient();

        string eid = "info@sevenstarsacademy.co.in";
        string epass = "Ranchi@123";

        smtp.Host = "mail.sevenstarsacademy.co.in";
        smtp.Port = 25;
        smtp.UseDefaultCredentials = true;
        //smtp.EnableSsl = true;        
        smtp.Credentials = new NetworkCredential(eid.ToString(), epass.ToString());
        mail.From = new MailAddress(eid.ToString(), "Seven Stars Academy");
        mail.To.Add(emailrp.ToString());
        mail.Subject = "Thank You for Contact";
        mail.IsBodyHtml = true;
        mail.Body = emailbody;

        try
        {
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            //Response.Write(ex);
        }
    }
}