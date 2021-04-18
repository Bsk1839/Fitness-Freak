<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="WebApplication.Membership1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto ">
                <div class="card">
                     <div class="card-body">
                         

                        <div class="row">
                             <div class="col">
                                <center>
                                    <b> Membership </b>
                               </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                               <p style="text-align:center"><img width="100" src="images/images6.jpg" /> </p>
                                 
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                                 <label>User_ID</label>
                                 <div class="form-group">
                                     
                                    <asp:TextBox class="form-control" ID="txtuserid" runat="server" placeholder="user_id"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter ID." ControlToValidate="txtuserid" ForeColor="Red"></asp:RequiredFieldValidator>      
                                         </div>
                                
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Membership</label>
                                  <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="ddselect" runat="server">
                                        <asp:ListItem Text="--select--" Value="select" />
                                        <asp:ListItem Text="1 Month-600/-" Value="1 Month" />
                                        <asp:ListItem Text="2 Months-1200/-" Value="2 Months" />
                                        <asp:ListItem Text="3 Months-1500/-" Value="3 Months" />
                                        <asp:ListItem Text="6 Months-3000/-" Value="6 Months" />
                                        <asp:ListItem Text="1 Year-5000/-" Value="1 Year" />
                                        </asp:DropDownList>
                                   </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                                 <label>Join Date</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                    <asp:TextBox class="form-control" ID="txtjoindate" runat="server" placeholder="join_date" TextMode="Date" ></asp:TextBox>
                                          
                                         </div>
                                 </div>
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Timming</label>
                                  <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="ddselect2" runat="server">
                                        <asp:ListItem Text="--select--" Value="select" />
                                        <asp:ListItem Text="6AM-7AM" Value="6AM-7AM" />
                                        <asp:ListItem Text="7AM-8AM" Value="7AM-8AM" />
                                        <asp:ListItem Text="8AM-9AM" Value="8AM-9AM" />
                                        <asp:ListItem Text="7PM-8PM" Value="7PM-8PM" />
                                        <asp:ListItem Text="8AM-9PM" Value="8PM-9PM" />
                                        </asp:DropDownList>
                                   </div>
                             </div>
                      </div> 

                               
                                <div class="row">
                               <div class="col-md-12">
                                   <div class="form-group">
                                   <center>
                                     <asp:Button CssClass="btn btn-success btn-block btn-primary" ID="Button1" runat="server" Text="Proceed to Pay" OnClick="Button1_Click"  />
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
