using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eventdt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["eid"] != null)
            {
                string query = "SELECT PJ_ID,TITLE,INTRO,DESCRIPTION,FILE_URL,CREATION_DATE FROM  [Admin].[projects] WHERE PJ_ID='" + Request.QueryString["eid"].ToString() + "'";
                DataSet ds = Database.get_DataSet(query);
                string imgurl = "http://cms.sevenstarsacademy.co.in";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    string img = dr["FILE_URL"].ToString();
                    img = img.Replace("..", "");
                    DateTime dts = Convert.ToDateTime(dr["CREATION_DATE"]);
                    txt_news_date.InnerText = dts.ToString("MMM-dd-yyyy").ToString();
                    txt_news_details.InnerHtml = dr["DESCRIPTION"].ToString();
                    txt_news_title.InnerText = dr["TITLE"].ToString();
                    txt_style.InnerHtml = "<style type='text/css'>.event-bg-1{background-image: url(" + imgurl.ToString() + "" + img.ToString() + ");}</style>";
                }
            }
        }
        catch (Exception ex)
        {

        }

    }
}