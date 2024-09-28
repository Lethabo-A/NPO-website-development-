using System;
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
        protected void btnUpdateStaffPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateStaff.aspx");
        }

        protected void btnRemoveStaffPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("RemoveStaffPage.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewStaffPage.aspx");
        }
    }
}