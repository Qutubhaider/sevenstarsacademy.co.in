using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
public partial class control_eventsection : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                string query = "SELECT TOP 3 PJ_ID,TITLE,SUBSTRING(INTRO,1,200)AS INTRO,FILE_URL,CREATION_DATE FROM [admin].projects WHERE FILE_TYPE='Event' ORDER BY ORDER_NUMBER ASC";
                DataSet ds = Database.get_DataSet(query);
                StringBuilder sb = new StringBuilder();
                string imgurl = "https://admin.sevenstarsacademy.co.in";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    sb.AppendLine("<div class='col-md-4 col-sm-6'>");
                    sb.AppendLine("<div class='blog-item-box'>");
                    sb.AppendLine("<div class='blog-img'>");
                    string img = dr["FILE_URL"].ToString();
                    img = img.Replace("..", "");
                    sb.AppendLine("<img src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''>");
                    DateTime dts = Convert.ToDateTime(dr["CREATION_DATE"]);
                    sb.AppendLine("<div class='blog-date'>" + dts.ToString("dd-MMM-yyyy") + "</div></div>");
                    sb.AppendLine("<div class='text-box'>");
                    sb.AppendLine("<h4>" + dr["TITLE"].ToString() + "</h4>");
                    sb.AppendLine("<p>" + dr["INTRO"].ToString() + "<a href='eventdt.aspx?eid=" + dr["PJ_ID"].ToString() + "' class='read-more-btn'>Contiune Reading...</a> </p>");
                    sb.AppendLine("</div></div></div>");
                }
                eventlist.InnerHtml = sb.ToString();
            }
        }
        catch (Exception ex)
        {

        }
    }
}