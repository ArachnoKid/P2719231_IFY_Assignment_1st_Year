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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void payButton_Click(object sender, EventArgs e)
        {


            String insertQuery = "INSERT INTO [dbo].[Payments] ([PayMethod],[CardHolderName],[CardNo],[ExpiryDate],[Security_Code]) VALUES (@PM,@CHN,@CN,@ED,@SC)";
            String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.Add("@PM", SqlDbType.VarChar);
                com.Parameters["@PM"].Value = PayMethod.Value;

                com.Parameters.Add("@CHN", SqlDbType.VarChar);
                com.Parameters["@CHN"].Value = CardHolderName.Value;

                com.Parameters.Add("@CN", SqlDbType.VarChar);
                com.Parameters["@CN"].Value = CardNo.Value;

                com.Parameters.Add("@ED", SqlDbType.VarChar);
                com.Parameters["@ED"].Value = ExpDate.Value;

                com.Parameters.Add("@SC", SqlDbType.VarChar);
                com.Parameters["@SC"].Value = SecNo.Value;

                try
                {
                    conn.Open();
                    int rowsAffected = com.ExecuteNonQuery();

                    Console.WriteLine(rowsAffected + "row(s) affected");
                    Response.Write("Payment Successul");
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex);
                }

            }
        }
    }
}