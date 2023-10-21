using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seller : System.Web.UI.Page
{
    SantoshProject.Models.Functions Con;
    private int key;

    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new SantoshProject.Models.Functions();
        if (IsPostBack)
        {
            ShowSellers();
        }
    }
    private void ShowSellers()
    {
        string Query = "select * from SellerTbl";
        SellerList.DataSource = Con.GetData(Query);
        SellerList.DataBind();
    }

    protected void SaveBtn_Click(object sender, EventArgs e)
    {
        try
        {
            if (SAddressTb.Value == "" || SEmailTb.Value == "" || PasswordTb.Value == "" || SAddressTb.Value == "")
            {
                ErrMsg.InnerText = "Missing Data!!!";
            }


            else
            {
                string SName = SNameTb.Value;
                string SEmail = SEmailTb.Value;
                string SPass = PasswordTb.Value;
                string SDOB = SDOBTb.Value;
                string SGen = GenTb.SelectedItem.Value;
                string SAdd = SAddressTb.Value;
                string Query = "Insert into SellerTbl values('{0}','{1}', '{2}','{3}','{4}','{5}')";
                Query = string.Format(Query, SName, SEmail, SPass, SDOB, SGen, SAdd);
                Con.SetData(Query);
                ShowSellers();
                ErrMsg.InnerText = "Seller Added";
                SNameTb.Value = "";
                SEmailTb.Value = "";
                PasswordTb.Value = "";
                GenTb.SelectedIndex = -1;
                SAddressTb.Value = "";
            }
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;


        }
    }

    protected void Medicinelist_SelectedIndexChanged(object sender, EventArgs e)
    {
        key = Convert.ToInt32(SellerList.SelectedRow.Cells[1].Text);
        SNameTb.Value = SellerList.SelectedRow.Cells[2].Text;
        SEmailTb.Value = SellerList.SelectedRow.Cells[3].Text;
        PasswordTb.Value = SellerList.SelectedRow.Cells[4].Text;
        GenTb.SelectedValue = SellerList.SelectedRow.Cells[6].Text;
        SAddressTb.Value = SellerList.SelectedRow.Cells[7].Text;


    }

    protected void EditBtn_Click(object sender, EventArgs e)
    {
          try
        {
            if (SAddressTb.Value == "" || SEmailTb.Value == "" || PasswordTb.Value == "" || SAddressTb.Value == "")
            {
                ErrMsg.InnerText = "Missing Data!!!";
            }


            else
            {
                string SName = SNameTb.Value;
                string SEmail = SEmailTb.Value;
                string SPass = PasswordTb.Value;
                string SDOB = SDOBTb.Value;
                string SGen = GenTb.SelectedItem.Value;
                string SAdd = SAddressTb.Value;
                string Query = "Update SellerTbl set SelName= '{0}',SelEmail ='{1}',SelPass= '{2}',SelDOB ='{3}',SelGen ='{4}',SelAdd ='{5}' where SelId={6}";
                Query = string.Format(Query, SName, SEmail, SPass, SDOB, SGen, SAdd, SellerList.SelectedRow.Cells[1].Text);
                Con.SetData(Query);
                ShowSellers();
                ErrMsg.InnerText = "Seller Updated";
                SNameTb.Value = "";
                SEmailTb.Value = "";
                PasswordTb.Value = "";
                GenTb.SelectedIndex = -1;
                SAddressTb.Value = "";
            }
        }
        catch (Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message;


        }
    }

    protected void DeleteBtn_Click(object sender, EventArgs e)
    {
        if (SNameTb.Value == "" || SAddressTb.Value == "" || SEmailTb.Value == "")
        {
            ErrMsg.InnerText = "Deleted Data!!!"; 
        }
        else
        {
            string SName = SNameTb.Value;
            string SEmail = SEmailTb.Value;
            string SPass = PasswordTb.Value;
            string SDOB = SDOBTb.Value;
            string SGen = GenTb.SelectedItem.Value;
            string SAdd = SAddressTb.Value;
            string Query = "delete from SellerTbl  where SelID = '{0}'";
            Query = string.Format(Query, SellerList.SelectedRow.Cells[1].Text);
            Con.SetData(Query);
            ShowSellers();
            ErrMsg.InnerText = "Seller Deleted!!!";
            SNameTb.Value = "";
            SEmailTb.Value = "";
            PasswordTb.Value = "";
            GenTb.SelectedIndex = -1;
            SAddressTb.Value = "";
        }
    }
}
