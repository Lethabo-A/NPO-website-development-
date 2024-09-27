using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace requestReports
{
    public partial class ExpenditureReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connection= "" ;
           using(SqlConnection con = new SqlConnection(connection))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Expenditure", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        private void LoadExpenditure(string filter = "")
        {
            string query = "SELECT * FROM Expenditure";

            if(!string.IsNullOrEmpty(filter))
            {
                query += "WHERE TotalExpenditure = @TotalExpenditure";
            }

            using(SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["financialDatabase"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if(!string.IsNullOrEmpty (filter))
                    {
                        cmd.Parameters.AddWithValue("@TotalExpenditure", filter);
                    }

                    conn.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    conn.Close();
                }
            }
        }

        protected void BackBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("requestFinancial.aspx");
        }

        protected void HighestT_Click(object sender, EventArgs e)
        {
            string query = "SELECT MAX(TotalExpenditure) FROM Expenditure";
            DisplayExpenditure(query);
        }

        protected void LowestT_Click(object sender, EventArgs e)
        {
            string query = "SELECT MIN(TotalExpenditure) FROM Expenditure";
            DisplayExpenditure(query);
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            LoadExpenditure();
        }

        private void DisplayExpenditure(string query)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["financialDatabase"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();
                    object result = cmd.ExecuteScalar();
                    LoadExpenditure(result.ToString());
                }
            }
        }
    }
}