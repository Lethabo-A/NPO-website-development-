using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_project
{
    public partial class Approve : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            
            bool allSelected = true;

            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (!item.Selected)
                {
                    allSelected = false;
                    break;
                }
            }

            if (allSelected)
            {
                
                Response.Redirect("AddOccupants.aspx"); 
            }
            else
            {
                // message indicating that not all items are selected
                lblMessage.Text = "Please select all options before proceeding.";
            }
        }
    }
}