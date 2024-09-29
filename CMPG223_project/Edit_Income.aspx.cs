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

            try
            {
                String category, name, date;
                int ID = int.Parse(TextBox1.Text);
                double amount;
                if (int.TryParse(TextBox1.Text,out ID))
                {
                    if (double.TryParse(Amount_TextBox.Text, out amount))
                    {
                        category = DropDownList2.SelectedItem.ToString();
                        name = ExpenseName_TextBox.Text;
                        DateTime datetime2 = Calendar1.SelectedDate;
                        date = datetime2.ToString("yyyy-MMMM-dd");
                        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
                        connection.Open();
                        SqlCommand command;
                        SqlDataAdapter adapter = new SqlDataAdapter();
                        String insert = "update Add_Income_Table set Income_Category = '" + category + "',Income_Name = '" + name + "',Income_Date = '" + date + "',Income_Amount = '" + amount + "' where IncomeID = '" + ID + "'";
                        command = new SqlCommand(insert, connection);
                        adapter.InsertCommand = new SqlCommand(insert, connection);
                        adapter.InsertCommand.ExecuteNonQuery();
                        command.Dispose();
                        connection.Close();

                        MessageBox.Show("Updated suuccessful!");
                    }
                    else
                    {
                        MessageBox.Show("Enter the AMOUNT correct data type!");
                    }
                }
                else
                {
                    MessageBox.Show("Enter the ID correct data type!");
                }
                
                
                
                
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }


        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string category = DropDownList3.SelectedItem.ToString();
            int ID;
            if(int.TryParse(TextBox2.Text, out ID))
            {
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

                    String insert1 = "delete from Add_Income_Table where IncomeID = '" + ID + "'";
                    command = new SqlCommand(insert1, connection);
                    adapter.InsertCommand = new SqlCommand(insert1, connection);
                    adapter.InsertCommand.ExecuteNonQuery();
                    command.Dispose();
                    connection.Close();

                    MessageBox.Show("Delete suuccessful!");



                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            else
            {
                MessageBox.Show("Enter the ID correct data type!");
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

       
    }
}