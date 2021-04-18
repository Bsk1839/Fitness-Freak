<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="WebApplication.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto ">
                <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                 <center><img width="90px" src="images/userlogin.jpg" />
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h5><b>Your Profile</b></h5>
                                     <span>Account Status - </span>
                                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Status">

                                           </asp:Label>
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                                 <label>Full Name</label>
                                 <div class="form-group">
                                     
                                    <asp:TextBox CssClass="form-control" ID="txtfname" runat="server" placeholder="Full Name"></asp:TextBox>
                                     
                                         </div>
                                
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Date Of Birth</label>
                                  <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtdob" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                   </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                                 <label>Contact No.</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtcontact" runat="server" placeholder="Contact No." TextMode="Number"></asp:TextBox>
                                 </div>
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Email_ID</label>
                                  <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtenail" runat="server" placeholder="Email_ID" TextMode="Email"></asp:TextBox>
                                   </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-4">
                                 <label>State</label>
                                 <div class="form-group">
                                     <asp:DropDownList class="form-control" ID="dd1" runat="server">
                                         <asp:ListItem Text="--Select--" Value="select" />
                                         <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                         <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                         <asp:ListItem Text="Assam" Value="Assam" />
                                         <asp:ListItem Text="Bihar" Value="Bihar" />
                                         <asp:ListItem Text="Chattisgarh" Value="Chattisghar" />
                                         <asp:ListItem Text="Goa" Value="Goa" />
                                         <asp:ListItem Text="Haryana" Value="Haryana" />
                                         <asp:ListItem Text="Himachal Pradesh" Value="Himachal" />
                                         <asp:ListItem Text="Jammu & Kashmir" Value="Jammu & Kashmir" />
                                         <asp:ListItem Text="Jharkhand" Value="Jharkhad" />
                                         <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                         <asp:ListItem Text="Kerala" Value="Kerala" />
                                         <asp:ListItem Text="Mahatrashtra" Value="Maharashta" />
                                         <asp:ListItem Text="Manipur" Value="Maipur" />
                                         <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                         <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                         <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                         <asp:ListItem Text="Odisha" Value="Odisa" />
                                         <asp:ListItem Text="Punjab" Value="Punjab" />
                                         <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                         <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                         <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                         <asp:ListItem Text="Telangana" Value="Telangana" />
                                         <asp:ListItem Text="Tripura" Value="Tripura" />
                                         <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                         <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                         <asp:ListItem Text="West Bengal" Value="West Bengal" />

  

                                     </asp:DropDownList>  
                                 </div>
                             </div>
                        

                             <div class="col-md-4">
                                 <label>City</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtcity" runat="server" placeholder="City" ></asp:TextBox>
                                   </div>
                             </div>

                             <div class="col-md-4">
                                 <label>Pincode</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpincode" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                   </div>
                             </div>
                         </div>

                        <div class="row">
                             <div class="col">
                                 <label>Full Address</label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtaddress" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                          <div class="row">
                             <div class="col">
                                 <center>
                                 <span class="badge badge-pill badge-info">Login Credentials</span>
                                     </center>
                            </div>
                         </div>

                        <div class="row">
                             <div class="col-md-4">
                                 <label>User_ID</label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtuserid" runat="server" placeholder="User_ID" ReadOnly="True"></asp:TextBox>
                                 </div>
                             </div>
                        

                             <div class="col-md-4">
                                 <label>Old Password</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpwd" runat="server" placeholder="Password"  ReadOnly="True"></asp:TextBox>
                                   </div>
                             </div>

                            <div class="col-md-4">
                                 <label>New Password</label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtnewpwd" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                         
                    
                          <div class="row">
                             <div class="col">
                                   <div class="form-group">
                                       <center>
                                     <asp:Button CssClass="btn btn-primary btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" Width="133px" />
                                           </center>
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
