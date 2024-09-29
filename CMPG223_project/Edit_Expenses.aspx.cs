using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Windows;
using System.Xml.Linq;

namespace CMPG223_project
{
    public partial class Edit_Expenses : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                BindGridView();
            }
            lblRemove.Visible = false;

            string category = DropDownList1.SelectedItem.ToString();
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
            conn.Open();
            try
            {
                ds = new DataSet();
                sql = @"Select ExpenseID,Expense_Category,Expense_Name,Expense_Date,Expense_Amount from [Add_Expense_Table]";
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
                int ID;
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
                        String insert = "update Add_Expense_Table set Expense_Category = '" + category + "',Expense_Name = '" + name + "',Expense_Date = '" + date + "',Expense_Amount = '" + amount + "' where ExpenseID = '" + ID + "'";
                        command = new SqlCommand(insert, connection);
                        adapter.InsertCommand = new SqlCommand(insert, connection);
                        adapter.InsertCommand.ExecuteNonQuery();
                        command.Dispose();
                        connection.Close();
                        BindGridView();
                        MessageBox.Show("Update suuccessful!");
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
            if  (int.TryParse(TextBox2.Text, out ID))
            {
                try
                {
                    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
                    connection.Open();
                    SqlCommand command;
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    String insert = "delete from Add_Expense_Table where Expense_Category = '" + category + "'";
                    command = new SqlCommand(insert, connection);
                    adapter.InsertCommand = new SqlCommand(insert, connection);
                    adapter.InsertCommand.ExecuteNonQuery();
                    command.Dispose();

                    String insert1 = "delete from Add_Expense_Table where ExpenseID = '" + ID + "'";
                    command = new SqlCommand(insert1, connection);
                    adapter.InsertCommand = new SqlCommand(insert1, connection);
                    adapter.InsertCommand.ExecuteNonQuery();
                    command.Dispose();
                    connection.Close();
                    BindGridView();
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
                sql = @"Select ExpenseID,Expense_Category,Expense_Name,Expense_Date,Expense_Amount from [Add_Expense_Table] where Expense_Category = '" + category + "'";
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
        private void BindGridView()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString))
            {
                try
                {
                    conn.Open();
                    string query = "SELECT* FROM Add_Expense_Table";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

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
