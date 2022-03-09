using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
public partial class faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            get_faculty_list();
        }
    }

    public void get_faculty_list()
    {
        try
        {
            string query = "SELECT A_ID,NAME,DESIGNATION,IMG_URL,QUALIFICATION,SUBJECT FROM [Admin].[faculty] WHERE STAFFCATEGORY='1' ORDER BY ORDER_NUMBER ASC";
            DataSet ds = Database.get_DataSet(query);
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<div class='col-md-12'>");
            sb.AppendLine("<h2 class='section-title'>Teaching Staff Details</h2></div>");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string imgurl = "http://cms.sevenstarsacademy.co.in";
                string img = dr["IMG_URL"].ToString();
                img = img.Replace("..", "");
                sb.AppendLine("<div class='col-md-2 col-sm-6'>");
                sb.AppendLine("<div class='single-lecturer-item'>");
                sb.AppendLine("<div class='single-lecturer-img'>");
                sb.AppendLine("<img style='height: 211px;' src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''>");
                sb.AppendLine("<div class='lecturer-overlay'>");
                //sb.AppendLine("<div class='lecturer-socila-profile'>");
                //sb.AppendLine("<a href='#'><i class='fa fa-facebook'></i></a>");
                //sb.AppendLine("<a href='#'><i class='fa fa-instagram'></i></a>");
                //sb.AppendLine("<a href='#'><i class='fa fa-youtube'></i></a>");
                //sb.AppendLine("<a href='#'><i class='fa fa-google-plus'></i></a>");
                //sb.AppendLine("</div>");
                sb.AppendLine("<p>" + dr["QUALIFICATION"].ToString() + " </p>");
                sb.AppendLine("</div>");
                sb.AppendLine("</div>");
                sb.AppendLine("<div class='lecturer-desc'>");
                sb.AppendLine("<h4><a style='color: white; font-size: 11px;' href='facultydt.aspx?fid=" + dr["A_ID"].ToString() + "'>" + dr["NAME"].ToString() + " <span>" + dr["DESIGNATION"].ToString() + " </span></a></h4>");
                sb.AppendLine("</div></div></div>");
            }

            query = "SELECT A_ID,NAME,DESIGNATION,IMG_URL,QUALIFICATION,SUBJECT FROM [Admin].[faculty] WHERE STAFFCATEGORY='0' ORDER BY ORDER_NUMBER ASC";
            ds = Database.get_DataSet(query);
            StringBuilder sb1 = new StringBuilder();
            sb1.AppendLine("<div class='col-md-12'>");
            sb1.AppendLine("<h2 class='section-title'>Non- Teaching Staff Details</h2></div>");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string imgurl = "http://cms.sevenstarsacademy.co.in";
                string img = dr["IMG_URL"].ToString();
                img = img.Replace("..", "");
                sb1.AppendLine("<div class='col-md-2 col-sm-6'>");
                sb1.AppendLine("<div class='single-lecturer-item'>");
                sb1.AppendLine("<div class='single-lecturer-img'>");
                sb1.AppendLine("<img src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''>");
                sb1.AppendLine("<div class='lecturer-overlay'>");
                sb1.AppendLine("<p>" + dr["QUALIFICATION"].ToString() + " </p>");
                sb1.AppendLine("</div>");
                sb1.AppendLine("</div>");
                sb1.AppendLine("<div class='lecturer-desc'>");
                sb1.AppendLine("<h4><a style='color: white;' href='facultydt.aspx?fid=" + dr["A_ID"].ToString() + "'>" + dr["NAME"].ToString() + " <span>" + dr["DESIGNATION"].ToString() + " </span></a></h4>");
                sb1.AppendLine("</div></div></div>");
            }

            query = "SELECT A_ID,NAME,DESIGNATION,IMG_URL,QUALIFICATION,SUBJECT FROM [Admin].[faculty] WHERE STAFFCATEGORY='2' ORDER BY ORDER_NUMBER ASC";
            ds = Database.get_DataSet(query);
            StringBuilder sb2 = new StringBuilder();
            sb1.AppendLine("<div class='col-md-12'>");
            sb1.AppendLine("<h2 class='section-title'>Academic</h2></div>");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string imgurl = "http://cms.sevenstarsacademy.co.in";
                string img = dr["IMG_URL"].ToString();
                img = img.Replace("..", "");
                sb2.AppendLine("<div class='col-md-2 col-sm-6'>");
                sb2.AppendLine("<div class='single-lecturer-item'>");
                sb2.AppendLine("<div class='single-lecturer-img'>");
                sb2.AppendLine("<img src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''>");
                sb2.AppendLine("<div class='lecturer-overlay'>");
                sb2.AppendLine("<p>" + dr["QUALIFICATION"].ToString() + " </p>");
                sb2.AppendLine("</div>");
                sb2.AppendLine("</div>");
                sb2.AppendLine("<div class='lecturer-desc'>");
                sb2.AppendLine("<h4><a style='color: white;' href='facultydt.aspx?fid=" + dr["A_ID"].ToString() + "'>" + dr["NAME"].ToString() + " <span>" + dr["DESIGNATION"].ToString() + " </span></a></h4>");
                sb2.AppendLine("</div></div></div>");
            }

            query = "SELECT A_ID,NAME,DESIGNATION,IMG_URL,QUALIFICATION,SUBJECT FROM [Admin].[faculty] WHERE STAFFCATEGORY='3' ORDER BY ORDER_NUMBER ASC";
            ds = Database.get_DataSet(query);
            StringBuilder sb3 = new StringBuilder();
            sb1.AppendLine("<div class='col-md-12'>");
            sb1.AppendLine("<h2 class='section-title'>IT Department</h2></div>");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string imgurl = "http://cms.sevenstarsacademy.co.in";
                string img = dr["IMG_URL"].ToString();
                img = img.Replace("..", "");
                sb3.AppendLine("<div class='col-md-2 col-sm-6'>");
                sb3.AppendLine("<div class='single-lecturer-item'>");
                sb3.AppendLine("<div class='single-lecturer-img'>");
                sb3.AppendLine("<img src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''>");
                sb3.AppendLine("<div class='lecturer-overlay'>");
                sb3.AppendLine("<p>" + dr["QUALIFICATION"].ToString() + " </p>");
                sb3.AppendLine("</div>");
                sb3.AppendLine("</div>");
                sb3.AppendLine("<div class='lecturer-desc'>");
                sb3.AppendLine("<h4><a style='color: white;' href='facultydt.aspx?fid=" + dr["A_ID"].ToString() + "'>" + dr["NAME"].ToString() + " <span>" + dr["DESIGNATION"].ToString() + " </span></a></h4>");
                sb3.AppendLine("</div></div></div>");
            }

            faculty_list.InnerHtml = sb.ToString() + "<div style='clear:both;'></div>" + sb1.ToString()
                + "<div style='clear:both;'></div>" + sb2 + "<div style='clear:both;'></div>" + sb3;
        }
        catch(Exception ex)
        {

        }
    }
}