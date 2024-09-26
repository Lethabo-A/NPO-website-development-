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
            // Check if all items in CheckBoxList1 are selected
            /*bool allSelected = true;

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
                // Proceed to the next page
                Response.Redirect("AddOccupants.aspx"); // Replace with your next page URL
            }
            else
            {
                // Show a message indicating that not all items are selected
                lblMessage.Text = "Please select all options before proceeding.";
            }*/
        }
    }
}