<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelpdeskPortal.aspx.cs" Inherits="TicketPortal.HelpdeskPortal" %>

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
            .pointer{cursor:pointer;}
.box
{
    width: 100px;
    height: 20px;
    
    margin: auto;
    color: black;
    text-align: left;
}

.box:hover
{
    -webkit-box-shadow: 2px 2px 2px 2px black;
-moz-box-shadow: 2px 2px 2px 2px #e8e8e8;
box-shadow: 2px 2px 2px 2px #e8e8e8; 
}

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
        <nav class="nav navbar-default navbar-fixed-top" style="width:auto;height:35px;background-color:crimson" ><img class="glyphicon-credit-card" src="user.png" onclick="ImageOnclick_click" width="35" height="35" style="text-align:right"/>&nbsp<span class="badge icon-bar"><asp:Label ID="name" runat="server" ></asp:Label></span><span style="margin-left:450px;"><asp:Button ID="Logoutbtn" BackColor="Crimson" CssClass="btn btn" Text="Logout" runat="server" OnClick="Logoutbtn_Click" ForeColor="White" /></span></nav>   
       <br/><br/>
        <table border="0" style="height:auto;width:auto;">
                   <tr>
                       <td style="width:200px;height:auto;">
                           <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" Font-Names="Century Gothic"  OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                               <HoverNodeStyle Font-Names="Century Gothic" Font-Underline="True" ForeColor="#5555DD" />
                               <Nodes>
                                   <asp:TreeNode Text="User Management" Value="User Management">
                                       <asp:TreeNode  Text="Add User" Value="Add User"></asp:TreeNode>
                                       <asp:TreeNode Text="Delete User" Value="Delete User"></asp:TreeNode>
                                       <asp:TreeNode Text="Update User" Value="Update User"></asp:TreeNode>
                                   </asp:TreeNode>
                                   <asp:TreeNode Text="Ticket" Value="Ticket">
                                       <asp:TreeNode Text="Assign Ticket" Value="Assign Ticket"></asp:TreeNode>
                                       <asp:TreeNode Text="Unassignee Ticket" Value="Unassignee Ticket"></asp:TreeNode>
                                       <asp:TreeNode Text="Open Ticket" Value="New Node"></asp:TreeNode>
                                       <asp:TreeNode Text="Close Ticket" Value="New Node"></asp:TreeNode>
                                       <asp:TreeNode Text="Pending Ticket" Value="New Node"></asp:TreeNode>
                                       <asp:TreeNode Text="Update Ticket" Value="Update Ticket"></asp:TreeNode>
                                   </asp:TreeNode>
                               </Nodes>
                               <NodeStyle Font-Names="Century Gothic" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                               <ParentNodeStyle Font-Bold="False" />
                               <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" ForeColor="#5555DD" />
                           </asp:TreeView>
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
                               <div class="panel panel-default" style="height:40px;width:810px;">
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Label ID="assign" runat="server" Font-Bold="false" Font-Names="Century Gothic">Assign to:</asp:Label>
                                   <asp:DropDownList ID="drpuser" Font-Names="Century Gothic" runat="server" CssClass="btn btn-default dropdown-toggle" OnInit="drpuser_DropDownList" Font-Size="Smaller" BackColor="Crimson" ForeColor="WhiteSmoke" EnableTheming="true" OnSelectedIndexChanged="drpuser_SelectedIndexChanged" AutoPostBack="True">
                                   </asp:DropDownList>
                                   <asp:TextBox ID="txtID" runat="server" Font-Names="Century Gothic" CssClass="auto-style3" BorderWidth="0"></asp:TextBox>
                               </div>

                               <div class="panel panel-default" style="height:250px;width:810px;">
                                   
                                   <br />&nbsp<asp:TextBox ID="TxtComment" runat="server" Font-Names="Century Gothic" CssClass="form form-control" Width="600px"></asp:TextBox>
           
                                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   
                                   <asp:CheckBox ID="btnclose" runat="server" Font-Names="Century Gothic" Text="Close" ForeColor="Black" />
                                   <asp:Button ID="btnupdate" runat="server" Font-Names="Century Gothic" Text="Update" ForeColor="White" BackColor="Crimson" CssClass="btn btn" OnClick="btnupdate_Click" />
                                   
                                   
                                   <asp:Repeater ID="rptComment" runat="server">
                                   <ItemTemplate>
                                       <div>
                                           <table>
                                               <tr><th><%# Eval("ticket_comment") %></th></tr>
                                           </table>
                                       </div>
                                   </ItemTemplate>
                                   </asp:Repeater>
                                   
                                   
                               </div>
            </div>
                       </td>
                       
                       <td style="width:200px;height:400px;"></td>
                   </tr>

               </table>
    </form>
</body>
</html>
