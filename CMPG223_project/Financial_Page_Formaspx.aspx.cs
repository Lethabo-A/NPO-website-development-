﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace CMPG223_project
{
    public partial class Financial_Page_Formaspx : System.Web.UI.Page
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
            else if (DropDownList4.SelectedIndex == 3)
            {
                Response.Redirect("Expense report.aspx");
            }
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            string add_income = DropDownList4.SelectedItem.ToString();
            if (DropDownList5.SelectedIndex == 1)
            {
                /*
                Add_Expense_Form add_Expense_Form = new Add_Expense_Form();
                add_Expense_Form.changeLabel1("Adding Income");
                add_Expense_Form.changeLabel2("Income category:");
                add_Expense_Form.changeLabel6("Income name");
                add_Expense_Form.changeLabel5("Date of income");
                add_Expense_Form.hide_add_expense_button();
                */

                //Label1.Text = "sdeafgdfgdsfgd";
                Response.Redirect("Add_Income_Form.aspx");
            }
            else if (DropDownList5.SelectedIndex == 3)
            {
                Response.Redirect("Income report.aspx");
            }
            else if (DropDownList5.SelectedIndex == 4)
            {
                Response.Redirect("Donations.aspx");
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Financial Reports.aspx");
            if (DropDownList3.SelectedIndex == 1)
            {
                Response.Redirect("Financial Reports.aspx");
            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }


        protected void DropDownList7_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Response.Redirect("Financial_Policies_And_Proceduresaspx.aspx");
            if (DropDownList7.SelectedIndex == 1)
            {

                Response.Redirect("Financial_Policies_And_Proceduresaspx.aspx");
            }
        }

    }
}