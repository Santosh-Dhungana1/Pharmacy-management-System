<%@ Page Title="" Language="C#" MasterPageFile="~/view/Admin/Admin'smasterpage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="view_Admin_Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" Runat="Server">
      <h2>  Welcome To Category  Page</h2>  
    <div class="row mt-5"></div>
    
            <div class="col-md-1"> </div>
             <div class="col-md-10 bg-white"> 
            <div class="row"></div>
            <div class="col-6" >
                <div class="row mb-3">
                    <div class="col">
                         <input type="text" class="form-control" autocomplete="off" placeholder="Categories Name" id="CatNameTb" runat="server" required> </div>
                                <div class="col">
                                    &nbsp;</div>
                   </div>
                 
                <div class="row">
                    <label id="ErrMsg" class="text-danger" runat="server"></label>
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
  
            </div>

             <div class="col-7">
                 <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Categories List</h1>
                 <asp:GridView  ID="CategoryList" class="table table-success" runat="server" Width="767px" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="CategoryList_SelectedIndexChanged">
                     <AlternatingRowStyle BackColor="White" />
                     <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                     <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                     <SortedAscendingCellStyle BackColor="#FDF5AC" />
                     <SortedAscendingHeaderStyle BackColor="#4D0000" />
                     <SortedDescendingCellStyle BackColor="#FCF6C0" />
                     <SortedDescendingHeaderStyle BackColor="#820000" />
                 </asp:GridView>
             </div>
             
             <div class="col-md-1"> </div>
           

        </div>
    
</asp:Content>

