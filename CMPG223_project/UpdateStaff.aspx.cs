using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Security.Cryptography;
using System.Text;

namespace CMPG223_project
{
    public partial class UpdateStaff : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\Documents\\CMPG213\\staffMaintain\\newStaff\\App_Data\\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
            lblMessage.Visible = false;
        }


        //mehtod to bind data to gridview
        private void BindGridView()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString))
            {
                try
                {
                    conn.Open();
                    string query = "SELECT* FROM Staff";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    gridUpdate.DataSource = dt;
                    gridUpdate.DataBind();

                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error:" + ex.Message;
                }
            }
        }

        //method to determine which field was choosen
        private string selectedField()
        {
            return rblFields.SelectedValue;

        }
        //Method to hash the password 
        private string Hashedpassword(string password)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                //compute hash returns byte array
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(password));

                //convert byte array to a string
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));

                }
                return builder.ToString();
            }
        }
        //method to handle update operation
        private void updateStaff(string newValue, string fieldToUpdate, string staffNum)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    string query = $"UPDATE Staff SET [{fieldToUpdate}]=@NewValue WHERE Staff_number=@staffNumber";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        //input validation
                        if (fieldToUpdate == "Password" && !string.IsNullOrEmpty(newValue))
                        {
                            newValue = Hashedpassword(newValue);

                        }


                        cmd.Parameters.AddWithValue("@NewValue", newValue);
                        cmd.Parameters.AddWithValue("@staffNumber", staffNum);

                        try
                        {
                            int rowsAffected = cmd.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                lblMessage.ForeColor = System.Drawing.Color.Green;
                                lblMessage.Text = "Staff details updated successfully!";
                            }
                            else
                            {
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                                lblMessage.Text = "Staff number not found.";
                            }
                            BindGridView();

                        }
                        catch (Exception ex)
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Error updating staff details." + ex.Message;
                        }



                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error:" + ex.Message;
            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //go back to maintain staff page 
            Response.Redirect("Maintain_staff.aspx");
        }

        protected void btnUpdateStaff_Click(object sender, EventArgs e)
        {
            lblMessage.Visible = true;
            string fieldToUpdate = selectedField();
            string staffNum = txtNum.Text.Trim();
            string newValue = txtUpdated.Text.Trim();

            //check if all fields are not empty
            if (string.IsNullOrEmpty(staffNum))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter staff number, select a field to update and enter new value";
                return;
            }
            if (string.IsNullOrEmpty(newValue))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter the updated detsils.";
            }
            if (fieldToUpdate == "Contact_number")
            {
                bool isDigit = int.TryParse(newValue, out _);
                if (string.IsNullOrEmpty(newValue) || newValue.Length != 10 || !isDigit)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Please enter a valid 10 digit number";
                    return;
                }
            }
            if (fieldToUpdate == "Name" || fieldToUpdate == "Surname")
            {
                bool isDigit = int.TryParse(newValue, out _);
                if (isDigit)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Please enter non-numeric values";
                    return;
                }
            }

            //updatinf staff details
            updateStaff(newValue, fieldToUpdate, staffNum);

        }
    }
}