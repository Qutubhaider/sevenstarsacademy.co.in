using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
public partial class control_testimonial : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StringBuilder sb = new StringBuilder();
            string query = "select first_name,testimonial,city,designation from customer.testimonial";
            DataSet ds = Database.get_DataSet(query);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {               
                sb.AppendLine("<div class='tastimonial-item-area'>");
                sb.AppendLine("<div class='single-testimonial'>");
                sb.AppendLine("<p>" + dr["testimonial"].ToString() + " <i class='fa fa-quote-left'></i></p>");
                sb.AppendLine("</div>");
                sb.AppendLine("<div class='testimonial-author'>");
                //sb.AppendLine("<img src='assets/img/testimonial-img.png' alt=''>");
                sb.AppendLine("<h4>" + dr["first_name"].ToString() + " <span>" + dr["designation"].ToString() + " </span></h4>");
                sb.AppendLine("</div></div>");
            }

            testimonial_list.InnerHtml = sb.ToString();
        }
    }
}