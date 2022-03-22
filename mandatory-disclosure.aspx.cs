using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mandatory_disclosure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                string query = "SELECT * FROM SchoolDetail SELECT * FROM FILES SELECT * FROM STAFF SELECT * FROM INFRASTRURE";
                DataSet ds = Database.get_DataSet(query);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtNameOfSchool.Text = ds.Tables[0].Rows[0]["SCHOOLNAME"].ToString();
                    txtAFFILIATION.Text = ds.Tables[0].Rows[0]["AFFILIATIONNO"].ToString();
                    txtSchoolCode.Text = ds.Tables[0].Rows[0]["SCHOOLCODE"].ToString();
                    txtAddress.Text = ds.Tables[0].Rows[0]["SCHOOLADDRESS"].ToString();
                    txtPRINCIPAL.Text = ds.Tables[0].Rows[0]["PRINCIPALNAME"].ToString();
                    txtSchoolEmail.Text = ds.Tables[0].Rows[0]["SCHOOLEMAIL"].ToString();
                    txtContact.Text = ds.Tables[0].Rows[0]["CONTACT"].ToString();
                }

                if (ds.Tables[1].Rows.Count > 0)
                {
                    if (ds.Tables[1].Rows[0]["File1"].ToString() != "")
                    {
                        File1.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File1"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File2"].ToString() != "")
                    {
                        File2.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File2"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File3"].ToString() != "")
                    {
                        File3.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File3"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File4"].ToString() != "")
                    {
                        File4.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File4"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File5"].ToString() != "")
                    {
                        File5.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File5"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File6"].ToString() != "")
                    {
                        File6.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File6"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File7"].ToString() != "")
                    {
                        File7.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File7"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File8"].ToString() != "")
                    {
                        File8.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File8"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File9"].ToString() != "")
                    {
                        File9.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File9"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File10"].ToString() != "")
                    {
                        File10.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File10"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File11"].ToString() != "")
                    {
                        File11.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File11"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File12"].ToString() != "")
                    {
                        File12.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File12"].ToString();
                    }
                    if (ds.Tables[1].Rows[0]["File13"].ToString() != "")
                    {
                        File13.NavigateUrl = "http://cms.sevenstarsacademy.co.in/upload/" + ds.Tables[1].Rows[0]["File13"].ToString();
                    }
                }

                if (ds.Tables[2].Rows.Count > 0)
                {
                    txtPRINCIPALNo.Text = ds.Tables[2].Rows[0]["PRINCIPAL"].ToString();
                    txtTotalTEACHERS.Text = ds.Tables[2].Rows[0]["TOTALNOOFTEACHERS"].ToString();
                    txtPDT.Text = ds.Tables[2].Rows[0]["PGT"].ToString();
                    txtTGT.Text = ds.Tables[2].Rows[0]["TGT"].ToString();
                    txtPRT.Text = ds.Tables[2].Rows[0]["PRT"].ToString();
                    txtTEACHERSSECTION.Text = ds.Tables[2].Rows[0]["TEACHERSSECTIONRATIO"].ToString();
                    txtSPECIALEDUCATION.Text = ds.Tables[2].Rows[0]["SPECIALEDUCATION"].ToString();
                    txtWELNESSTEACHERS.Text = ds.Tables[2].Rows[0]["COUNSELLOR"].ToString();
                }

                if (ds.Tables[3].Rows.Count > 0)
                {
                    txtCMAPUSAREA.Text = ds.Tables[3].Rows[0]["TOTALCMAPUSAREA"].ToString();
                    txtCLASSROOMS.Text = ds.Tables[3].Rows[0]["CLASSROOMSAREA"].ToString();
                    txtLABORATORIES.Text = ds.Tables[3].Rows[0]["LABORATORIESAREA"].ToString();
                    txtINTERNETFACILITY.Text = ds.Tables[3].Rows[0]["INTERNETFACILITY"].ToString();
                    txtGIRLSTOILETS.Text = ds.Tables[3].Rows[0]["NOOFGIRLSTOILETS"].ToString();
                    txtBOYSTOILETS.Text = ds.Tables[3].Rows[0]["NOOFBOYSTOILETS"].ToString();
                    txtYOUTUBEVIDEO.Text = ds.Tables[3].Rows[0]["VIDEOLINK"].ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}