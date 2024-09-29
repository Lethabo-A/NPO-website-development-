using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CMPG223_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand command = new SqlCommand();
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable dt = new DataTable();
        public string chosenLanguage;
        public string usernumber, password, sqlcommand, connectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //there has been changes made to the connection string to allow it to be used on all our computers please dont change it and please use this connection string when tring to connect on your pc
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30";
            try
            {
                connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
                connection.Open();
            }
            catch (SqlException ex)
            {
                ShowAlert("Connection error: " + ex.Message);
            }
            finally
            {
                connection.Close();
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            usernumber = txtUserNumber.Text;
            password = txtPassword.Text;
            connection.Open();
            try
            {
                sqlcommand = @"SELECT * FROM Staff WHERE Staff_number = @UserNumber AND Password = @Password";
                SqlCommand cmd = new SqlCommand(sqlcommand, connection);
                cmd.Parameters.AddWithValue("@UserNumber", txtUserNumber.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    string staffNumber = dt.Rows[0]["Staff_number"].ToString();
                    string rolePrefix = staffNumber.Substring(0, 2);

                    switch (rolePrefix)
                    {
                        case "Do":
                            Response.Redirect("MedicalReport.aspx"); //add doctors page
                            break;
                        case "Ac":
                            Response.Redirect("Financial_Page_Formaspx.aspx"); //add accountants page
                            break;
                        case "Ad":
                            Response.Redirect("AdminPage.aspx"); //add adminpage
                            break;
                        case "Gs":
                            Response.Redirect("Maintain_Staff.aspx"); //add general staff page
                            break;
                        default:
                            lblErrorMessage.Text = "Invalid role, contact admin.";
                            break;
                    }

                   
                    password = "";
                    usernumber = "";
                }
                else
                {
                    lblErrorMessage.Text = "Incorrect login details, please try again.";
                    txtUserNumber.Focus();
                    txtPassword.Text = "";
                }
            }
            catch (SqlException ex)
            {
                ShowAlert("Connection error: " + ex.Message);
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }

        private void ShowAlert(string message)
        {
            string script = $"<script type=\"text/javascript\">alert('{message}');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script);
        }
            
    }
}
