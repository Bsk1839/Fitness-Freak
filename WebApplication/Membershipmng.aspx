<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Membershipmng.aspx.cs" Inherits="WebApplication.Membership" %>
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
            <div class="col-md-5 ">
                <div class="card">
                     <div class="card-body">
                         

                        <div class="row">
                             <div class="col">
                                 <center>
                                     <h4>Membership</h4>
                                 </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <center><img width="100" src="images/images6.jpg" />
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
                                 <label>Member_ID</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                    <asp:TextBox class="form-control" ID="txtuserid" runat="server" placeholder="member_id"></asp:TextBox>
                                          
                                         </div>
                                 </div>
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Membership</label>
                                  <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" ReadOnly="True">
                                        <asp:ListItem Text="--select--" Value="select" />
                                        <asp:ListItem Text="1 Month" Value="1 Month" />
                                        <asp:ListItem Text="2 Months" Value="2 Months" />
                                        <asp:ListItem Text="3 Months" Value="3 Months" />
                                        <asp:ListItem Text="6 Months" Value="6 Months" />
                                        <asp:ListItem Text="1 Year" Value="1 Year" />
                                        </asp:DropDownList>
                                   </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                                 <label>Join Date</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="join_date" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                          
                                         </div>
                                 </div>
                             </div>
                        

                             <div class="col-md-6">
                                 <label>Timming</label>
                                  <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server" ReadOnly="True">
                                        <asp:ListItem Text="--select--" Value="select" />
                                        <asp:ListItem Text="6AM-7AM" Value="1 Month" />
                                        <asp:ListItem Text="7AM-8AM" Value="2 Months" />
                                        <asp:ListItem Text="8AM-9AM" Value="3 Months" />
                                        <asp:ListItem Text="7PM-8PM" Value="6 Months" />
                                        <asp:ListItem Text="8AM-9PM" Value="1 Year" />
                                        </asp:DropDownList>
                                   </div>
                             </div>
                         </div>

             
                    
                          <div class="row">
                            
                               <div class="col-12">
                                   <center>
                                 <asp:Button ID="Button3" class="btn btn-lg btn-block btn-danger" runat="server" Text="Cancle Membership" OnClick="Button3_Click" />  
                                       </center>
                            </div>

                             
                         </div>
                 </div>

                </div>

                <a href="homepage.aspx"><b><< Back to Home</b></a><br /><br />
    </div>

            <div class="col-md-7">
                <div class="card">
                     <div class="card-body">
                         

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h4>Membership List</h4>
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymmngConnectionString %>" SelectCommand="SELECT Membership_tbl.user_id, Membership_tbl.membership, Membership_tbl.join_date, Membership_tbl.timming, Payment_master_tbl.full_name, Payment_master_tbl.card_number, Payment_master_tbl.expiration_month, Payment_master_tbl.expiration_year, Payment_master_tbl.cvv, Payment_master_tbl.amount, Payment_master_tbl.status, Payment_master_tbl.user_id AS Expr1 FROM Membership_tbl INNER JOIN Payment_master_tbl ON Membership_tbl.user_id = Payment_master_tbl.user_id"></asp:SqlDataSource>
                             <div class="col">
                                 <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="user_id" HeaderText="User ID" ReadOnly="True" SortExpression="user_id" />
                                         <asp:BoundField DataField="membership" HeaderText="Membership" SortExpression="membership" />
                                         <asp:BoundField DataField="join_date" HeaderText="Joining Date" SortExpression="join_date" />
                                         <asp:BoundField DataField="card_number" HeaderText="Card Number" SortExpression="card_number" />
                                         <asp:BoundField DataField="amount" HeaderText="Paid" SortExpression="amount" />
                                         <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
