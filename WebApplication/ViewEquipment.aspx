<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewEquipment.aspx.cs" Inherits="WebApplication.ViewEquipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                           
                <div class="col">
                                 <center>
                                     <h3><b>Equipment List</b></h3>
                                 </center>
                    <div class="row">
                        <div class=" col-md-12">
                            <asp:Panel CssClass="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="false">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    </div>
                    <br />
                  <div class="row">
                      <div class="col-md-12">
                          
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymmngConnectionString %>" SelectCommand="SELECT * FROM [equipment_master_tbl]"></asp:SqlDataSource>
                             <div class="col">
                                 <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="equipment_id" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="equipment_id" HeaderText="ID" ReadOnly="True" SortExpression="equipment_id" >
                                         <ItemStyle Font-Bold="True" />
                                         </asp:BoundField>
                                       

                                         <asp:TemplateField>
                                             <ItemTemplate>
                                                 <div class="container-fluid">
                                                     <div class="row">
                                                         <div class="col-lg-10">
                                                             <div class="row">
                                                                 <div class="col-8">
                                                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("equipment_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                 </div>
                                                             </div>
                                                              <div class="row">
                                                                 <div class="col-12">

                                                                     Available-Stock:<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("available_stock") %>'></asp:Label>
                                                                     &nbsp;| Cost:<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("equipment_cost") %>'></asp:Label>

                                                                 </div>
                                                             </div>
                                                              <div class="row">
                                                                 <div class="col-12">

                                                                     Description:<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("equipment_description") %>'></asp:Label>

                                                                 </div>
                                                             </div>
                                                         </div>


                                                         <div class="col-lg-2">
                                                             <asp:Image ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("image_link") %>' />
                                                         </div>
                                                     </div>
                                                 </div>
                                             </ItemTemplate>
                                         </asp:TemplateField>

                                     </Columns>
                                 </asp:GridView>
                                
                             </div>
                         </div>
                 </div>

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact us to buy equipment:<u>+91 9975846213</u> 
  
      
            
       
      </div>
    
</asp:Content>
