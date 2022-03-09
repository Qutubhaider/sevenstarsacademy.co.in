using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Text.RegularExpressions;
public partial class download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                string query = "select [a_id] ,[title],[pdf_url] from [admin].[download] order by [order_number] desc";
                DataSet ds = Database.get_DataSet(query);
                StringBuilder sb = new StringBuilder();
                string pdfurl = "http://cms.sevenstarsacademy.co.in";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    sb.AppendLine("<div class='col-md-4 col-sm-6'>");
                    sb.AppendLine("<div class='blog-item-box'>");
                    sb.AppendLine("<div class='blog-img'>");
                    sb.AppendLine("<a target='_blank' href='" + pdfurl + "/upload/" + dr["pdf_url"].ToString() + "'>");                   
                    sb.AppendLine("</div>");
                    sb.AppendLine("<div class='text-box'>");
                    sb.AppendLine("<i class='fa fa-download' style='font-size:30px;'></i><h4>" + dr["TITLE"].ToString() + "</h4></a>");
                    sb.AppendLine("</div></div></div>");
                }
                Downloadlist.InnerHtml = sb.ToString();
            }
        }
        catch (Exception ex)
        {

        }
    }
}