using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
public partial class control_news : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                string query = "SELECT TOP 3 NEWSID,NEWSTITLE,SUBSTRING(NEWS,1,200)AS NEWS,DATE,IMGPATH FROM [customer].[newsevent] where newstype='0'";
                DataSet ds = Database.get_DataSet(query);
                StringBuilder sb = new StringBuilder();
                string imgurl = "https://admin.sevenstarsacademy.co.in";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    sb.AppendLine("<div class='col-md-4 col-sm-6'>");
                    sb.AppendLine("<div class='blog-item-box'>");
                    sb.AppendLine("<div class='blog-img'>");
                    string img = dr["IMGPATH"].ToString();
                    img = img.Replace("..", "");
                    sb.AppendLine("<img style='height:250px; width:400px;' src='" + imgurl.ToString()+""+ img.ToString()+"' alt=''>");
                    DateTime dts = Convert.ToDateTime(dr["DATE"]);
                    sb.AppendLine("<div class='blog-date'>"+dts.ToString("dd-MMM-yyyy")+"</div></div>");
                    sb.AppendLine("<div class='text-box'>");
                    sb.AppendLine("<h4>" + dr["NEWSTITLE"].ToString() + "</h4>");
                    sb.AppendLine("<p>"+dr["NEWS"].ToString()+"<a href='newsdt.aspx?nid="+dr["NEWSID"].ToString()+"' class='read-more-btn'>Contiune Reading...</a> </p>");
                    sb.AppendLine("</div></div></div>");
                }
                newslist.InnerHtml = sb.ToString();
            }
        }
        catch(Exception ex)
        {

        }
    }
}