using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    private SantoshProject.Models.Functions Con;

    protected void Page_Load(object sender, EventArgs e)

    {
        Con = new SantoshProject.Models.Functions();
    }
   

   

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        string username = txtUsername.Text;
        string password = txtPassword.Text;

        // Validate username and password against your database or another authentication source
        if (username == "admin" && password == "password")
        {
            // Login successful, redirect to the intended page or the default page
            Response.Redirect("Medicine.aspx");
        }
        else
        {
            // Login failed, show an error message
            lblerror.Text = "Invalid username or password.";
            lblerror.Visible = true;
        }
    }
}