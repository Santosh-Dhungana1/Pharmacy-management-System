<%@ Page Title="" Language="C#" MasterPageFile="~/view/Admin/Admin'smasterpage.master" AutoEventWireup="true" CodeFile="Medicine.aspx.cs" Inherits="view_Admin_Medicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" Runat="Server">
    <div class="container-fluid">
        
                        <br />
        <h2>  Welcome To Medicine Page</h2>

                                  <div>  
                                       <input type="text" class="form-control" placeholder="Medicine Code" runat="server" id="MedCodeTb" autocomplete="off" ><br /> 
                                      <input type="text" class="form-control" placeholder="Medicine Name" runat="server" id="MedNameTb"  autocomplete="off"></div><br /> 
        <input type="number"  class="form-control" placeholder="Medicine Price" runat="server" id="PriceTb"  autocomplete="off"><br />
                        <input type="number"  class="form-control" placeholder="Medicine Stock" runat="server" id="QtyTb"  autocomplete="off"><br />
                        <input type="date" class="form-control" runat="server"  id="ExpDate" ><br />
                         <asp:DropDownList class="form-control" runat="server"  id="CatCb">
                            <asp:ListItem Value=" ">Medicine Category</asp:ListItem>                          
                            
                             <asp:ListItem>Tablet</asp:ListItem>
                             <asp:ListItem>Injection</asp:ListItem>
                            
                         </asp:DropDownList><br />
                         </div>
           <div><br /></div>
            
           <div> </div><br />
        
       
                  
                 
                              
                  
                <div class="row">
                     <label id="ErrMsg" runat="server" class="text-danger"  style="text-align:center; font-size: xx-large; background-color: #C0C0C0;">
                        </label>
                    <div class="col d-grid">
                        <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-success btn-block" BackColor="#33CC33" BorderColor="Lime" ToolTip="To Edit" OnClick="EditBtn_Click" /><br /> 
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
                    <asp:GridView  ID="MedicineList" class="table table-success" runat="server" Width="767px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MedicineList_SelectedIndexChanged" >
                 </asp:GridView>
             </div>
             
             <div class="col-md-1"> </div>
           

      
</asp:Content>

