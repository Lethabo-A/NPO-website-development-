using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Runtime.Remoting.Contexts;
using System.Xml.Linq;

namespace CMPG223_group20_0_
{
    public partial class frmLogin : Form
    {
        string connection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\StaffDatabase.mdf;Integrated Security=True;Connect Timeout=30";
        public frmLogin()
        {
            InitializeComponent();
        }

        private void frmLogin_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connection);
            }
            catch
            {
                MessageBox.Show("something doesnt work lol");
            }
        }
    }
}
