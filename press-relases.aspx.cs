using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Text.RegularExpressions;
public partial class press_relases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                string query = "SELECT PJ_ID,TITLE,INTRO,DESCRIPTION,FILE_URL,CREATION_DATE FROM [Admin].[projects] where category='PRESS' ORDER BY ORDER_NUMBER ASC";
                DataSet ds = Database.get_DataSet(query);
                StringBuilder sb = new StringBuilder();
                string imgurl = "http://admin.sevenstarsacademy.co.in";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    sb.AppendLine("<div class='col-md-4 col-sm-6'>");
                    sb.AppendLine("<div class='blog-item-box'>");
                    sb.AppendLine("<div class='blog-img'>");
                    string img = dr["FILE_URL"].ToString();
                    img = img.Replace("..", "");
                    sb.AppendLine("<a href='gallery-pages.aspx?gid=" + dr["PJ_ID"].ToString() + "'><img style='height:250px; width:400px;' src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''/>");
                    DateTime dts = Convert.ToDateTime(dr["CREATION_DATE"]);
                    sb.AppendLine("<div class='blog-date'>" + dts.ToString("dd-MMM-yyyy") + "</div></div>");
                    sb.AppendLine("<div class='text-box'>");
                    sb.AppendLine("<h4>" + dr["TITLE"].ToString() + "</h4></a>");
                    sb.AppendLine("</div></div></div>");
                }
                Presslist.InnerHtml = sb.ToString();
            }
        }
        catch (Exception ex)
        {

        }
    }
}