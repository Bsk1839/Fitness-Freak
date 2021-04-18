<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="WebApplication.UserLogin" %>
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
                                 <center><img width="130" src="images/userlogin.jpg" />
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h4><b>Member Login</b></h4>
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                  <label>Member ID</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtuserlogin" runat="server" placeholder="member id"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter ID." ControlToValidate="txtuserlogin" ForeColor="Red"></asp:RequiredFieldValidator> 

                                 </div>

                                 <label>Password</label>
                                  <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtpwdlogin" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter password." ControlToValidate="txtpwdlogin" ForeColor="Red"></asp:RequiredFieldValidator> 

                                  </div>

                                 <div class="form-group">
                                     <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                  </div>

                                 <div class="form-group">
                                     <a href="usersignup.aspx"><input id="Button2" class="btn btn-info btn-block btn-lg" type="button" value="Sign Up" /> </a>
                                 </div>

                                 <a href="ForgotPassword.axps">Forgot Password?</a>
                             </div>
                         </div>


                      </div>

                </div>

                <a href="homepage.aspx"><b><< Back to Home</b></a><br /><br />
    </div>

    </div>

    </div>
</asp:Content>
