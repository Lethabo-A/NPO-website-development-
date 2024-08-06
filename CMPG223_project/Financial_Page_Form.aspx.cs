using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_project
{
    public partial class Financial_Page_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            string add_expense = DropDownList4.SelectedItem.ToString();
            if (DropDownList4.SelectedIndex == 1)
            {
                
                //Label1.Text = "sdeafgdfgdsfgd";
                Response.Redirect("Add_Expense_Form.aspx");
            }

        }
    }
}