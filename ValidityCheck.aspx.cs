using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_Seller_ValidityCheck : System.Web.UI.Page
{
    SantoshProject.Models.Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new SantoshProject.Models.Functions();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
            string productName = Request.Form["productName"];
            string expirationDate = Request.Form["expirationDate"];
            int quantity = Convert.ToInt32(Request.Form["quantity"]);

            string connectionString = "Data Source=DESKTOP-UJ9SFIK;Initial Catalog=onlinepharmacy;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                //string query = "INSERT INTO Table(ProductName, ExpirationDate, Quantity) VALUES (@ProductName, @ExpirationDate, @Quantity)";
            string query = "insert into ValidityCheck  (ProductName, ExpirationDate, Quantity) values (@productName, @expirationDate, @quantity)";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@ProductName", productName);
            command.Parameters.AddWithValue("@ExpirationDate", expirationDate);
            command.Parameters.AddWithValue("@Quantity", quantity);
               

            command.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
