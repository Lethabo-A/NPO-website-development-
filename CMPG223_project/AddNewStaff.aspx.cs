using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;


namespace CMPG223_project
{
    public partial class AddNewStaff : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\Documents\\CMPG223\\CMPG223_Project_Staff\\CMPG223_group20Project\\CMPG223_project\\App_Data\\NGO.mdf;Integrated Security=True"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            lblOutput.Visible = false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //adding new staff
           
            SqlCommand cmd = new SqlCommand("insert into Staff values ('" + txtName.Text + "','" + txtSurname.Text + "','" + txtContact.Text + "','" + txtAddress.Text + "','" + txtWord.Text + "')", con);
            cmd.ExecuteNonQuery();
            //close the database
            con.Close();
            //show label after successfully adding a staff to the database
            lblOutput.Visible = true;
            lblOutput.Text = "A staff was successfully added..";
            //GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //redirect page to update staff page 
            Response.Redirect("UpdateStaff.aspx");
        }
    }
}