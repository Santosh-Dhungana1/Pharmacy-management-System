using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Seller_User_Management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            // Get data from database and bind to gridPharmacists
            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Email");

            // Example data
            DataRow dr = dt.NewRow();
            dr["Name"] = "John Doe";
            dr["Email"] = "john.doe@example.com";
            dt.Rows.Add(dr);

            gridPharmacists.DataSource = dt;
            gridPharmacists.DataBind();
        }

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string name = txtName.Text;
        string email = txtEmail.Text;

        // Save to database

        BindGrid();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        string name = txtName.Text;
        string email = txtEmail.Text;

        // Update database

        BindGrid();
    }
}