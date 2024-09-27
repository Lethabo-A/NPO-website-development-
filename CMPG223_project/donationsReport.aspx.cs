using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace requestReports
{
    public partial class donationsReport : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDonations();
        }
        private void LoadDonations(string filter = "")
        {
            string query = "SELECT * FROM Donationa";
            if (!string.IsNullOrEmpty(filter))
            {
                query += "WHERE DonorName LIKE @DonorName";
            }
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["financialDatabase"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if(!string.IsNullOrEmpty(filter))
                    {
                        cmd.Parameters.AddWithValue("@DonorName", "%" + filter + "%");

                    }
                    conn.Open();
                    GridView2.DataSource = cmd.ExecuteReader();
                    GridView2.DataBind();
                    conn.Close();
                }
            }
           
        }

        protected void BackBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("requestFinancial.aspx");
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string keyword = TextBox1.Text.Trim();
            LoadDonations(keyword);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = " ";
            LoadDonations();
        }
    }
}