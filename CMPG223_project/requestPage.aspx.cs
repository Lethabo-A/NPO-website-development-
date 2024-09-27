using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace requestReports
{
    public partial class requestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("requestFinancial.aspx");
        }

        protected void medicalBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("requestMedical.aspx");
        }
    }
}