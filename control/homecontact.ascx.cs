using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class control_homecontact : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        try
        {
            if(txt_name.Text=="")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Name')", true);
            }
            else if(txt_phone.Text=="")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Phone')", true);
            }
            else if(txt_email.Text=="")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Email')", true);
            }
            else if(txt_messages.Text=="")
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
                if(res=="1")
                {
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
        catch(Exception ex)
        {

        }
    }
}