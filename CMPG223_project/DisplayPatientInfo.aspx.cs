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
using System.Net;
using System.Security.Cryptography;
using System.Windows.Controls;
using System.Data.SqlTypes;

namespace CMPG223_project
{
	public partial class DisplayPatientInfo : System.Web.UI.Page
    {//variables and verification
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
            lblDateTime.Text = "Report generated on: " + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            //establish cookeis and open connection
            cookie = Request.Cookies["Info"];
        try
        {
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
                //conn = new SqlConnection(connectionString);
                conn.Open();
        }
        catch (SqlException ex) { MessageBox.Show(ex.Message); }
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
            //update the relevant patients information with the new diagnosis the doctor can come up with
            conn.Open();
            string index = listCat.SelectedItem.Text;
            string updatedValue = txtChanges.Text;
            if (listCat.SelectedIndex > 0 && updatedValue != "")
            {
                string updateQuery = "UPDATE [patients] SET ["+index +"] = @update WHERE ID = @id";
                cmd = new SqlCommand(updateQuery, conn);
                using (cmd)
                {
                    //cmd.Parameters.AddWithValue("@index", index);
                    cmd.Parameters.AddWithValue("@update", updatedValue);
                    cmd.Parameters.AddWithValue("@id", cookie["ID"]);
                    int c = cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    if (c > 0)
                        MessageBox.Show("The item was updated successfully for: " + cookie["name"] + " " + cookie["surname"]);
                    else
                        MessageBox.Show("The update could not bve completed");
                }
                //display the new information with the edited information
                sql = "Select * from [patients] WHERE [ID] LIKE '%" + cookie["ID"] + "'";
                cmd = new SqlCommand(sql, conn);
                dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
                MessageBox.Show("Please select a proper value/enter proper values");
        }
        catch (SqlException ex)
        {
            MessageBox.Show(ex.Message);
        }
    }
    public void establish()
    {

        //method for displaying the patients relevant information after search
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