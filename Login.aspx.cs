using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;

namespace edible
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True");
            conn.Open();
            string checkuser = "select count(*) from Register where email = '" + email.Value + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkpasswordQuery = "select pass from Register where email = '" + email.Value + "'";
                SqlCommand passcom = new SqlCommand(checkpasswordQuery, conn);
                string password = passcom.ExecuteScalar().ToString();
                if (password == pass.Value)
                {
                    Session["New"] = email.Value;
                    Response.Redirect("Homepage.aspx");
                    Response.Write("Password is Correct");
                }
                else
                {
                    Response.Write("Password is NOT Correct");
                }
            }
            else
            {
                Response.Write("Email is NOT Correct");
            }
        }
    }
}