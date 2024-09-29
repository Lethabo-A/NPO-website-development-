using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Xml.Linq;

namespace CMPG223_project
{
    public partial class Donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void myButton_Click(object sender, EventArgs e)
        {
            string donorName = Request.Form["firstname"];
            string donorLastName = Request.Form["lastname"];
            string donorEmail = Request.Form["eMail"];
            string donorPhoneNumb = Request.Form["phoneNumb"];
            string date = Request.Form["date"];
            string donatedAmount = Request.Form["dAmount"];
            string bankAccount = Request.Form["banks"];

            try
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
                connection.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String insert = "insert into Donations (Name,Surname,Email,PhoneNumber,Date,DonatedAmount,BankAccount) values ('" + donorName + "','" + donorLastName + "','" + donorEmail + "','" + donorPhoneNumb + "','" + date + "','" + donatedAmount + "','" + bankAccount + "')";
                command = new SqlCommand(insert, connection);
                adapter.InsertCommand = new SqlCommand(insert, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();
                connection.Close();

                MessageBox.Show("Details added suuccessfully!");
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }

            string incomeName = "Donation";
            string category = "Fundraising";
            double incAmount = Double.Parse(donatedAmount);

            try
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
                connection.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String insert = "insert into Add_Income_Table (Income_Category,Income_Name,Income_Date,Income_Amount) values ('" + category + "','" + incomeName + "','" + date + "','" + incAmount + "')";
                command = new SqlCommand(insert, connection);
                adapter.InsertCommand = new SqlCommand(insert, connection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();
                connection.Close();

                MessageBox.Show("Details added suuccessfully!");
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}