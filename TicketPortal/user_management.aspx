<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_management.aspx.cs" Inherits="TicketPortal.user_management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="nav navbar-default" style="width:auto;height:100px;background-color:crimson" ><asp:Label ID="lbl" runat="server" Font-Names="Bahnschrift" Font-Size="XX-Large">User Management</asp:Label></span></nav>
    <form id="form1" runat="server">
        <table border="0">
            <tr>
                <td style="width:200px;height:auto;">
                  <asp:TreeView ID="treeview1" runat="server" ImageSet="Contacts" NodeIndent="10">
                      <HoverNodeStyle Font-Underline="False" />
                      <Nodes>
                          <asp:TreeNode Text="User Managment" Value="User Managment">
                              <asp:TreeNode Text="Add User" Value="User Add"></asp:TreeNode>
                              <asp:TreeNode Text="Delete User " Value="User Delete"></asp:TreeNode>
                              <asp:TreeNode Text="Update User" Value="Update User"></asp:TreeNode>
                          </asp:TreeNode>
                      </Nodes>
                      <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                      <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
                      <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>           
                </td>
                <td style="width:800px;height:auto;">
                    



<div style="width:500px;height:800px">
       <asp:Panel runat="server" CssClass="panel-info">
        <div class="panel panel-body" style="width:500px">
            <span>User ID:<br /></span>
            <asp:TextBox ID="usr_id" runat="server" CssClass="form form-control" ></asp:TextBox><br />

            <span>Name:<br /></span>
            <asp:TextBox ID="txtname" runat="server" CssClass="form form-control"></asp:TextBox><br />

            <span>User Name:<br /></span>
            <asp:TextBox ID="usr_name" runat="server" CssClass="form form-control"></asp:TextBox><br />

            <span>Password:<br /></span>
            <asp:TextBox ID="usr_password" runat="server" CssClass="form form-control" MaxLength="10" TextMode="Password"></asp:TextBox><br />

            <span>User Department:<br /></span>
            <asp:TextBox ID="usr_dept" runat="server" CssClass="form form-control"></asp:TextBox><br />

            <span>User Full Rights:<br /></span>
            <asp:CheckBox ID="usr_full" runat="server" Text="Full Access" CssClass="btn-danger checkbox" /><asp:TextBox ID="usr_fullrights" runat="server" CssClass="form form-control"></asp:TextBox><br />

            <span>User Med Rights:<br /></span>
            <asp:CheckBox ID="usr_med" runat="server" Text="Med Access" /><asp:TextBox ID="usr_medrights" runat="server" CssClass="form form-control"></asp:TextBox><br />
            
            <span>User No Rights:<br /></span>
            <asp:CheckBox ID="usr_no" runat="server" Text="Not Access" /><asp:TextBox ID="usr_norights" runat="server" CssClass="form form-control"></asp:TextBox><br />
            <br />
            <asp:Button id="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Create User" OnClick="btnCreate_Click" />
             

        </div>
           </asp:Panel>
    </div>
                </td>
                <td style="width:200px;height:auto;"></td>
            </tr>
        </table>
                      
    </form>  
</body>
    
</html>
