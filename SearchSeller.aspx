<%@ Page Title="" Language="C#" MasterPageFile="~/view/Admin/Admin'smasterpage.master" AutoEventWireup="true" CodeFile="SearchSeller.aspx.cs" Inherits="view_Admin_SearchSeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" Runat="Server">
    <br />
    <br />
    <br />
   <b>Search the Seller By Their Name :</b> <asp:TextBox ID="TextBox1" runat="server" Height="29px" ToolTip="enter name of seller" Width="194px" Required></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Search"  />
    &nbsp;<br />
    <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SelId" DataSourceID="SqlDataSource1" EmptyDataText="No Record Found enter another seller" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="SelId" HeaderText="SelId" InsertVisible="False" ReadOnly="True" SortExpression="SelId" />
            <asp:BoundField DataField="SelName" HeaderText="SelName" SortExpression="SelName" />
            <asp:BoundField DataField="SelPass" HeaderText="SelPass" SortExpression="SelPass" />
            <asp:BoundField DataField="SelEmail" HeaderText="SelEmail" SortExpression="SelEmail" />
            <asp:BoundField DataField="SelDOB" HeaderText="SelDOB" SortExpression="SelDOB" />
            <asp:BoundField DataField="SelGen" HeaderText="SelGen" SortExpression="SelGen" />
            <asp:BoundField DataField="SelAdd" HeaderText="SelAdd" SortExpression="SelAdd" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinepharmacyConnectionString %>" SelectCommand="SELECT [SelId], [SelName], [SelPass], [SelEmail], [SelDOB], [SelGen], [SelAdd] FROM [SellerTbl] WHERE ([SelName] LIKE '%' + @SelName +'%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="SelName" PropertyName="Text" Type="String" DefaultValue="%" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

