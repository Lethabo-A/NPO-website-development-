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

namespace CMPG223_project
{
    public partial class MedicalReport : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\User\Downloads\223 doctor\WebApplication1\App_Data\PatientsInfo.mdf"";Integrated Security=True";
        String sql = "";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); ;
            conn.Open();
            /*try
            {
                ds = new DataSet();
                sql = @"Select * from [patients] ";
                cmd = new SqlCommand(sql, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }
            catch (SqlException sqlEx)
            {
                MessageBox.Show(sqlEx.Message);
            }*/
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            try
            {
                ds = new DataSet();
                sql = @"Select * from [patients] ";
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
                
            }catch (SqlException sqlEx) 
            {
                MessageBox.Show(sqlEx.Message); 
            }

        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            //takes value from the selected dropdownlist
            string category = dropCat.SelectedValue;
            try
            {
                if (dropCat.SelectedIndex > 0)
                {
                    ds = new DataSet();
                    sql = @"Select " + category + "  from [patients] ";
                    cmd = new SqlCommand(sql, conn);
                    dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }
            catch (SqlException sqlEx)
            {
                MessageBox.Show(sqlEx.Message);
            }
        }
    }
}
