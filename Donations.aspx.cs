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
    public partial class Donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void donateButton_Click(object sender, EventArgs e)
        {

                
            String insertQuery = "INSERT INTO [dbo].[Donations] ([dname],[charity],[amount],[currency],[method],[cardname],[cardnum],[expdate],[cvv]) VALUES (@Dname,@Charity,@Amount,@Currency,@PayMethod,@CH_name,@CardNo,@ExpDate,@SecNo)";

            String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True";


            using (SqlConnection conn = new SqlConnection(ConnectionString)) 
            {

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.Add("@Dname", SqlDbType.VarChar);
                com.Parameters["@Dname"].Value = Dname.Value;

                com.Parameters.Add("@Charity", SqlDbType.VarChar);
                com.Parameters["@Charity"].Value = charity.Value;

                com.Parameters.Add("@Amount", SqlDbType.VarChar);
                com.Parameters["@Amount"].Value = amount_input.Value;

                com.Parameters.Add("@Currency", SqlDbType.VarChar);
                com.Parameters["@Currency"].Value = currency.Value;

                com.Parameters.Add("@PayMethod", SqlDbType.VarChar);
                com.Parameters["@PayMethod"].Value = PayMethod.Value;

                com.Parameters.Add("@CH_name", SqlDbType.VarChar);
                com.Parameters["@CH_name"].Value = CardHolderName.Value;

                com.Parameters.Add("@CardNo", SqlDbType.VarChar);
                com.Parameters["@CardNo"].Value = CardNo.Value;

                com.Parameters.Add("@ExpDate", SqlDbType.VarChar);
                com.Parameters["@ExpDate"].Value = ExpDate.Value;

                com.Parameters.Add("@SecNo", SqlDbType.VarChar);
                com.Parameters["@SecNo"].Value = SecNo.Value;

                try
                {
                    conn.Open();
                    int rowsAffected = com.ExecuteNonQuery();

                    Console.WriteLine(rowsAffected + "row(s) affected");
                    response.InnerText = "Donation Successful!!!";
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex);
                }

            }

            }
        }

}

