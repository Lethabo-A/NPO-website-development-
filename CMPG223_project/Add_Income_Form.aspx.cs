using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace CMPG223_project
{
    public partial class Add_Expense_Form : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NGO.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Today.Date;
        }

        protected void AddIncome_Button_Click(object sender, EventArgs e)
        {
            String category, name, date;
            double amount;

            if (Double.TryParse(Amount_TextBox.Text, out amount))
            {

            }
            else
            {
                MessageBox.Show("Error!! Enter correct type.");
                ;
            }

            category = DropDownList1.SelectedItem.ToString();
            name = IncomeName_TextBox.Text;
            DateTime datetime = Calendar1.SelectedDate;
            date = datetime.ToString("yyyy-MM-dd");


            try
            {
                SqlConnection connection =  new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); ;
                connection.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String insert = "insert into Add_Income_Table (Income_Category,Income_Name,Date_Of_Income,Income_Amount) values ('" + category + "','" + name + "'," + date + "'," + amount + ")";
                command = new SqlCommand(insert, connection);
                adapter.InsertCommand = new SqlCommand(insert, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();
                connection.Close();

                MessageBox.Show("Added suuccessfully!");


            }
            catch (SqlException ex)
            {

            }
        }
    }
}