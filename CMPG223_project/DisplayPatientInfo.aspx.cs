using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;
using System.Configuration;
using System.Windows;

namespace WebApplication1
{
    public partial class DisplayPatientInfo : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\User\Downloads\223 doctor\WebApplication1\App_Data\PatientsInfo.mdf"";Integrated Security=True";
        String sql = "";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        HttpCookie cookie;
        SqlDataReader dr;
        string pID;
        protected void Page_Load(object sender, EventArgs e)
        {
            cookie = Request.Cookies["Info"];
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); ;
            conn.Open();
            pID = cookie["ID"];
            establish();
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
                txtChanges.Visible = true;
                lblChanges.Visible = true;
                btnUpdate.Visible = true;
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                    conn.Open();
            
                    string index = listCat.SelectedItem.Value;
                    string updatedValue = txtChanges.Text;
                    string updateQuery = "UPDATE [patients] SET "+index+" = @update WHERE ID = @id";
                    cmd = new SqlCommand(updateQuery , conn);
                    using (cmd)
                    {
                        //cmd.Parameters.AddWithValue("@index", index);
                        cmd.Parameters.AddWithValue("@update", updatedValue);
                        cmd.Parameters.AddWithValue("@id", cookie["ID"]);
                        cmd.ExecuteNonQuery();
                        cmd.Dispose();
                    }
                    sql = "Select * from [patients] WHERE [ID] LIKE '%" + cookie["ID"] +"'";
                    cmd = new SqlCommand(sql, conn);
                    dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
            }
            catch (SqlException ex) 
            {
                MessageBox.Show(ex.Message);
            }
        }
        public void establish()
        {
            

            if (cookie != null)
            {
                lblDisplay.Text = "Showing the information of: " + cookie["name"] + " " + cookie["surname"];
            }
            ds = new DataSet();
            sql = "Select * from [patients] WHERE [ID] LIKE '%" + cookie["ID"] + "'";
            cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
           
            conn.Close();
            
            
        }
        }
    }
