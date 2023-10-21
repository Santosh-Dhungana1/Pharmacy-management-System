<%@ Page Title="" Language="C#" MasterPageFile="~/view/Seller/SellerMasterPage.master" AutoEventWireup="true" CodeFile="ValidityCheck.aspx.cs" Inherits="view_Seller_ValidityCheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" Runat="Server">
  
    <div>
        <h1 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Validity Check</h1>
    <label for="productName">&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="productName" name="productName" required />
        <br />
      <br />
  </div>
  <div>
    <label for="expirationDate">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Expiration Date:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="date" id="expirationDate" name="expirationDate" required />
      <br />
      <br />
  </div>
  <div>
    <label for="quantity">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="number" id="quantity" name="quantity" required />
  </div>
  <div>
    &nbsp;&nbsp;
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#FF6600" />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
          <Columns>
              <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
              <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
              <asp:BoundField DataField="ExpirationDate" HeaderText="ExpirationDate" SortExpression="ExpirationDate" />
              <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlinepharmacyConnectionString %>" SelectCommand="SELECT * FROM [ValidityCheck] WHERE ([ExpirationDate] = @ExpirationDate)">
          <SelectParameters>
              <asp:ControlParameter ControlID="GridView1" DbType="Date" Name="ExpirationDate" PropertyName="SelectedValue" />
          </SelectParameters>
      </asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
  </div>

</asp:Content>

