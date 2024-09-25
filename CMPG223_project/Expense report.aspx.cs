using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Configuration;

namespace CMPG223_project
{
    public partial class Expense_report : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\NGO.mdf;Integrated Security=True;Connect Timeout=30";
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
            try
            {
                ds = new DataSet();
                sql = @"Select ExpenseID,Expense_Category,Expense_Name,Date_Of_Expense from [Add_Expense_Table] ";
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
                conn.Close();

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
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Expense Report" + DateTime.Now + ".xls";
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

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            Add_Expense_Form form = new Add_Expense_Form();
            Calendar date = (Calendar)form.FindControl("Calender1");
            this.Controls.Add(date);
            DateTime month = date.SelectedDate;
            string selected = month.ToString("MMMM");
            //string date = dropCat.SelectedValue;
            try
            {
                if (dropCat.SelectedIndex > 0)
                {
                    
                    ds = new DataSet();
                    sql = @"Select " + selected + "  from [patients] ";
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