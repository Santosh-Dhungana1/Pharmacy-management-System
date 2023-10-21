using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Seller_Billing : System.Web.UI.Page
{
    SantoshProject.Models.Functions Con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new SantoshProject.Models.Functions();
        if (IsPostBack)
        {
            ShowMedicines();
            DataTable dt = new DataTable();
            dt.Columns.AddRange(
                new DataColumn[5]
                {
                new DataColumn("ID"),
                new DataColumn("Product"),
                 new DataColumn("Price"),
                  new DataColumn("Quantity"),
                   new DataColumn("Total")
                }
                );
            ViewState["Bill"] = dt;
            this.BindGrid();
        }
       }
    protected void BindGrid()
    {
        BillGV.DataSource = (DataTable)ViewState["Bill"];
        BillGV.DataBind();
    }
    
   
    private void ShowMedicines()
     {
         string Query = "select MedCode as Code,MedName as Medicine,MedPrice as Price,MedStock as Stock from MedicineTbl";
         MedicinesList.DataSource = Con.GetData(Query);
         MedicinesList.DataBind();
     }
    string Mcode;
    int Stock;
    protected void MedicinesList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Mcode = MedicinesList.SelectedRow.Cells[1].Text;
        MedNameTb.Value = MedicinesList.SelectedRow.Cells[2].Text;
        MedPriceTb.Value = MedicinesList.SelectedRow.Cells[3].Text;
       Stock = Convert.ToInt32( MedicinesList.SelectedRow.Cells[4].Text);
        
}

    int Seller;/*=Login.Sid;*/
    private void InsertBill()
    {
        try
        {
            string Query = "insert into BilingTbl values('{0}','{1}','{2}')";
            Query = string.Format(Query, BillingDate.Value, Seller, Amount);
            Con.SetData(Query);
           
            ErrMsg.InnerText = "Bill Inserted!!!";
        }
        catch(Exception Ex)
        {
            ErrMsg.InnerText = Ex.Message; 
        }
    }
    private void UpdateStock()
    {
        int newQty;
        newQty = Convert.ToInt32(MedicinesList.SelectedRow.Cells[4].Text) - Convert.ToInt32(MedQtyTb.Value);
     
        /* I use medprice instead od Medstcok */
        string Query = "update MedicineTbl set MedStock ={0} where MedCode ='{1}'";
        Query=string.Format(Query, newQty, MedicinesList.SelectedRow.Cells[1].Text);
        Con.SetData(Query);
        ShowMedicines();
        
    }
    int GrdTotal = 0;
    public static int Amount;

    protected void AddtoBillBtn_Click(object sender, EventArgs e)
    {
        if (MedNameTb.Value == "" || MedPriceTb.Value == "" || MedQtyTb.Value == "")
        {
            ErrMsg.InnerText = "Missing Information";
        }
        else
        {
            int Total = Convert.ToInt32(MedPriceTb.Value) * Convert.ToInt32(MedPriceTb.Value);
            DataTable dt = (DataTable)ViewState["Bill"];
            dt.Rows.Add(BillGV.Rows.Count + 1,
                MedNameTb.Value.Trim(),
                MedPriceTb.Value.Trim(),
                MedQtyTb.Value.Trim(),
            Total
                );
            ViewState["Bill"] = dt;
            this.BindGrid();
            
            UpdateStock();
            ErrMsg.InnerText = "Medicine Added  to  Bill !!!";
            GrdTotal = 0;
            
            for (int i = 0; i <= BillGV.Rows.Count - 1; i++)
            {
                GrdTotal = GrdTotal + Int32.Parse(BillGV.Rows[i].Cells[4].Text);
            }
            Amount = GrdTotal;
            GrdTotTb.InnerText = "Rs" + GrdTotal;
            MedNameTb.Name = "";
            MedPriceTb.Value = "";
            MedQtyTb.Value = "";
            
        }

    }

    protected void ResetBtn_Click(object sender, EventArgs e)
    {
        
        MedNameTb.Name = "";
        MedPriceTb.Value = "";
        MedQtyTb.Value = "";

    }

    protected void PrintBtn_Click(object sender, EventArgs e)
    {
        InsertBill();


    }
}
