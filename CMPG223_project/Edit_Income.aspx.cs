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
    public partial class Edit_Income : System.Web.UI.Page
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
            string category = DropDownList1.SelectedItem.ToString();
            DateTime datetime = Calendar3.SelectedDate;
            string updateD = datetime.ToString("yyyy-MMMM-dd");
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
            conn.Open();
            try
            {
                ds = new DataSet();
                sql = @"Select IncomeID,Income_Category,Income_Name,Income_Date,Income_Amount from [Add_Income_Table] ";
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

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            String category, name, date, updateD;
            double amount;

            if (Double.TryParse(Amount_TextBox.Text, out amount))
            {

            }
            else
            {
                MessageBox.Show("Error!! Enter correct type.");

            }
            category = DropDownList2.SelectedItem.ToString();
            name = ExpenseName_TextBox.Text;
            DateTime datetime = Calendar3.SelectedDate;
            DateTime datetime2 = Calendar1.SelectedDate;
            date = datetime2.ToString("yyyy-MMMM-dd");
            updateD = datetime.ToString("yyyy-MMMM-dd");




            try
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
                connection.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String insert = "update Add_Income_Table set Income_Category = '" + category + "' ,Income_Name = '" + name + "',Income_Date = '" + date + "',Income_Amount = '" + amount + "' where Income_Date = '" + updateD + "'";
                command = new SqlCommand(insert, connection);
                adapter.InsertCommand = new SqlCommand(insert, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();
                connection.Close();

                MessageBox.Show("Added suuccessfully!");



            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }


        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string category = DropDownList3.SelectedItem.ToString();
            DateTime datetime = Calendar2.SelectedDate;
            string updateD = datetime.ToString("yyyy-MMMM-dd");
            try
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
                connection.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String insert = "delete from Add_Income_Table where Income_Category = '" + category + "'";
                command = new SqlCommand(insert, connection);
                adapter.InsertCommand = new SqlCommand(insert, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();

                String insert1 = "delete from Add_Income_Table where Income_Date = '" + updateD + "'";
                command = new SqlCommand(insert1, connection);
                adapter.InsertCommand = new SqlCommand(insert1, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();
                connection.Close();

                MessageBox.Show("Added suuccessfully!");



            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string category = DropDownList1.SelectedItem.ToString();
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
            conn.Open();
            try
            {
                ds = new DataSet();
                sql = @"Select IncomeID,Income_Category,Income_Name,Income_Date,Income_Amount from [Add_Income_Table] where Income_Category = '" + category + "'";
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

        protected void Calendar3_SelectionChanged(object sender, EventArgs e)
        {
            string category = DropDownList1.SelectedItem.ToString();
            DateTime datetime = Calendar3.SelectedDate;
            string updateD = datetime.ToString("yyyy-MMMM-dd");
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
            conn.Open();
            try
            {
                ds = new DataSet();
                sql = @"Select IncomeID,Income_Category,Income_Name,Income_Date,Income_Amount from [Add_Income_Table] where Income_Category = '" + category + "',Income_Date = '" + updateD + "' ";
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