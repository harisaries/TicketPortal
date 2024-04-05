<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTest.aspx.cs" Inherits="TicketPortal.LoginTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    </title>
    
               <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
       
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" >
        <asp:Label ID="cachename" runat="server" Font-Bold="true" Visible="false"></asp:Label>
        <table><tr><td style="border:1px;"></td></tr></table>
        <div style="width:500px;margin-left:300px;">
            <br />
            <asp:PlaceHolder ID="usershow" runat="server"></asp:PlaceHolder>
            <br /><asp:label ID="usrname" runat="server" style="font-family:'Century Gothic'">Username:</asp:label> 
            <br /><asp:TextBox ID="username" runat="server" Font-Names="Century Gothic" CssClass="form-control"></asp:TextBox>
            <br /><label style="font-family:'Century Gothic'">Password:</label>
            <br /><asp:TextBox ID="password"  runat="server" Font-Names="Century Gothic" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="lblError" Font-Size="12px" ForeColor="Black" Font-Bold="true" Font-Names="Century Gothic" runat="server" Visible="false">Username & Password is incorrect</asp:Label></div>
            <br /><div style="margin-left:720px;"><asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-default" BackColor="Crimson" OnClick="btnLogin_Click" /></div>
    </form>
</body>
</html>
