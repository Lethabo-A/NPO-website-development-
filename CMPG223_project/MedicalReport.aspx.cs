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
using System.IO;

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
            lblDateTime.Text = "Report generated on: " + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMain"].ConnectionString);
            //conn = new SqlConnection(connectionString);
            conn.Open();
            try
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
            }
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

            }
            catch (SqlException sqlEx)
            {
                MessageBox.Show(sqlEx.Message);
            }

        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            //takes value from the selected dropdownlist
            string category = dropCat.SelectedItem.Text;
            try
            {
                if (dropCat.SelectedIndex > 0)
                {
                    ds = new DataSet();
                    sql = @"Select '[" + category + "]'  from [patients] ";
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
        public override void VerifyRenderingInServerForm(Control control)
        {
            //this is required to avoid the error that pops up
        }
        protected void btnReport_Click1(object sender, EventArgs e)
        {
            //this code generates a excel file that the user can save and it has all the information from the database in
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "MedicalReport" + DateTime.Now + ".xls";
            StringWriter writer = new StringWriter();
            HtmlTextWriter htmltxtwrt = new HtmlTextWriter(writer);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltxtwrt);
            Response.Write(writer.ToString());
            Response.End();
        }
    }
}