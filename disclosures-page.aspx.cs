using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Text.RegularExpressions;
public partial class disclosures_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                string query1 = "SELECT PJ_ID,TITLE,INTRO,DESCRIPTION,FILE_URL,CREATION_DATE FROM [Admin].[projects] where pj_id='" + Request.QueryString["gid"].ToString() + "' ORDER BY ORDER_NUMBER ASC";
                DataSet ds1 = Database.get_DataSet(query1);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    txt_gallery_title.InnerText = ds1.Tables[0].Rows[0]["TITLE"].ToString();
                    txt_intro.InnerHtml = ds1.Tables[0].Rows[0]["INTRO"].ToString();
                    txt_details.InnerHtml = ds1.Tables[0].Rows[0]["DESCRIPTION"].ToString();
                }
                string query = "select TITLE,DESCRIPTION,THUMB,BIG FROM  admin.galleryset WHERE GALLERYID IN(select galleryid from admin.gallery where productid='" + Request.QueryString["gid"].ToString() + "')";
                DataSet ds = Database.get_DataSet(query);
                StringBuilder sb = new StringBuilder();
                string imgurl = "http://cms.sevenstarsacademy.co.in/upload/image/thumb/";
                string imgurl1 = "http://cms.sevenstarsacademy.co.in/upload/image/big/";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    sb.AppendLine("<div class='col-md-3 col-sm-6'>");
                    sb.AppendLine("<div class='blog-item-box'>");
                    sb.AppendLine("<div class='blog-img'>");
                    string img = dr["THUMB"].ToString();
                    sb.AppendLine("<a href='#' rel='lightbox'><img class='fancybox' data-big='" + imgurl1.ToString() + "" + img.ToString() + "' title='" + dr["TITLE"].ToString() + "' style='border: 1px solid #ccc; padding: 2px; height: 150px !important; width:400px;' src='" + imgurl.ToString() + "" + img.ToString() + "' alt=''/></a></div>");
                    sb.AppendLine("<div class='text-box' style='padding:10px 18px;'>");
                    sb.AppendLine("<h4>" + dr["DESCRIPTION"].ToString() + "</h4></a></div> ");
                    sb.AppendLine("</div></div>");
                }
                Gallerylist.InnerHtml = sb.ToString();
            }
        }
        catch (Exception ex)
        {

        }
    }
}