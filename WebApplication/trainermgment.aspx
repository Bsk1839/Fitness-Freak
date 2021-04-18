<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="trainermgment.aspx.cs" Inherits="WebApplication.trainermgment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                     <div class="card-body">
                         
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h4>Trainers Detail</h4>
                                 </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <center><img width="100px" src="images/trainer.png" />
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-4">
                                 <label>Trainer_ID</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                    <asp:TextBox class="form-control" ID="txttid" runat="server" placeholder="ID"></asp:TextBox>

                                     <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                           
                                         </div>
                                 </div>
                             </div>
                        

                             <div class="col-md-8">
                                 <label>Trainer_Name</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txttname" runat="server" placeholder="trainer_name" ></asp:TextBox>
                                   </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                                 <label>Contact</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtcontact" runat="server" placeholder="contact_no" TextMode="Number"></asp:TextBox>
                                   </div>
                             </div>

                             <div class="col-md-6">
                                 <label>Joined Date</label>
                                  <div class="form-group">
                                     <asp:TextBox class="form-control" ID="txtdate" runat="server" placeholder="joined_date" TextMode="Date"></asp:TextBox>
                                   </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <label>Address</label>
                                  <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtaddress" runat="server" placeholder="address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                   </div>
                             </div>
                         </div>
                    
                          <div class="row">
                             <div class="col-4">
                                 <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />  
                            </div>

                               <div class="col-4">
                                 <asp:Button ID="Button3" class="btn btn-lg btn-block btn-primary" runat="server" Text="Update" OnClick="Button3_Click" />  
                            </div>

                              <div class="col-4">
                                 <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />  
                            </div>
                         </div>
                 

                </div>

                <a href="homepage.aspx"><b><< Back to Home</b></a><br /><br />
    </div>
</div>

            <div class="col-md-7">
                <div class="card">
                     <div class="card-body">
                         

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h4>Trainers List</h4>
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymmngConnectionString %>" SelectCommand="SELECT * FROM [trainer_master_tbl]"></asp:SqlDataSource>
                             <div class="col">
                                 <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trainer_id" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="trainer_id" HeaderText="trainer_id" ReadOnly="True" SortExpression="trainer_id" />
                                         <asp:BoundField DataField="trainer_name" HeaderText="trainer_name" SortExpression="trainer_name" />
                                         <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                                         <asp:BoundField DataField="joined_date" HeaderText="joined_date" SortExpression="joined_date" />
                                         <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
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
