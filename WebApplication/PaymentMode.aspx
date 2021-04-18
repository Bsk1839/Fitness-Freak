<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentMode.aspx.cs" Inherits="WebApplication.PaymentMode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        
        .auto-style2 {
            width: 608px;
        }
        .auto-style3 {
            width: 224px;
        }
        .auto-style4 {
            width: 374px;
        }
                
    </style>
</head>
<body >
    <form id="form1" runat="server" target="s">
   
        <table style="border:outset ; border-color:black" align="center" class="auto-style2">
            <tr>
                <td colspan="3">
                     <center><img height="80" width="100" src="images/payimg1.jpg" /> </center>
                                     
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <p style="text-align:center ; font-size:x-large ">
                                     <b>Card Details</b>
                                 </p>
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <label style="font-size:x-large">User_ID</label>
                </td>
                <td colspan="2" class="auto-style4">
                    <asp:TextBox ID="txtuserid" runat="server" placeholder="user_id" Height="27px" Width="366px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Please enter user ID" ControlToValidate="txtuserid" ForeColor="Red"></asp:RequiredFieldValidator>             
           
                </td>
            </tr>
            <tr>
               <td class="auto-style3">
               
                                     <label style="font-size:x-large">
                                     Full Name<br />
                                     (on the card)</label>
                                
                   </td>
           
                <td colspan="2" class="auto-style4">
                
                      <asp:TextBox class="form-control" ID="txtfullname" runat="server" placeholder="full_name" Height="27px" Width="366px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Please enter full name" ControlToValidate="txtfullname" ForeColor="Red"></asp:RequiredFieldValidator>             
            </td>
                    </tr>
            
            <tr>
                <td class="auto-style3">
                       <label style="font-size:x-large">
                      Card Number</label> 
                </td>
                <td colspan="2"  class="auto-style4">
                    <asp:TextBox class="form-control" ID="txtcard" runat="server" placeholder="16 Digits" TextMode="Number" Height="27px" Width="357px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Card number must be of 16 digits" ControlToValidate="txtcard" ForeColor="Red" ValidationExpression="[0-9]{16}"></asp:RegularExpressionValidator>          
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                 <label style="font-size:x-large">Expiration</label> 
                </td>
                <td colspan="2"  class="auto-style4">
               
                                     <asp:DropDownList class="form-control" ID="ddselect" runat="server" Height="36px" Width="161px">
                                         <asp:ListItem Text="MM" Value="select" />
                                         <asp:ListItem Text="01-Jan" Value="01-Jan" />
                                         <asp:ListItem Text="02-Feb" Value="02-Feb" />
                                         <asp:ListItem Text="03-Mar" Value="03-Mar" />
                                         <asp:ListItem Text="04-Apr" Value="04-Apr" />
                                         <asp:ListItem Text="05-May" Value="05-May" />
                                         <asp:ListItem Text="06-Jun" Value="06-Jun" />
                                         <asp:ListItem Text="07-Jul" Value="07-Jul" />
                                         <asp:ListItem Text="08-Aug" Value="08-Aug" />
                                         <asp:ListItem Text="09-Sept" Value="09-Sept" />
                                         <asp:ListItem Text="10-Oct" Value="10-Oct" />
                                         <asp:ListItem Text="11-Nov" Value="11-Nov" />
                                         <asp:ListItem Text="12-Dec" Value="12-Dec" />
                    
                                    </asp:DropDownList>  
                                     <asp:DropDownList class="form-control" ID="ddselect2" runat="server" Height="36px" Width="162px">
                                         <asp:ListItem Text="YYYY" Value="select" />
                                         <asp:ListItem Text="2020" Value= "2020" />
                                         <asp:ListItem Text="2021" Value="2021" />
                                         <asp:ListItem Text="2022" Value="2022" />
                                         <asp:ListItem Text="2023" Value="2023" />
                                         <asp:ListItem Text="2024" Value="2024" />
                                         <asp:ListItem Text="2025" Value="2025" />
                                         <asp:ListItem Text="2026" Value="2026" />
                                         <asp:ListItem Text="2027 " Value="2027" />
                                        
                    
                                    </asp:DropDownList>  
                                    
                </td>
               
            </tr>
            <tr>
                <td>
                 <label style="font-size:x-large">CVV</label>
                    </td>
                <td colspan="2" >
                       <asp:TextBox class="form-control" ID="txtcvv" runat="server" placeholder="cvv" TextMode="Number" Height="27px" Width="178px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="CVV number must be of 3 digits" ControlToValidate="txtcvv" ForeColor="Red" ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>      
                </td>
            </tr>
            <tr>
                 <td>
                 <label style="font-size:x-large">Enter amount</label>
                    </td>
                <td colspan="2" >
                       <asp:TextBox class="form-control" ID="txtamount" runat="server" placeholder="amount" TextMode="Number" Height="27px" Width="178px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter amount" ControlToValidate="txtamount" ForeColor="Red"></asp:RequiredFieldValidator>       
                </td>
            </tr>
            <tr>
                <td>
                 
                        &nbsp;&nbsp;&nbsp;&nbsp;
                 
                        <asp:Button ID="btnpay" class="auto-style1" runat="server" Text="Confirm and Pay" OnClick="Button3_Click"  Height="40px" Width="180px" BackColor="#66FFFF" Font-Bold="True" Font-Size="Medium" />
                            
                </td>
                <td>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Button ID="btnreset" class="auto-style1" runat="server" Text="Reset" OnClick="Button1_Click"  Height="40px" Width="180px" BackColor="Red" Font-Bold="True" Font-Size="Medium" />
                     
                </td>
            </tr>
            
            <tr>
                <td rowspan="2">
                      <br />
                      <b>
                      <a href="Membership.aspx">Previous Page </a> 
                      </b> 
                </td>
                <td rowspan="2">
                    <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <a href="homepage.aspx"><b> Back to Home</b></a>
                </td>
            </tr>
        </table>
                                

   </form>
</body>
</html>
