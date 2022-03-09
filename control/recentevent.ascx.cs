using System;
using System.Collections.Generic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

public partial class control_recentevent : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "SELECT TOP 5 PJ_ID,TITLE,INTRO,DESCRIPTION,FILE_URL,CREATION_DATE FROM  [Admin].[projects] ORDER BY ORDER_NUMBER ASC";
            DataSet ds = Database.get_DataSet(query);
            StringBuilder sb = new StringBuilder();
            string imgurl = "https://admin.sevenstarsacademy.co.in";
            sb.AppendLine("<h3 class='widget-title'>Recent Event</h3>");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string img = dr["FILE_URL"].ToString();
                img = img.Replace("..", "");
                sb.AppendLine("<div class='recent-news'>");
                sb.AppendLine("<img style='width:80px; height:60px;' src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''>");

                sb.AppendLine("<p><a href='eventdt.aspx?eid=" + dr["PJ_ID"].ToString().ToUpperInvariant() + "'>" + dr["TITLE"].ToString() + " </a></p>");
                DateTime dts = Convert.ToDateTime(dr["CREATION_DATE"]);
                sb.AppendLine("<span>" + dts.ToString("MMM-dd-yyyy").ToString() + "</span></div>");
            }
            recent_news.InnerHtml = sb.ToString();
        }
    }
}