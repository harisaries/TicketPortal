<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignTicket.aspx.cs" Inherits="TicketPortal.AssignTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style type="text/css">
            .auto-style2 {
                width: 800px;
                height: 20px;
                margin-bottom: 0px;
            }
            .auto-style3 {
                min-height: 34px;
                padding-top: 7px;
                padding-bottom: 7px;
                margin-bottom: 0;
                margin-top: 0;
            }
            .txtbox{
                           border-bottom-left-radius:5px;
                           border-bottom-right-radius:5px;
                           border-top-left-radius:5px;
                           border-top-right-radius:5px;
                           border-top-width:1px;
                           border-bottom-width:1px;
                           
                       }
            
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="nav navbar-default navbar-fixed-top" style="width:auto;height:35px;background-color:crimson" ><img class="glyphicon-credit-card" src="user.png" onclick="ImageOnclick_click" width="35" height="35" style="text-align:right"/>&nbsp<span class="badge icon-bar"><asp:Label ID="name" runat="server" ></asp:Label></span><span style="margin-left:450px;"></span></nav>   
       <br/><br/>
        <table border="0" style="height:auto;width:auto;">
                   <tr>
                       <td style="width:200px;height:auto;">
                     
                       </td>
                       <td style="width:800px;height:400px;">
                           <div class="alert" style="width:820px;height:auto;">
        
                               <asp:Panel runat="server" BorderStyle="None" Width="810px">
                <div class="panel panel-default" style="height:250px;vertical-align:central;">
<asp:PlaceHolder ID="placeholder2" runat="server"></asp:PlaceHolder>
        <div class="auto-style2" style="width:800px;height:200px;overflow:scroll;background-color:white;">
            <br />
           
            <asp:PlaceHolder ID="placeholder1" runat="server"></asp:PlaceHolder>
            
        </div>
            </div></asp:Panel>
                               <div class="panel panel-default" style="height:250px;width:810px;">
                                   <asp:Label ID="assign" runat="server" Font-Bold="false" Font-Names="Century Gothic">Assign to:</asp:Label>
                                   <asp:TextBox ID="txtID" runat="server" Font-Names="Century Gothic" CssClass="auto-style3" BorderWidth="0"></asp:TextBox>
                                   <br />&nbsp<asp:TextBox ID="TxtComment" runat="server" Font-Names="Century Gothic" CssClass="form form-control" Width="600px"></asp:TextBox>
           
                                   <asp:Repeater ID="rptComment" runat="server">
                                   </asp:Repeater>
                                   
                                   
                               </div>
            </div>
                       </td>
                       
                       <td style="width:200px;height:400px;"></td>
                   </tr>

               </table>
        <div>
        </div>
    </form>
</body>
</html>
