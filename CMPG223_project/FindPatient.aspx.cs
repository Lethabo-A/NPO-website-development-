using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace WebApplication1
{
    public partial class FindPatient : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Downloads\223 doctor\WebApplication1\App_Data\PatientsInfo.mdf;Integrated Security=True";
        String sql = "";
        String ID;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adapter  =new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader reader = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
            }catch (SqlException ex) { MessageBox.Show(ex.Message); }
            ID = txtID.Text;
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            
            String name="", surname="";
            try
            {
                
                sql = @"Select name from [patients] WHERE [ID] LIKE '%"+ID+"'";
                cmd = new SqlCommand(sql, conn);
                reader = cmd.ExecuteReader();
                if (reader.Read()) {
                    name =(string)reader["name"];
                }
                cmd.Dispose();
                reader.Close();
                sql = @"Select surname from [patients] WHERE [ID] LIKE '%" + ID + "'";
                cmd = new SqlCommand(sql, conn);
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    surname = (string)reader["surname"];
                }
                cmd.Dispose();
                
            }
            catch (SqlException ex) 
            {
                MessageBox.Show(ex.Message);
            }


            HttpCookie cookie = new HttpCookie("Info");
            cookie["Name"] = name;
            cookie["Surname"] = surname;
            cookie["ID"] = ID;
            Response.Cookies.Add(cookie);
            Response.Redirect("DisplayPatientInfo.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String delete = txtDeleteID.Text;
                sql = @"Delete from [patients] WHERE [ID] = '" + delete + "'";
                cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                MessageBox.Show("Item was deleted successfully");

            }catch (SqlException ex) 
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}