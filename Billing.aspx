<%@ Page Title="" Language="C#" MasterPageFile="~/view/Seller/SellerMasterPage.master" AutoEventWireup="true" CodeFile="Billing.aspx.cs" Inherits="view_Seller_Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 85%;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: .25rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <h4 class="text-success">Pharmacy Medicine Billing</h4>
      </div>
       
        <div class="row" height="100"> 
            <div class="col-md-4"> <!-- Left Side Column-->

                <div class="row mb-3">
                    <div class="col">
                        <label class="h6 text-success"> Medicine Code</label>
                    <input type="text" class="form-control" placeholder="Medicine Name" runat="server" id="MedNameTb" autocomplete="off" ><br /> 
                 </div> 
                    <div class="col">
                        <label class="h6 text-success"> Medicine Price</label>
                <input type="text" class="form-control" placeholder="Medicine Name" runat="server" id="MedPriceTb"  autocomplete="off"><br /> 
                   </div>
                </div>
                <div class="row mb-3">
                    <div class="col">
                        <label class="h6 text-success"> Medicine Quantity</label>
                    <input type="text" class="auto-style1" placeholder="Medicine Quantity" runat="server" id="MedQtyTb" autocomplete="off" ><br /> 
                 </div> 
                    <div class="row mb-3">
                        <div class="col">
                        <label class="h6 text-success"> Billing Date</label>
                <input type="date" class="form-control"  runat="server" id="BillingDate"><br /> 
                   </div>
                </div>

                    <div class="row">
                        <label class="text-danger text-center" id="ErrMsg" runat="server"></label>
                        <div class="col d-grid">
                            <asp:Button ID="AddtoBillBtn" runat="server"   Text="Add ToBill" class="btn btn-success btn-block btn-block" OnClick="AddtoBillBtn_Click" />

                        </div>
                         <div class="col d-grid"> 
                             <asp:Button ID="ResetBtn" runat="server"   Text="Reset" class="btn btn-danger btn-block btn-block" OnClick="ResetBtn_Click"  />

                         </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>Categories List</h2>
                        <asp:GridView id="MedicinesList" class="table table-success" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MedicinesList_SelectedIndexChanged" >
                        </asp:GridView>
                         </div>
                           </div>
            </div>

            <div class="col-md-8"> 
                  <h2 class="text-center text-success">Client's Bill</h2>
                        <asp:GridView id="BillGV" class="table table-success" runat="server"   >
                  </asp:GridView>
                <div class="row">
                    <div class="col-5"></div>
                    <div class="col-6">
                         <label class="h4 text-danger text-center" id="GrdTotTb" runat="server"></label>
                    </div>
                </div>
               
                <div class="row">
                        <div class="col d-grid">
                            <asp:Button ID="PrintBtn" runat="server"   Text="Print" class="btn btn-success btn-block btn-block" OnClick="PrintBtn_Click" />

                        </div>
                         <div class="col d-grid"> 
                             <asp:Button ID="ClearBtn" runat="server"   Text="Clear" class="btn text-white btn-warning btn-block btn-block"  />

                         </div>
       
        </div>
        </div>
            <br />
        </div>
    
</asp:Content>

