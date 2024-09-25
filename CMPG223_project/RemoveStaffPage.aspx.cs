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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //delete staff 
            //input validation
            int staffNumber;
            if (int.TryParse(txtDeleteStaff.Text, out staffNumber))
            {
                Remove_Staff(staffNumber);
            }
            else
            {
                lblRemoveMessage.Text = "Please enter a valid Staff Number.";
            }
        }

        private void Remove_Staff(int Staff_number)
        {
            string query = "DELETE FROM staff WHERE Staff_number = @staffNumber";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@staffNumber", Staff_number);

                    try
                    {
                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            lblRemoveMessage.Text = "Staff removed successfully!";
                        }
                        else
                        {
                            lblRemoveMessage.Text = "Staff number not found.";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblRemoveMessage.Text = $"Error: {ex.Message}";
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
                    lblRemoveMessage.Text = "Error: " + ex.Message;
                }
            }

        }
    }
}
