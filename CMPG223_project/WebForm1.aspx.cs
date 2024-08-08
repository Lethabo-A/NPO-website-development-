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

                connection.Open();
                SqlCommand command;
                SqlDataReader reader;
                String sql,database_password = "", database_username = "";
                //int database_username;
                sql = "select StaffNumber,password from Staff";
                command = new SqlCommand(sql, connection);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    //database_username = database_username + reader.GetValue(0);
                    //database_password = database_password + reader.GetValue(5);
                    database_username = reader["StaffNumber"].ToString();
                    database_password = reader["password"].ToString();

                    if (password == database_password && userNumber == database_username)
                {
                    //add name of next page in inverted commas
                    Response.Redirect("Financial_Page_Form.aspx");
                    
                }
                else if (password == null)
                {
                    //ADD ERROR MESSAGE LBL AND CODE
                    
                }
                    
                }

                

                

                if (password == database_password && userNumber == database_username)
                {
                    //add name of next page in inverted commas
                    Response.Redirect("Financial_Page_Form.aspx");
                    
                }
                else if (password == null)
                {
                    //ADD ERROR MESSAGE LBL AND CODE
                    
                }

                connection.Close();

            }
            catch (SqlException ex)
            {
                
            }
        }
    }
}
