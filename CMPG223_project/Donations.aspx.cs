using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_project
{
    public partial class Donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void myButton_Click(object sender, EventArgs e)
        {
            string donorName = Request.Form["firstname"];
            string donorLastName = Request.Form["lastname"];
            string donorEmail = Request.Form["eMail"];
            string donorPhoneNumb = Request.Form["phoneNumb"];
            string date = Request.Form["date"];
            string donatedAmount = Request.Form["dAmount"];
            string bankAccount = Request.Form["banks"];
        }
    }
}