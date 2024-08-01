using System;
using System.Web.UI;
using System.Data.SqlClient;

namespace CMPG223_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // Connection string using |DataDirectory| for relative path
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    
                }
            }
            catch (SqlException ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Database connection failed: {ex.Message}');", true);
            }
        }
    }
}
