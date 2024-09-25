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
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //go to add staff page 
            Response.Redirect("AddNewStaffPage.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdateStaffPage_Click(object sender, EventArgs e)
        {
            //go to update staff page 
            Response.Redirect("UpdateNewStaffPage.aspx");
        }

        protected void btnRemoveStaffPage_Click(object sender, EventArgs e)
        {
            //go to remove staff page 
            Response.Redirect("RemoveStaffPage.aspx");
        }
    }
}