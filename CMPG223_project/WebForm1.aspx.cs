using System;
using System.Web.UI;
using System.Data.SqlClient;

namespace CMPG223_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //the |dataDirectory| in the connection string is going to point to a file called appdata keep that in mind when you want to use the connection string
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    connection.Close();
                }
            }
            catch (SqlException ex)
            {
                //if the database doesnt connect a pop up is going to show explaining what the issue is
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Database connection failed: {ex.Message}');", true);
            }
            string usernumber = txtUserNumber.Text;
            string password = txtPassord.Text;
        }
    }
}
