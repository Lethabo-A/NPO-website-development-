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
    public partial class RemoveStaffPage : System.Web.UI.Page
    {
        private string connectionString = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
            lblRemove.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblRemove.Visible = true;
            //initializing variables 
            string staffNum = txtRemove.Text.Trim();

            //validation
            if (string.IsNullOrEmpty(staffNum))
            {
                lblRemove.ForeColor = System.Drawing.Color.Red;
                lblRemove.Text = "Please enter the staff number of staff you want to remove.";
                return;

            }
            //removing staff
            removeStaff(staffNum);
        }

        private void removeStaff(string staffNum)
        {
            string query = "DELETE FROM Staff WHERE Staff_number = @staffNumber";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@staffNumber", staffNum);

                    try
                    {
                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            lblRemove.ForeColor = System.Drawing.Color.Green;
                            lblRemove.Text = "Staff removed successfully!";
                        }
                        else
                        {
                            lblRemove.ForeColor = System.Drawing.Color.Red;
                            lblRemove.Text = "Staff number not found.";
                        }
                        BindGridView();
                    }
                    catch (Exception ex)
                    {
                        lblRemove.ForeColor = System.Drawing.Color.Red;
                        lblRemove.Text = $"Error: {ex.Message}";
                    }

                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //go back to maintain staff page
            Response.Redirect("Maintain_staff.aspx");
        }



        //method to bind data to GridView
        private void BindGridView()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "SELECT* FROM Staff";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    gridRemove.DataSource = dt;
                    gridRemove.DataBind();

                }
                catch (Exception ex)
                {
                    lblRemove.ForeColor = System.Drawing.Color.Red;
                    lblRemove.Text = "Error:" + ex.Message;
                }
            }
        }
    }


} 

