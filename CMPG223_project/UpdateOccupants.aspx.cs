using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_project
{
    public partial class UpdateOccupants : System.Web.UI.Page
    {
        private string connectionString = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        // Method to bind data to the GridView
        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Occupants", con);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }

        // Method to handle the update operation
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string idOrPassport = txtIDPassport.Text.Trim();
            string newValue = txtNewValue.Text.Trim();
            string columnToUpdate = GetSelectedColumn(); // Identify the selected column

            // Check if all necessary fields are filled
            if (string.IsNullOrEmpty(idOrPassport) || string.IsNullOrEmpty(newValue) || string.IsNullOrEmpty(columnToUpdate))
            {
                lblMessage.Text = "Please fill in the ID/Passport number, select a column to update, and provide the new value.";
                return;
            }

            // SQL query to update the selected column for the specified ID/Passport number
            string query = $"UPDATE Occupants SET [{columnToUpdate}] = @NewValue WHERE [Identification/Passport Number] = @IDPassport";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@NewValue", newValue);
                        cmd.Parameters.AddWithValue("@IDPassport", idOrPassport);

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Record updated successfully!";
                        }
                        else
                        {
                            lblMessage.Text = "No matching record found.";
                        }
                    }

                    BindGridView(); // Refresh the GridView to reflect the updated data
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }

        // Method to determine which column was selected by the user using radio buttons
        private string GetSelectedColumn()
        {
            if (Radname.Checked) return "Name";
            if (Radsurname.Checked) return "Surname";
            if (Radinfo.Checked) return "Relative Contact Information";
            if (Radgender.Checked) return "Gender";
            if (Radaddress.Checked) return "Previous Address";
            if (Radcitizen.Checked) return "Citizenship";
            if (RadTrans.Checked) return "Transfer Home";
            if (Radmedical.Checked) return "Medical Conditions";
            return string.Empty;
        }
    }
}