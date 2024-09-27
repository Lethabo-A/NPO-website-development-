using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace requestReports
{
    public partial class requestMedical : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string patientName = nameTxt.Text.Trim();
            string patientNumber = numberTxt.Text.Trim();

            if (string.IsNullOrEmpty(patientName) && string.IsNullOrEmpty(patientNumber))
            {
                message1.Text = "Please enter a patient name or patient number";
                return;
            }

            Session["PatientName"] = patientName;
            Session["PatientNumber"] = patientNumber;

            Response.Redirect("DisplayMedical.aspx");
            

            
        }

        protected void AllpatientsBtn_Click(object sender, EventArgs e)
        {
            //clear the previous searches to view all
            Session["PatientName"] = null;
            Session["PatientNumber"] = null;

            Response.Redirect("Displaymedical.aspx");
        }
    }
}