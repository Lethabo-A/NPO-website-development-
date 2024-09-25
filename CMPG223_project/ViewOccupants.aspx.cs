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
    public partial class ViewOccupants : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch and display data in GridView
                LoadGridViewData();

                // Display the count of records
                DisplayRecordCount();
            }
        }

        private void LoadGridViewData()
        {
            // SQL query to fetch data
            string query = "SELECT * FROM Occupants";

            try
            {
                // Open the connection if it's closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                // Execute the SQL query and fill the GridView
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        // Bind the data to GridView
                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("An error occurred: " + ex.Message);
            }
            finally
            {
                
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

        private void DisplayRecordCount()
        {
            
            string countQuery = "SELECT COUNT(*) FROM Occupants";

            try
            {
                // Open the connection
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                using (SqlCommand command = new SqlCommand(countQuery, con))
                {
                    
                    int recordCount = (int)command.ExecuteScalar();

                    // Display the count in the label
                    lblRecordCount.Text = "Number of current occupants: " + recordCount.ToString();
                }
            }
            catch (Exception ex)
            {
                
                lblRecordCount.Text = "Error: " + ex.Message;
            }
            finally
            {
                // Ensure connection is closed
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
    }
}