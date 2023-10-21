<%@ Page Title="" Language="C#" MasterPageFile="~/view/Admin/Admin'smasterpage.master" AutoEventWireup="true" CodeFile="Seller.aspx.cs" Inherits="Seller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" Runat="Server">
    <div class="container-fluid">
        <div class="row"> 

        </div>
        <div class="row mt-5"></div>
            <div class="col-md-1"> </div>
            
            <div class="row"></div>
            <div class="col-6" >
                <div class="row mb-3">
                    <div class="col">
                         <input type="text" class="form-control" placeholder="Seller name" runat="server" id="SNameTb" required><br />
                                 <input type="email" class="form-control" placeholder="Seller Email" runat="server" id="SEmailTb" required/><br />
                         <input type="password" minlength="8" maxlength="20" class="form-control"  placeholder="Seller Password" runat="server"  id="PasswordTb"  required/><br />
                        <input type="text" class="form-control" placeholder="Address of Seller"  id="SAddressTb" runat="server" text="multiline"  requiredrequired multiple="multiple" /><br />
                        <input type="date" class="form-control" placeholder=" Seller DoB" runat="server" id="SDOBTb" /><br />
                        <asp:DropDownList class="form-control" runat="server"  placeholder="Gender" ID="GenTb"  required>
                            <asp:ListItem >Select Your Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                         </asp:DropDownList><br />
                    </div>
                    </div>
                         
                  </div>
                <div class="row">
                    <label class="text-danger" id="ErrMsg" runat="server"></label>
                    <div class="col d-grid">
                        <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-success btn-block" BackColor="#33CC33" BorderColor="Lime" ToolTip="To Edit" OnClick="EditBtn_Click" /> 
                    </div>
                   
                    <div class="col d-grid">
                       <asp:Button ID="SaveBtn" runat="server" Text="Save" class="btn btn-primary btn-block" BackColor="#0066FF" BorderColor="Blue" OnClick="SaveBtn_Click" />    
                    </div>
                    <div class="col d-grid">
                        <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger btn-block" BackColor="Red" BorderColor="Red" OnClick="DeleteBtn_Click" />
                        <br />
                    </div>

                </div>
  
           

             <div class="col-7">
                 <h1>Medicine List</h1>
                 <asp:GridView  ID="SellerList" class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="Medicinelist_SelectedIndexChanged"></asp:GridView>
             </div>
             
             <div class="col-md-1"> </div>
           

      
    </div>
</asp:Content>

