using System;
using System.Web.UI;
using System.Data.SqlClient;

namespace CMPG223_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userNumber = txtUserNumber.Text.Trim();
            string password = txtPassword.Text.Trim();
            

            try {
                SqlConnection connection = new SqlConnection(connectionString);
                //SQL login code here

                if (password == "password" && userNumber == "lethabo")
                {
                    //add name of next page in inverted commas
                    Response.Redirect("Financial_Page_Form.aspx");
                }
                else
                {
                    //ADD ERROR MESSAGE LBL AND CODE

                }

            }
            catch (SqlException ex)
            {
                
            }
        }
    }
}
