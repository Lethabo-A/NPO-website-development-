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
    public partial class UpdateNewStaffPage : System.Web.UI.Page
    {
        private string connectionString = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void btnRemoveStaff_Click(object sender, EventArgs e)
        {
            //redirect to remove staff page 
            Response.Redirect("RemoveStaff.aspx");
        }

        protected void btnUpdateStaff_Click(object sender, EventArgs e)
        {
            int staffNumber;
            if (int.TryParse(txtIdUpdate.Text, out staffNumber) && IsFieldSelected())
            {
                string selectedField = GetSelectedField();
                string updatedDetail = txtUpdated.Text;

                UpdateStaffDetail(staffNumber, selectedField, updatedDetail);
            }
            else
            {
                lblMessage.Text = "Please enter a valid Staff Number and select a field.";
            }
        }

        private bool IsFieldSelected()
        {
            return rbName.Checked || rbSurname.Checked || rbContactNumber.Checked || rbAddress.Checked;
        }

        private string GetSelectedField()
        {
            if (rbName.Checked) return "Name";
            if (rbSurname.Checked) return "Surname";
            if (rbContactNumber.Checked) return "Contact_number";
            if (rbAddress.Checked) return "HomeAddress";
            return null;
        }

        private void UpdateStaffDetail(int staffNumber, string field, string newValue)
        {
            string query = $"UPDATE staff SET {field} = @newValue WHERE Staff_number = @staffNumber";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@newValue", newValue);
                    cmd.Parameters.AddWithValue("@staffNumber", staffNumber);

                    try
                    {
                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Staff details updated successfully!";
                        }
                        else
                        {
                            lblMessage.Text = "Staff number not found.";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = $"Error: {ex.Message}";
                    }
                }
            }
        }


        //method to bind data to GridView
        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Staff", con);
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
    }
}
