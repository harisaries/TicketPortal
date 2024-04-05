<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketRaise.aspx.cs" Inherits="TicketPortal.TicketRaise" %>

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
    
    <form id="form1" runat="server">
    <nav class="nav navbar-default navbar-fixed-top" style="width:auto;height:35px;background-color:crimson" ><img class="glyphicon-credit-card" src="user.png" onclick="ImageOnclick_click" width="35" height="35" style="text-align:right"/>&nbsp<span class="badge icon-bar"><asp:Label ID="name" runat="server" ></asp:Label></span><span style="margin-left:450px;"><asp:Button ID="Logoutbtn" BackColor="Crimson" CssClass="btn btn" Text="Logout" runat="server" OnClick="Logoutbtn_Click" ForeColor="White" /></span></nav>        
        <br /><br />

        <div class="container-fluid">
            
            <asp:Panel runat="server" Width="600px">
            <div class="panel panel-primary">
                <div class="panel-heading" style="background-color:crimson">Tickes<p style="text-align:right"><asp:Label ID="nm" runat="server" ForeColor="White"></asp:Label><asp:LinkButton runat="server" BorderColor="Black" ID="checkbtn" ForeColor="White" OnClick="checkbtn_Click">Ticket Detail</asp:LinkButton></p></div>
                    <div class="panel-body">
                        <asp:Label runat="server">Ticket ID:</asp:Label><br />
                        <asp:TextBox ID="txtTicketId" runat="server" CssClass="form-control" Width="400px" Enabled="false"></asp:TextBox><br />
                        <asp:Label runat="server">Username:</asp:Label><br />
                        <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" Width="400px"></asp:TextBox><br />
                        <asp:Label runat="server">E-mail:</asp:Label><br />
                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Width="400px"></asp:TextBox><br />
                        <asp:Label runat="server">Extension:</asp:Label><br />
                        <asp:TextBox ID="txtExt" runat="server" CssClass="form-control" Width="400px"></asp:TextBox><br />
                        <asp:Label runat="server">Description:</asp:Label><br />
                        <asp:TextBox ID="txtDescp" runat="server" CssClass="form-control" Width="397px" TextMode="MultiLine" Height="150px"></asp:TextBox><br />
                        <asp:Label runat="server">Ticket To:</asp:Label><br />
                        <asp:DropDownList ID="txtTicket" runat="server" Width="400px" CssClass="btn btn-default dropdown-toggle">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Hardware</asp:ListItem>
                            <asp:ListItem>Software</asp:ListItem>
                        </asp:DropDownList><br />
                        <asp:Label runat="server">Department:</asp:Label><br />
                        <asp:DropDownList ID="deptdroplist" runat="server" Width="400px" CssClass="btn btn-default dropdown-toggle" OnSelectedIndexChanged="deptdroplist_SelectedIndexChanged">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList><br />
                        <asp:Label runat="server">Priority:</asp:Label><br />
                        <asp:DropDownList ID="txtPriority" runat="server" Width="400px" CssClass="btn btn-default dropdown-toggle">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Low</asp:ListItem>
                            <asp:ListItem>Med</asp:ListItem>
                            <asp:ListItem>High</asp:ListItem>
                            <asp:ListItem>Very High</asp:ListItem>
                        </asp:DropDownList><br />

                        <asp:Button ID="btnCreate" runat="server" Text="Create" CssClass="btn btn" BackColor="Crimson" OnClick="btnCreate_Click" />
                        
                    </div>
                
            </div>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
