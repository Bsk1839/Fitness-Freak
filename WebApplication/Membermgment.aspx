<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Membermgment.aspx.cs" Inherits="WebApplication.Membermgment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
           <div class="row">
              <div class="col-md-6 ">
                <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h4>Members Detail</h4>
                                 </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <center><img width="100px" src="images/userlogin.jpg" />
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-3">
                                 <label>Member_ID</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                    <asp:TextBox class="form-control" ID="txtmemberid" runat="server" placeholder="id"></asp:TextBox>

                                     <asp:LinkButton CssClass="btn btn-primary" ID="btngo" runat="server" OnClick="btngo_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                           
                                         </div>
                                 </div>
                             </div>
                             <div class="col-md-4">
                                 <label>Full Name</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtfname" runat="server" placeholder="full_name" ReadOnly="True"></asp:TextBox>
                                   </div>
                             </div>
                        

                             <div class="col-md-5">
                                 <label>Account Status</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                    <asp:TextBox class="form-control" ID="txtac" runat="server" placeholder="status" ReadOnly="True"></asp:TextBox>
                                                   
                            <asp:LinkButton CssClass="btn btn-success" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                             <asp:LinkButton CssClass="btn btn-warning" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                             <asp:LinkButton CssClass="btn btn-danger" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                           
                                         </div>
                                   </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-3">
                                 <label>DOB</label>
                                 <div class="form-group">
                              
                               <asp:TextBox class="form-control" ID="txtdob" runat="server" placeholder="DOB" ReadOnly="True"></asp:TextBox>

                                 </div>
                               </div>

                             <div class="col-md-4">
                                 <label>Contact_No</label>
                                 <div class="form-group">
                              
                               <asp:TextBox class="form-control" ID="txtcontact" runat="server" placeholder="contact_no" ReadOnly="True"></asp:TextBox>

                                 </div>
                              </div>
                             <div class="col-md-5">
                                 <label>Email_ID</label>
                                 <div class="form-group">
                              
                               <asp:TextBox class="form-control" ID="txtemail" runat="server" placeholder="email_id" ReadOnly="True"></asp:TextBox>

                                 </div>
                               </div>
                         </div>

                         <div class="row">
                             <div class="col-md-4">
                                 <label>State</label>
                                 <div class="form-group">
                              
                               <asp:TextBox class="form-control" ID="txtstate" runat="server" placeholder="state" ReadOnly="True"></asp:TextBox>

                                 </div>
                               </div>

                            <div class="col-md-4">
                                 <label>City</label>
                                 <div class="form-group">
                              
                               <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="city" ReadOnly="True"></asp:TextBox>

                                 </div>
                               </div>
                              <div class="col-md-4">
                                 <label>Pincode</label>
                                 <div class="form-group">
                              
                               <asp:TextBox class="form-control" ID="txtpincode" runat="server" placeholder="pincode" ReadOnly="True"></asp:TextBox>

                                 
                               </div>
                         </div>

                    </div>
                          <div class="row">
                             <div class="col-12">
                                 <label>Full Address</label>
                                 <div class="form-group">
                              
                               <asp:TextBox class="form-control" ID="txtadds" runat="server" placeholder="full_address" ReadOnly="True" TextMode="MultiLine" Rows="2"></asp:TextBox>

                                 </div>
                               </div>
                          </div>


                    
                          <div class="row">
                             
                              <div class="col-8 mx-auto">
                                 <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete Member Permanently" OnClick="Button4_Click" />  
                            </div>
                         </div>
                 </div>

                

            
            
    </div>
               
                   <a href="homepage.aspx"><b><< Back to Home</b></a><br /><br />
    </div>

            <div class="col-md-6">
                <div class="card">
                     <div class="card-body">
                         

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h4>Members List</h4>
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymmngConnectionString %>" SelectCommand="SELECT * FROM [User_master_table]"></asp:SqlDataSource>
                             <div class="col">
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                             <Columns>
                                 <asp:BoundField DataField="user_id" HeaderText="Member ID" ReadOnly="True" SortExpression="user_id" />
                                 <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                 <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                 <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                 <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                 <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                             </Columns>
                            
                                    
                                 </asp:GridView>
                               </div>
                           </div>
            
                   
                 </div>

                </div>
            </div>
    </div>

 </div>

</asp:Content>
