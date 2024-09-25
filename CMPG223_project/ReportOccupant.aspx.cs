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
    public partial class ReportOccupant : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Tadiwa\\Documents\\GitHub\\CMPG223_group20Project\\CMPG223_project\\App_Data\\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

            lblDateTime.Text = "Report generated on: " + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            if (!IsPostBack)
            {
                BindAllOccupants();
            }
        }


        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            string filterColumn = rbFilterOptions.SelectedValue;
            string filterValue = txtFilterValue.Text.Trim();

            if (string.IsNullOrEmpty(filterValue))
            {
                lblMessage.Text = "Please enter a value to filter.";
                return;
            }


            string query = $"SELECT * FROM Occupants WHERE [{filterColumn}] LIKE @FilterValue";

            BindGridView(query, $"%{filterValue}%");
        }


        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            BindAllOccupants();
        }


        protected void btnSaveReport_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "Report saved successfully!";
        }


        private void BindAllOccupants()
        {
            string query = "SELECT * FROM Occupants";
            BindGridView(query);
        }


        private void BindGridView(string query, string filterValue = null)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    if (filterValue != null)
                    {
                        cmd.Parameters.AddWithValue("@FilterValue", filterValue);
                    }

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridViewReport.DataSource = dt;
                        GridViewReport.DataBind();
                        lblMessage.Text = "";
                    }
                    else
                    {
                        GridViewReport.DataSource = null;
                        GridViewReport.DataBind();
                        lblMessage.Text = "No records found for the selected criteria.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }


    }
}