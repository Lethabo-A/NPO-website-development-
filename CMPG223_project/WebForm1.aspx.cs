using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;

namespace CMPG223_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable dt = new DataTable();
        public string chosenLanguage;
        public string usernumber, password, sqlcommand, connectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30";
            try
            {
                connection = new SqlConnection(connectionString);
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

            try
            {
                connection.Open();
                sqlcommand = @"SELECT * FROM Staff where IDNumber ='" + txtUserNumber.Text + "' AND password = '" + txtPassword.Text + "'";
                adapter = new SqlDataAdapter(sqlcommand, connection);
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    usernumber = txtUserNumber.Text;
                    password = txtPassword.Text;

                    Response.Redirect("Financial_Page_Form.aspx");
                    password = "";
                    usernumber = "";
                }
                else
                {
                    lblErrorMessage.Text = "incorrect password or user name try again";
                    txtPassword.Text = "";
                    txtUserNumber.Text = "";
                    txtUserNumber.Focus();
                }
                connection.Close();

            }
            catch (SqlException ex)
            {
                ShowAlert("Connection error: " + ex.Message);

            }
            catch(Exception ex)
            {
                ShowAlert("error" + ex.Message);
            }
        }

        private void ShowAlert(string message)
        {
            string script = $"<script type=\"text/javascript\">alert('{message}');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script);
        }
    }
}
