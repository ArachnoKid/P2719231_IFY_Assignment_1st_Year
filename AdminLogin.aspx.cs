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
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True");
                conn.Open();
                string checkuser = "select count(*) from AdminLogin where ID = '" + email.Value + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    conn.Open();
                    string checkpasswordQuery = "select pass from AdminLogin where ID = '" + email.Value + "'";
                    SqlCommand passcom = new SqlCommand(checkpasswordQuery, conn);
                    string password = passcom.ExecuteScalar().ToString();
                    if (password == pass.Value)
                    {
                        Session["New"] = email.Value;
                        Response.Redirect("Admin_Page.aspx");
                        Response.Write("Password is Correct");
                    }
                    else
                    {
                        Response.Write("Password is NOT Correct");
                    }
                }
                else
                {
                    Response.Write("ID is NOT Correct");
                }
            }
        }
    }
}