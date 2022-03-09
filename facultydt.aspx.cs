using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class facultydt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["fid"] != null)
            {
                string query = "SELECT A_ID,NAME,DESIGNATION,IMG_URL,QUALIFICATION,SUBJECT FROM [Admin].[faculty] WHERE A_ID='" + Request.QueryString["fid"].ToString() + "'";
                DataSet ds = Database.get_DataSet(query);
                string imgurl = "http://cms.sevenstarsacademy.co.in";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    string img = dr["IMG_URL"].ToString();
                    img = img.Replace("..", "");
                    txt_faculty_imgs.Src = imgurl.ToString() + "" + img.ToString();
                    txt_faculty_name.InnerHtml = dr["NAME"].ToString();
                    txt_faculty_desgination.InnerHtml = dr["DESIGNATION"].ToString();
                    txt_faculty_qualification.InnerHtml = dr["QUALIFICATION"].ToString();
                }
            }
        }
        catch (Exception ex)
        {

        }
    }
}