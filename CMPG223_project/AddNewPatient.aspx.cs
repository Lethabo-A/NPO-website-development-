using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Xml.Linq;

namespace CMPG223_project
{
	public partial class AddNewPatient : System.Web.UI.Page
	{
        //declare these here variables
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\User\Downloads\223 doctor\WebApplication1\App_Data\PatientsInfo.mdf"";Integrated Security=True";
        String sql = "";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            //establish that connection to the database
            try
            {
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            conn.Open();
        }

        protected void btnAddPatient_Click(object sender, EventArgs e)
        {
            //declare variables and assign them to values inputted by the user
            string name = txtName.Text;
            string surname = txtSurname.Text;
            int ID = int.Parse(txtID.Text);
            int age = int.Parse(txtAge.Text);
            string gender = txtGender.Text;
            string allergies = txtAllergies.Text;
            string prescriptions = txtPrescriptions.Text;
            string currentDiagnosis = txtCurrent.Text;
            string pastMed = txtPastMed.Text;
            string pastSurg = txtPastSurg.Text;
            string vaccineStatus = dropDownVaccine.SelectedValue;
            string preg = txtPreg.Text;
            string social = txtSocial.Text;
            try
            {
                //try and insert a value
                sql = "Insert patients ([ID], [name], surname, age, gender, allergies, prescriptions, current_diagnosis, past_medical_history, past_surgical_history, vaccine_status, pregnancy_history, social_history) values ('" + ID + "','" + name + "','" + surname + "','" + age + "','" + gender + "','" + allergies + "','" + prescriptions + "','" + currentDiagnosis + "','" + pastMed + "','" + pastSurg + "','" + vaccineStatus + "','" + preg + "','" + social + "')";
                cmd = new SqlCommand(sql, conn);
                adapter.InsertCommand = cmd;
                int c = adapter.InsertCommand.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
                if (c > 0)
                    MessageBox.Show("Item was inserted successfully");
                else
                    MessageBox.Show("The item was not inserted successfully");
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
