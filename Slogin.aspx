<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Slogin.aspx.cs" Inherits="view_Seller_Slogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link  rel="stylesheet" href="../../lib/css/bootstrap.min.css"/>
    <style>
    </style>
</head>
<body class="bg-success">
      <div class="container-fluid"/>

          <div class="row mt-5 mb-3">
              <div class="col-md-3"></div>
              <div class="col-md-6 bg-white">
                  <h3 class="text-center"  >Pharmacy Management System</h3>
                  <p class="text-center" style="font-size: large; font-weight: bolder; font-style: oblique; color: #FF0000"  >Seller Login Page</p>
                  <form runat="server">
                     
  <div class="mb-3">
                     
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label"  >Email address</label>
    <input type="email" class="form-control" id="EmailTb" runat="server" autocomplete="off"  aria-describedby="emailHelp" required />
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" minlength="8" maxlength="20" class="form-control" id="PasswordTb" runat="server" autocomplete="off"  required/></div>
      <br />
  </div>        
                      <div class="d-grid mb-3">
                         <label id="ErrMsg" class="text-danger" runat="server"></label>
                         <a href="../Admin/Login.aspx" class="text-success">Admin</a>

<asp:Button ID="LoginBtn" runat="server"   Text="Login" class="btn btn-success btn-block" OnClick="LoginBtn_Click" />
                          <br />

                        
      </div>
                      </form>
              </div>
              <div class="col-2"></div>
         
      </div> 
    
    
   
</body>
</html>
