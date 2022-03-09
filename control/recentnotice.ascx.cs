using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

public partial class control_recentnotice : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "SELECT TOP 5 NEWSID,SUBSTRING(NEWSTITLE,1,30)AS NEWSTITLE,IMGPATH,DATE FROM [customer].[newsevent] where newstype='1' ORDER BY ORDERNO ASC";
            DataSet ds = Database.get_DataSet(query);
            StringBuilder sb = new StringBuilder();
            string imgurl = "http://cms.sevenstarsacademy.co.in";
            sb.AppendLine("<h3 class='widget-title'>Recent Notice</h3>");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string img = dr["IMGPATH"].ToString();
                img = img.Replace("..", "");
                sb.AppendLine("<div class='recent-news'>");
                sb.AppendLine("<img style='width:80px; height:60px;' src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''>");

                sb.AppendLine("<p><a href='noticedt.aspx?nid=" + dr["NEWSID"].ToString().ToUpperInvariant() + "'>" + dr["NEWSTITLE"].ToString() + " </a></p>");
                DateTime dts = Convert.ToDateTime(dr["DATE"]);
                sb.AppendLine("<span>" + dts.ToString("MMM-dd-yyyy").ToString() + "</span></div>");
            }
            recent_news.InnerHtml = sb.ToString();
        }
    }
}