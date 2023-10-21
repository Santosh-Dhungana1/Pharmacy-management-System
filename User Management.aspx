<%@ Page Title="" Language="C#" MasterPageFile="~/view/Seller/SellerMasterPage.master" AutoEventWireup="true" CodeFile="User Management.aspx.cs" Inherits="view_Seller_User_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" Runat="Server">
    <div>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><asp:TextBox ID="txtName" runat="server" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><asp:TextBox ID="txtEmail" runat="server" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnAdd" runat="server" Text="Add Pharmacist" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Pharmacist" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete Pharmacist" OnClick="btnDelete_Click" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="gridPharmacists" runat="server">
            </asp:GridView>
        </div>
   
</asp:Content>

