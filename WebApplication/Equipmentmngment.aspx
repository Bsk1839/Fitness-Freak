<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Equipmentmngment.aspx.cs" Inherits="WebApplication.Equipmentmngment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if(input.files && input.files[0])
            {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);

                };

                reader.readAsDataURL(input.files[0]);
            }
        }
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
                                     <h5><b>Equipment</b></h5>
                                 </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <center><img id="imgview" width="100" height="140" src="equipment_images/image17n.png" />
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
                                 <asp:FileUpload onchange="readURL(this);" class="form-control" ID="image_link" runat="server" />
                             </div>
                         </div>

                         <div class="row">

                             <div class="col-md-6">
                                 <label>Equipment ID </label>
                                  <div class="form-group">
                                     <div class="input-group">
                                     <asp:TextBox CssClass="form-control" ID="equipment_id" runat="server" placeholder="equipment_id" ></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary" ID="btngo" runat="server" Text="Go" OnClick="Button1_Click"/>
                                         </div>
                                   </div>
                             </div>
                             <div class="col-md-6">
                                 <label>Equipment Name</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="equipment_name" runat="server" placeholder="equipment_name"></asp:TextBox>
                                 </div>
                             </div>
                      </div>

                         <div class="row">

                             <div class="col-md-6">
                                 <label>Available Stock</label>
                                  <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtavailablestock" runat="server" placeholder="stock" ></asp:TextBox>
                                   </div>
                             </div>
                             <div class="col-md-6">
                                 <label>Cost</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="equipment_cost" runat="server" placeholder="cost" TextMode="Number"></asp:TextBox>
                                 </div>
                             </div>
      
                         </div>

                        <div class="row">
                             <div class="col">
                                 <label>Description</label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="equipment_description" runat="server" placeholder="description" TextMode="MultiLine" Rows="2" ></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                          
                         <div class="row">
                             <div class="col-4">
                                 <asp:Button ID="btnadd" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click"  />  
                            </div>

                               <div class="col-4">
                                 <asp:Button ID="btnupdate" class="btn btn-lg btn-block btn-primary" runat="server" Text="Update" OnClick="Button3_Click" />  
                            </div>

                              <div class="col-4">
                                 <asp:Button ID="btndel" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />  
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
                                 <center><img width="90" src="images/image17n.png" />
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h5>Gym Equipment</h5>
                                  
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymmngConnectionString %>" SelectCommand="SELECT * FROM [equipment_master_tbl]"></asp:SqlDataSource>
                             <div class="col">
                                 <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="equipment_id" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="equipment_id" HeaderText="ID" ReadOnly="True" SortExpression="equipment_id" >
                                         <ItemStyle Font-Bold="True" />
                                         </asp:BoundField>
                                        <%-- <asp:BoundField DataField="equipment_name" HeaderText="equipment_name" SortExpression="equipment_name" />
                                         <asp:BoundField DataField="available_stock" HeaderText="available_stock" SortExpression="available_stock" />
                                         <asp:BoundField DataField="equipment_cost" HeaderText="equipment_cost" SortExpression="equipment_cost" />
                                         <asp:BoundField DataField="equipment_description" HeaderText="equipment_description" SortExpression="equipment_description" />
                                         <asp:BoundField DataField="image_link" HeaderText="image_link" SortExpression="image_link" />
                                     --%>

                                         <asp:TemplateField>
                                             <ItemTemplate>
                                                 <div class="container-fluid">
                                                     <div class="row">
                                                         <div class="col-lg-10">
                                                             <div class="row">
                                                                 <div class="col-12">
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

                </div>
            </div>
    </div>

    </div>
</asp:Content>
