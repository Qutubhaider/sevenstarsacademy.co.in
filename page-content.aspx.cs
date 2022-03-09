using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page_content : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["cid"].ToString() == "3")
                Response.Redirect("about.aspx");
            else if (Request.QueryString["cid"].ToString() == "15")
                Response.Redirect("gallery.aspx");
            else if (Request.QueryString["cid"].ToString() == "7")
                Response.Redirect("faculty.aspx"); 
            else if (Request.QueryString["cid"].ToString() == "8")
                Response.Redirect("achievements.aspx");
            else if (Request.QueryString["cid"].ToString() == "19")
                Response.Redirect("contact.aspx");
            else if (Request.QueryString["cid"].ToString() == "11")
                Response.Redirect("apply-online.aspx");
            else if (Request.QueryString["cid"].ToString() == "17")
                Response.Redirect("download.aspx");
            else if (Request.QueryString["cid"].ToString() == "20")
                Response.Redirect("Student-Strength.aspx");
            else if (Request.QueryString["cid"].ToString() == "5")
                Response.Redirect("words-from-the-chairman.aspx");
            else if (Request.QueryString["cid"].ToString() == "6")
                Response.Redirect("words-from-the-principal.aspx");
            else if (Request.QueryString["cid"].ToString() == "22")
                Response.Redirect("fee-structure.aspx");
            else if (Request.QueryString["cid"].ToString() == "21")
                Response.Redirect("infrastructure.aspx");
            else if (Request.QueryString["cid"].ToString() == "10")
                Response.Redirect("mandatory-disclosure.aspx");
            else if (Request.QueryString["cid"].ToString() == "33")
                Response.Redirect("booklist.aspx");
            else
            {
                StringBuilder sb = new StringBuilder();
                string query = "select catid,title from dbo.[category] where catid='" + Request.QueryString["cid"].ToString() + "'" +
                    " select [PAGEID] ,[CATEGORYID] ,[CATEGORYNAME] ,[SUBCATEGORYID],[SUBCATEGORYNAME],[IMAGES],[PAGECONTENT],[STATUS]  from ADMIN.PAGECONTENT where [SUBCATEGORYID]='" + Request.QueryString["cid"].ToString() + "' ";
                DataSet ds_mcate = Database.get_DataSet(query);
                if (ds_mcate.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow dr_mcate in ds_mcate.Tables[0].Rows)
                    {
                        MainMenu.InnerText = dr_mcate["title"].ToString();
                        MainMenu1.InnerText = dr_mcate["title"].ToString();
                    }
                }
                if(ds_mcate.Tables[1].Rows.Count>0)
                {
                    StringBuilder sbPage = new StringBuilder();
                    if (ds_mcate.Tables[1].Rows[0]["IMAGES"].ToString() != string.Empty)
                    {
                        string imgurl = "http://cms.sevenstarsacademy.co.in";
                        string img = ds_mcate.Tables[1].Rows[0]["IMAGES"].ToString();
                        img = img.Replace("..", "");
                        sbPage.AppendLine("<img style='width: 100%; height: 253px;' src ='" + imgurl.ToString() + "" + img.ToString() + "' />");
                    }
                    sbPage.AppendLine(ds_mcate.Tables[1].Rows[0]["PAGECONTENT"].ToString());
                    PageContect.InnerHtml = sbPage.ToString();
                }
                else
                {
                    PageContect.InnerHtml = "No content found...";
                }               
            }
        }
        catch (Exception ex)
        {
        }
    }
}