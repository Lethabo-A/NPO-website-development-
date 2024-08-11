using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_project
{
    public partial class Add_Expense_Form : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OrganizationDatabase.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Today.Date;
        }

        protected void AddExpense_Button_Click(object sender, EventArgs e)
        {
            String category, name,date;
            category = DropDownList1.SelectedItem.ToString();
            name = ExpenseName_TextBox.Text;
            DateTime datetime = Calendar1.SelectedDate;
            date = datetime.ToString("yyyy-MM-dd");

            
            try
            {
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String insert = "insert into Add_Expense_Table (Expense_Category,Expense_Name,Date_Of_Expense) values ('" + category + "','" + name + "'," + date + ")";
                command = new SqlCommand(insert, connection);
                adapter.InsertCommand = new SqlCommand(insert, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();
                connection.Close();


            }
            catch (SqlException ex)
            {

            }
        }

        public void changeLabel1(String text)
        {
            Label1.Text = text;
        }

        public void changeLabel2(String text)
        {
            Label2.Text = text;
        }

        public void changeLabel6(String text)
        {
            Label6.Text = text;
        }

        public void changeLabel5(String text)
        {
            Label5.Text = text;
        }

        public void hide_add_expense_button()
        {
            AddExpense_Button.Visible = false;
        }

        protected void AddIncome_Button_Click(object sender, EventArgs e)
        {
            String category, name, date;
            category = DropDownList1.SelectedItem.ToString();
            name = ExpenseName_TextBox.Text;
            DateTime datetime = Calendar1.SelectedDate;
            date = datetime.ToString("yyyy-MM-dd");


            try
            {
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String insert = "insert into Add_Income_Table (Income_Category,Income_Name,Date_Of_Income) values ('" + category + "','" + name + "'," + date + ")";
                command = new SqlCommand(insert, connection);
                adapter.InsertCommand = new SqlCommand(insert, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();
                connection.Close();


            }
            catch (SqlException ex)
            {

            }
        }
    }
}