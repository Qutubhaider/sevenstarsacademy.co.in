using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
public partial class control_slider : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "SELECT TITLE,DESCRIPTION,IMG_URL FROM  [admin].[home_slider] ORDER BY ORDER_NUMBER ASC";
            DataSet ds = Database.get_DataSet(query);
            StringBuilder sb = new StringBuilder();
            string htmlcss = "<style type='text/css'>";
            string imgurl = "http://cms.sevenstarsacademy.co.in";
            int ctr = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ctr++;
                string img = dr["IMG_URL"].ToString();
                img = img.Replace("..", "");
                htmlcss += ".slider-bg-" + ctr.ToString() + " { background-image: url(" + imgurl + "" + img.ToString() + ") !important;}";
                sb.AppendLine("<div class='slider-item slider-bg-" + ctr.ToString() + "'>");
                sb.AppendLine("<div class='slider-item-table'>");
                sb.AppendLine("<div class='slider-item-tablecell'>");
                sb.AppendLine("<div class='container'>");
                sb.AppendLine("<div class='row'>");
                sb.AppendLine("<div class='col-md-8 col-md-offset-4'>");
                sb.AppendLine("<div class='slider-text'>");
                sb.AppendLine("<h3>" + dr["TITLE"].ToString() + " </h3>");
                sb.AppendLine("<h1>" + dr["DESCRIPTION"].ToString() + " </h1>");
                //sb.AppendLine("<a href='about.aspx' class='study-plus-btn slide-btn'>Read more</a>");
                sb.AppendLine("</div></div></div></div></div></div></div>");
            }
            htmlcss += "</style>";
            slidercss.Text = htmlcss.ToString();
            slider.InnerHtml = sb.ToString();
        }
    }
}