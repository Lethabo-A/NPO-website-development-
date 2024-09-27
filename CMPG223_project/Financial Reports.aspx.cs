using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace CMPG223_project
{
    public partial class Financial_Reports : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NGO.mdf;Integrated Security=True;Connect Timeout=30";
        String sql = "";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
            conn.Open();
            try
            {
                ds = new DataSet();
                sql = @"Select ExpenseID,Expense_Category,Expense_Name,Date_Of_Expense from [Add_Expense_Table] ";
                cmd = new SqlCommand(sql, conn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
                cmd.Dispose();
                conn.Close();
                dr.Close();
                dr.Dispose();
                conn.Close();

            }
            catch (SqlException sqlEx)
            {
                MessageBox.Show(sqlEx.Message);
            }

            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                ds = new DataSet();
                sql = @"Select Income_ID,Income_Category,Income_Name,Date_Of_Income from [Add_Income_Table] ";
                cmd = new SqlCommand(sql, conn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
                cmd.Dispose();
                conn.Close();
                dr.Close();
                dr.Dispose();

            }
            catch (SqlException sqlEx)
            {
                MessageBox.Show(sqlEx.Message);
            }
        }
    }
}