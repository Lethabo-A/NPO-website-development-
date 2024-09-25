﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System. Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CMPG223_project
{
    public partial class Maintain_Staff : System.Web.UI.Page
    {
        //declaring gloabal vaariables 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\Documents\\CMPG223\\CMPG223_Project_Staff\\CMPG223_group20Project\\CMPG223_project\\App_Data\\NGO.mdf;Integrated Security=True"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //opening our database
            con.Open();

            //hide other labels 
            lblAdd.Visible = false;
            lblUpdate.Visible = false;
            lblRemove.Visible = false;  
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //adding a staff to the database 
            SqlCommand cmd = new SqlCommand("insert into Staff values ('" + txtName.Text + "','" + txtSurname.Text + "','" + txtContact.Text + "','" + txtAddress.Text + "','" + txtWord.Text + "')", con);
            cmd.ExecuteNonQuery();
            //close the database
            con.Close();
            //show label after successfully adding a staff to the database
            lblAdd.Visible = true;
            lblAdd.Text = "A staff was successfully added..";
            GridView1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}