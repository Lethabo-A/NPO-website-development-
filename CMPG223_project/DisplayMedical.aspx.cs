using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace requestReports
{
    public partial class DisplayMedical : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string patientName = Request.QueryString["name"];

            if (!IsPostBack)
            {
                LoadDisplayMedical();
            }
            
            
        }
      
        private void LoadDisplayMedical()
        {
            //connecting the database
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["MedicalReports"].ConnectionString;
            string query = "SELECT * FROM Medical WHERE 1 = 1"; //base query

            string patientName = Session["PatientName"] as string;
            string patientNumber = Session["PatientNumber"] as string;

            if (!string.IsNullOrEmpty(patientName))
            {
                query += " AND(FirstName LIKE '%' + @PatientName + '%' OR LastName LIKE '%' + @PatientName + '%')";
            }
            if (!string.IsNullOrEmpty(patientNumber))
            {
                query += "And patientNumber = @patientNumber";
            }

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlCommand command = new SqlCommand(query, conn);

                    if(!string.IsNullOrEmpty(patientName))
                    {
                        command.Parameters.AddWithValue("@PatientName", patientName);
                    }
                    if(!string.IsNullOrEmpty(patientNumber))
                    {
                        command.Parameters.AddWithValue("@PatientNumber", patientNumber);
                    }

                    conn.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                    conn.Close();
                }
            }
            catch(SqlException sqlEx)
            {
                messageData.Text = "Database error: " + sqlEx.Message;
            }
            catch(Exception ex)
            {
                messageData.Text = "An error has occured: " + ex.Message;
            }
        }

        protected void BackBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("requestMedical.aspx");
        }
    }
}