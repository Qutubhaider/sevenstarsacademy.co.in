using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newsdt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["nid"]!=null)
            {
                string query = "SELECT NEWSID,NEWSTITLE,NEWS,DATE,IMGPATH FROM [customer].[newsevent] WHERE NEWSID='" + Request.QueryString["nid"].ToString() + "'";
                DataSet ds = Database.get_DataSet(query);
                string imgurl = "http://cms.sevenstarsacademy.co.in";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {                   
                    string img = dr["IMGPATH"].ToString();
                    img = img.Replace("..", "");                  
                    DateTime dts = Convert.ToDateTime(dr["DATE"]);
                    txt_news_date.InnerText = dts.ToString("MMM-dd-yyyy").ToString();
                    txt_news_details.InnerHtml = dr["NEWS"].ToString();
                    txt_news_title.InnerText = dr["NEWSTITLE"].ToString();
                    txt_style.InnerHtml = "<style type='text/css'>.event-bg-1{background-image: url(" + imgurl.ToString() + "" + img.ToString() + ");}</style>";
                }
            }
        }
        catch (Exception ex)
        {

        }
    }
}