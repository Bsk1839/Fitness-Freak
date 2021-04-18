<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
         <img src="images/gym6.jpg" class="img-fluid" />

    </section>

    <section>
        <div class="container">
            <div class="row">
                
                <div class="col-12">
                    <center>
                    <h2>>Our features<</h2>
                     </center>
                </div>
                 
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150" src="images/gym4.jpg" />
                    <a href="TrainersDetails.aspx"><h4><b>Trainer</b></h4></a>
                    <p class="text-justify">Trainers are shoes that people wear,especially for running and other sports.
                    </p>
                     </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img width="150" src="images/gym3.jpg" />
                    <a href="ViewEquipment.aspx"><h4><b>Equipments</b></h4></a>
                    <p class="text-justify"> It matters little how much equipment we use; it matters much that we be masters of all wedo use.
                    </p>
                     </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img width="150" src="images/gym5.jpg" />
                   <a href="Membership.aspx"> <h4><b>Membership</b></h4></a>
                    <p class="text-justify">If you're looking for a welcoming gym community with the staff,top notch equiment,
                        Fully Sanitised and Covid staf clubs,you've come to the right place
                    </p>
                     </center>
                </div>

                
            </div>
        </div>
    </section>

    <section>
         <img src="images/gym2.jpg" class="img-fluid"/>

    </section>
   
</asp:Content>
