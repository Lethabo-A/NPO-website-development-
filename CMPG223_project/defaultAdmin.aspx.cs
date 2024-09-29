using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_project
{
    public partial class defaultAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnstaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("Maintain_Staff.aspx");

        }

        protected void btnOccupants_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefaultOccupants.aspx");

        }

        protected void btndonations_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donations.aspx");

        }

        protected void btnfinances_Click(object sender, EventArgs e)
        {
            Response.Redirect("Financial_Page_Formaspx.aspx");

        }

        protected void btnpatients_Click(object sender, EventArgs e)
        {
            Response.Redirect("FindPatient.aspx");

        }
    }
}