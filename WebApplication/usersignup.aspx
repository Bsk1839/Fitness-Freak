<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                 <p style="text-align:center"><img width="90" src="images/userlogin.jpg" />
                                 </p>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <p style="text-align:center">
                                     <b>Member Sign Up</b>
                                 </p>
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
                                    <asp:TextBox class="form-control" ID="txtfullname" runat="server" placeholder="full_name" ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name." ControlToValidate="txtfullname" ForeColor="Red"></asp:RequiredFieldValidator> 

                                 </div>
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Date Of Birth</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtdob" runat="server" placeholder="dob" TextMode="Date"></asp:TextBox>
                                   </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                                 <label>Contact No.</label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtcontact" runat="server" placeholder="contact_no" TextMode="Number" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contact number is required." ControlToValidate="txtcontact" ForeColor="Red"></asp:RequiredFieldValidator> 

                                      </div>
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Email_ID</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtemail" runat="server" placeholder="email_id" TextMode="Email"></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Email must contain @ symbol" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                
                                   </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-4">
                                 <label>State</label>
                                 <div class="form-group">
                                     <asp:DropDownList class="form-control" ID="ddselect" runat="server">
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
                                     <asp:TextBox class="form-control" ID="txtcity" runat="server" placeholder="city" ></asp:TextBox>
                                   </div>
                             </div>

                             <div class="col-md-4">
                                 <label>Pincode</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpincode" runat="server" placeholder="pincode" TextMode="Number"></asp:TextBox>
                               
                                       </div>
                             </div>
                         </div>

                        <div class="row">
                             <div class="col">
                                 <label>Full Address</label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtaddress" runat="server" placeholder="full_address" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                             <div class="col-md-6">
                                 <label>Member_ID</label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtuserid" runat="server" placeholder="member_id" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter ID" ControlToValidate="txtuserid" ForeColor="Red"></asp:RequiredFieldValidator> 

                                 </div>
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Password</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtpwd" runat="server" placeholder="password" TextMode="Password" ></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="At least 8 characters length " ControlToValidate="txtpwd" ForeColor="Red"></asp:RegularExpressionValidator> 

                                  </div>
                             </div>
                         </div>
                         
                    
                          <div class="row">
                             <div class="col">
                                   <div class="form-group">
                                     <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="btnsignup" runat="server" Text="Sign Up" OnClick="Button1_Click" />
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
