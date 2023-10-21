<%@ Page Title="" Language="C#" MasterPageFile="~/view/Seller/SellerMasterPage.master" AutoEventWireup="true" CodeFile="ViewMedicine.aspx.cs" Inherits="view_Seller_ViewMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="VIEW" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MedCode" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MedCode" HeaderText="MedCode" ReadOnly="True" SortExpression="MedCode" />
            <asp:BoundField DataField="MedName" HeaderText="MedName" SortExpression="MedName" />
            <asp:BoundField DataField="MedPrice" HeaderText="MedPrice" SortExpression="MedPrice" />
            <asp:BoundField DataField="MedStock" HeaderText="MedStock" SortExpression="MedStock" />
            <asp:BoundField DataField="MedExpDate" HeaderText="MedExpDate" SortExpression="MedExpDate" />
            <asp:BoundField DataField="MedCategory" HeaderText="MedCategory" SortExpression="MedCategory" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinepharmacyConnectionString %>" SelectCommand="SELECT [MedCode], [MedName], [MedPrice], [MedStock], [MedExpDate], [MedCategory] FROM [MedicineTbl] WHERE ([MedPrice] = @MedPrice)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="MedPrice" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

