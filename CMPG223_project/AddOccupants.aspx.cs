using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace CMPG223_project
{
    public partial class AddOccupants : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Radfemale_CheckedChanged(object sender, EventArgs e)
        {

            //string selectedGender = string.Empty;

            // if (Radfemale.Checked)
            // {
            //   selectedGender = "Female";
            //}
            //else if (Radmale.Checked)
            //{
            //    selectedGender = "Male";
            //}

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            // Check which radio button is selected
            string Gender = "";
            if (Radfemale.Checked)
            {
                Gender = "Female";
            }
            else if (Radmale.Checked)
            {
                Gender = "Male";
            }

            string name = txtname.Text.Trim();
            string surname = txtsurname.Text.Trim();
            string info = txtinfo.Text.Trim();
            int idNumber = int.Parse(txtdate.Text);
            string citizenship = txtcitizen.Text.Trim();
            string transferHome = txtTransfer.Text.Trim();
            string medicalConditions = txtMedical.Text.Trim();
            string address = txtAddress.Text.Trim();

            // Validate that all required fields are filled
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(surname) ||
                 string.IsNullOrEmpty(address) || string.IsNullOrEmpty(citizenship) ||
                string.IsNullOrEmpty(transferHome) || string.IsNullOrEmpty(medicalConditions) ||
                string.IsNullOrEmpty(Gender)) // Ensure selectedGender is also checked
            {
                lblMessage.Text = "Please fill in all fields.";
                return;
            }

            // SQL query to insert data into the Occupants table
            string query = "INSERT INTO Occupants (Name, Surname, [Identification/Passport Number], Gender, [Previous Address], Citizenship, [Transfer Home], [Mediacal Conditions] , [Relative Contact Information]) " +
                           "VALUES (@name, @surname, @idNumber, @Gender, @address, @citizenship, @transferHome, @medicalConditions , @info)"; // Use @Gender here

            try
            {
                // Open the connection
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                // Create command and parameters
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Surname", surname);
                    command.Parameters.AddWithValue("@IDNumber", idNumber);
                    command.Parameters.AddWithValue("@Gender", Gender); // Make sure this matches the query
                    command.Parameters.AddWithValue("@Address", address);
                    command.Parameters.AddWithValue("@Citizenship", citizenship);
                    command.Parameters.AddWithValue("@TransferHome", transferHome);
                    command.Parameters.AddWithValue("@MedicalConditions", medicalConditions);
                    command.Parameters.AddWithValue("@info", info);
                    // Execute the command
                    command.ExecuteNonQuery();
                }

                lblMessage.Text = "Data saved successfully!";
            }
            catch (Exception ex)
            {
                // Handle any errors
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
            finally
            {
                // Ensure the connection is closed
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

        protected void txtname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}