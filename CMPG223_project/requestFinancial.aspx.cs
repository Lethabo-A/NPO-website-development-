using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace requestReports
{
    public partial class requestFinancial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("donationsReport.aspx");
        }

        protected void expenditureBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExpenditureReport.aspx");
        }
    }
}