using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

namespace CMPG223_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable dt = new DataTable();
        public string chosenLanguage;
        public string username, password, sqlcommand;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            username = txtUserNumber.Text;
            password = txtPassword.Text;

            try
            {
                // SQL login code here

                if (password == "password" && username == "lethabo")
                {
                    // Add name of next page in inverted commas
                    Response.Redirect("Financial_Page_Form.aspx");
                }
                else
                {
                    lblErrorMessage.Text = "incorrect password or user name try again";
                    txtPassword.Text = "";
                    txtUserNumber.Text = "";
                    txtUserNumber.Focus();
                }

            }
            catch (SqlException ex)
            {
                
            }
        }
    }
}
