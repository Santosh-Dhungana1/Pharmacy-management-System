<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" StyleSheetTheme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="stylesheet" href="../../lib/css/bootstrap.min.css"/>
    <style>
       {
           font-family:Poppins;
       }
        </style>
</head>
   
<body class="bg-success">
    <form id="form1" runat="server">
        <div>
        </div>
      <div class="container-fluid">

          <div class="row mt-5 mb-3">
              <div class="col-md-3"></div>
              <div class="col-md-6 bg-white">
                  <h3 class="text-center"  >Pharmacy Management System</h3>
                  <p class="text-center" style="font-size: large; font-weight: bolder; color: #FF0000"  >Admin LoginPage</p>
                  <p class="text-center"  >&nbsp;</p>



                  <div>
            <h2>Login</h2>
           
            <asp:Label runat="server" ID="lblUsername" Text="Username:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtUsername" ></asp:TextBox>
                      <br />
                      <br />
            <asp:Label runat="server" ID="lblPassword" Text="Password:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox><br />
            <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" BackColor="#CCCCCC" ToolTip="To login" />
                      <asp:Label ID="lblerror" runat="server"></asp:Label>
                      <br />
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/view/Seller/Slogin.aspx">Seller</asp:HyperLink>
        </div>

    </form>
          
</body>
</html>
