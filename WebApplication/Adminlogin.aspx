<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="WebApplication.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                 <p style="text-align:center"><img width="130"  src="images/Adminlogin.png" />
                                 </p>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <p style="text-align:center">
                                     <b>Admin Login</b>
                                 </p>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                               
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtadminlogin" runat="server" placeholder="admin_id"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter ID." ControlToValidate="txtadminlogin" ForeColor="Red"></asp:RequiredFieldValidator> 

                                 </div>

                            
                                  <div class="form-group">
                                    
                                     <asp:TextBox CssClass="form-control" ID="txtadminpwd" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter password." ControlToValidate="txtadminpwd" ForeColor="Red"></asp:RequiredFieldValidator> 

                                  </div>


                                 <div class="form-group">
                                     <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                  </div>

                              

                             </div>
                         </div>


                      </div>

                </div>

                <a href="homepage.aspx"><b><< Back to Home</b></a><br /><br />
    </div>

    </div>

    </div>
    



</asp:Content>
