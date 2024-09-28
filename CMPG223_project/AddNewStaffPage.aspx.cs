using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_project
{
    public partial class AddNewStaffPage : System.Web.UI.Page
    {
        
        private string connectionString = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblOutput.Visible = false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Initializing variables
            lblOutput.Visible = true;
            string department = staffDepart.SelectedValue;
            string IdNumber = txtID.Text.Trim();
            string name = txtName.Text.Trim();
            string surname = txtSurname.Text.Trim();
            string contactNumber = txtContact.Text.Trim();
            string homeAddress = txtAddress.Text.Trim();
            string password = txtWord.Text.Trim();



            //validate input 
            if (string.IsNullOrEmpty(department))
            {
                lblOutput.ForeColor = System.Drawing.Color.Red;
                lblOutput.Text = "Please select a department.";
                return;
            }
            if (string.IsNullOrEmpty(IdNumber) || IdNumber.Length != 13 || !long.TryParse(IdNumber, out _))
            {
                lblOutput.ForeColor = System.Drawing.Color.Red;
                lblOutput.Text = "Please enter a 13 digit ID number.";
                return;
            }
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(surname))
            {
                lblOutput.ForeColor = System.Drawing.Color.Red;
                lblOutput.Text = "Please enter name.";
                return;
            }
            bool isDigit = int.TryParse(contactNumber, out _);
            if (string.IsNullOrEmpty(contactNumber) || contactNumber.Length != 10 || !isDigit)
            {
                lblOutput.ForeColor = System.Drawing.Color.Red;
                lblOutput.Text = "Please enter a valid 10 digit number.";
                return;
            }
            if (string.IsNullOrEmpty(homeAddress) || string.IsNullOrEmpty(password))
            {
                lblOutput.ForeColor = System.Drawing.Color.Red;
                lblOutput.Text = "Please fill all the fields.";
                return;
            }

            //hash password
            string hashedpassword = Hashedpassword(password);

            //generate the staff number 
            string staffNumber = GenerateStaffNumber(department, IdNumber);

            //add new staff to the database
            AddStaff(staffNumber, name, surname, contactNumber, homeAddress, hashedpassword);
        }
        //method to hash the password
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

        //method to generate staff number 
        private string GenerateStaffNumber(string department, string IdNumber)
        {
            string prefix = string.Empty;

            switch (department)
            {
                case "Doctor":
                    prefix = "Do";
                    break;
                case "Accountant":
                    prefix = "Ac";
                    break;
                case "Admin":
                    prefix = "Ad";
                    break;
                case "General staff":
                    prefix = "Gs";
                    break;
                default:
                    lblOutput.ForeColor=System.Drawing.Color.Red;
                    lblOutput.Text = "Invalid department selected.";
                    return null;

            }
            return $"{prefix}{IdNumber}";
        }
        //Method to add to the database 
        private void AddStaff(string staffNumber, string name, string surname, string contactNumber, string homeAddress, string hashedpassword)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO Staff(Staff_number,Name,Surname,contact_number, homeAddress,Password)" + "VALUES (@StaffNumber,@Name,@Surname,@Contactnumber,@HomeAddress,@Password)";



                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@StaffNumber", staffNumber);
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Surname", surname);
                        cmd.Parameters.AddWithValue("@Contactnumber", contactNumber);
                        cmd.Parameters.AddWithValue("@HomeAddress", homeAddress);
                        cmd.Parameters.AddWithValue("@Password", hashedpassword);
                        cmd.ExecuteNonQuery();


                    }
                    // conn.Close();
                }
                lblOutput.ForeColor = System.Drawing.Color.Green;
                lblOutput.Text = "New staff added successfully!";

            }
            catch (Exception ex)
            {
                lblOutput.ForeColor = System.Drawing.Color.Red;
                lblOutput.Text = $"Error adding staff:{ex.Message}";
            }
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Maintain_Staff.aspx");
        }
        
    }
}