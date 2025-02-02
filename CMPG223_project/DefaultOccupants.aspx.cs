﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_project
{
    public partial class DefaultOccupants : System.Web.UI.Page
    {
        protected void Bntview_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewOccupants.aspx");
        }

        protected void Bntadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Approve.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateOccupants.aspx");
        }

        protected void BtnRemove_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteOccupant.aspx");
        }

        protected void BtnReports_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportOccupant.aspx");
        }
    }
}