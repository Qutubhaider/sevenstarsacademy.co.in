using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

public partial class control_header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string query = "SELECT TOP 1 NEWSID,NEWSTITLE,IMGPATH,DATE FROM [customer].[newsevent] where newstype='1' ORDER BY ORDERNO ASC";
        DataSet ds = Database.get_DataSet(query);
        StringBuilder sb = new StringBuilder();
        
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            sb.AppendLine("<a style='color:white; font-size:19px!important; href ='newsdt.aspx?nid=" + dr["NEWSID"].ToString().ToUpperInvariant() + "'><marquee direction='left'>" + dr["NEWSTITLE"].ToString() + "</marquee> </a>");            
        }
        newlist.InnerHtml = sb.ToString();
        getMenu();
    }

    public void getMenu()
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            string query = "select catid,title from dbo.[category] where ParentID='1' ORDER BY [ORDER] ASC";
            DataSet ds_mcate = Database.get_DataSet(query);
            sb.AppendLine("<li class='homeactive'><a href='index.aspx'>home</a></li>");
            foreach (DataRow dr_mcate in ds_mcate.Tables[0].Rows)
            {    
                string query1 = "select catid,title from dbo.[category] where [ParentID]='" + dr_mcate["catid"].ToString() + "'";
                DataSet ds_scate = Database.get_DataSet(query1);
                if(ds_scate.Tables[0].Rows.Count>0)
                {
                    sb.AppendLine("<li>");
                    sb.AppendLine("<a href='page-content.aspx?cid=" + dr_mcate["catid"].ToString() + "'>" + dr_mcate["title"].ToString() + " <i class='fa fa-angle-down'></i></a>");
                    sb.AppendLine("<ul>");
                }
                else
                {
                    sb.AppendLine("<li>");
                    sb.AppendLine("<a href='page-content.aspx?cid=" + dr_mcate["catid"].ToString() + "'>" + dr_mcate["title"].ToString() + "</a>");
                    sb.AppendLine("<ul>");
                }
                foreach (DataRow dr_scate in ds_scate.Tables[0].Rows)
                {
                    sb.AppendLine("<li><a href='page-content.aspx?cid=" + dr_scate["catid"].ToString() + "'>" + dr_scate["title"].ToString() + " </a></li>");
                }
                sb.AppendLine("</ul>");
                sb.AppendLine("</li>");
            }
            MenuList.InnerHtml = sb.ToString();
        }
        catch (Exception ex)
        {

        }
    }
}