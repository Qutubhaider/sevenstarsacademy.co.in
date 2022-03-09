using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class career : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        try
        {


            if (txt_name.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Name')", true);
            }
            else if (txt_city.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter City')", true);
            }
            else if (txt_phone.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Phone')", true);
            }
            else if (txt_email.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Email')", true);
            }
            else if (!file1.HasFile)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "Hello", "alert('Please Select File');", true);
            }
            else
            {
                string fileName = Path.GetFileName(file1.PostedFile.FileName);
                file1.PostedFile.SaveAs(Server.MapPath("~/upload/") + fileName);
                string imgpath = file1.PostedFile.FileName.ToString();

                string query = "INSERT INTO [customer].[career]([name],[email],[mobile],[city],[resume],[creation_date]) VALUES ('" + txt_name.Text
                    + "','" + txt_email.Text + "','" + txt_phone.Text + "','" + txt_city.Text + "','" + imgpath + "','" + DateTime.Now.ToShortDateString() + "')";
                string res = Database.Execute(query);
                if (res == "1")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank You For Sending Your CV! We Will Revert You Soon.')", true);
                    txt_email.Text = "";

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


}