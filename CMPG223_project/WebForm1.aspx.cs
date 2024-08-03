using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;

namespace CMPG223_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable dt = new DataTable();
        public string usernum, password, sqlcommand;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                connection = new SqlConnection(connectionString);
                connection.Open();
                connection.Close();
            }
            catch (SqlException ex)
            {
                //shows popup if the database doesnt connect and gives the reason for the failed connection 
                string script = $"alert('Failed to connect to the database: {ex.Message.Replace("'", "\\'")}');";
                ClientScript.RegisterStartupScript(this.GetType(), "DatabaseConnectionError", script, true);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userNumber = txtUserNumber.Text.Trim();
            string password = txtPassword.Text.Trim();
            string sqlcommand;

            //not done still working on this. code is supposed to check the database for login details

            try
            {
                SqlConnection connection = new SqlConnection(connectionString);
                sqlcommand = @"SELECT * FROM Staff where StaffNumber ='" + txtUserNumber.Text + "' AND password = '" + txtPassword.Text + "'";
                adapter = new SqlDataAdapter(sqlcommand, connection);
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    usernum = txtUserNumber.Text;
                    password = txtPassword.Text;

                    //if user details are correct go to next page up in the name of the next page in the inverted commas 
                    Response.Redirect("");
                    password = "";
                    userNumber = "";
                }
                else
                {
                    string script = "alert('Invalid user number or password. Please try again.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "LoginError", script, true);
                    txtUserNumber.Text = "";
                    txtPassword.Text = "";
                    txtUserNumber.Focus();

                }




            }
            catch (SqlException ex)
            {
                
            }
        }
    }
}
