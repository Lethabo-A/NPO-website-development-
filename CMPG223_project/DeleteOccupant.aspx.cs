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
    public partial class DeleteOccupant : System.Web.UI.Page
    {
        private string connectionString = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        // Method to bind data to GridView
        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString))
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

        // Method to handle deletion
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string selectedID = "";
            string idOrPassport = txtIDPassport.Text.Trim();

            // Check if a row is selected in the GridView
            if (GridView1.SelectedIndex != -1)
            {
                selectedID = GridView1.SelectedDataKey.Value.ToString();
            }

            // Check if user entered an ID/Passport in the TextBox
            if (!string.IsNullOrEmpty(idOrPassport))
            {
                DeleteByIDOrPassport(idOrPassport);
            }
            else if (!string.IsNullOrEmpty(selectedID))
            {
                DeleteBySelectedID(selectedID);
            }
            else
            {
                lblMessage.Text = "enter an ID/Passport number.";
            }
        }

        // Delete by ID/Passport from the TextBox input
        private void DeleteByIDOrPassport(string idOrPassport)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM Occupants WHERE [Identification/Passport Number] = @IDPassport", con);
                    cmd.Parameters.AddWithValue("@IDPassport", idOrPassport);
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Record deleted successfully!";
                    }
                    else
                    {
                        lblMessage.Text = "No matching record found.";
                    }

                    BindGridView();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }

        // Delete by the selected row in GridView doesnt work 
        private void DeleteBySelectedID(string selectedID)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM Occupants WHERE ID = @ID", con);
                    cmd.Parameters.AddWithValue("@ID", selectedID);
                    cmd.ExecuteNonQuery();

                    lblMessage.Text = "Selected row deleted successfully!";
                    BindGridView();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }
    }
}