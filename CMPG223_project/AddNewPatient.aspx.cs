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

namespace WebApplication1
{
    public partial class AddNewPatient : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\User\Downloads\223 doctor\WebApplication1\App_Data\PatientsInfo.mdf"";Integrated Security=True";
        String sql = "";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            }
            catch (SqlException ex) 
            { }
            conn.Open();
        }

        protected void btnAddPatient_Click(object sender, EventArgs e)
        { 
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
                sql = "Insert patients ([ID], [name], surname, age, gender, allergies, prescriptions, current_diagnosis, past_medical_history, past_surgical_history, vaccine_status, pregnancy_history, social_history) values ('" + ID + "','" + name + "','" + surname + "','" + age + "','" + gender + "','" + allergies + "','" + prescriptions + "','" + currentDiagnosis + "','" + pastMed + "','" + pastSurg + "','" + vaccineStatus + "','" + preg + "','" + social + "')";
                cmd = new SqlCommand(sql, conn);
                adapter.InsertCommand = cmd;
                adapter.InsertCommand.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
                MessageBox.Show("Item was inserted successfully");
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}