<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="LoginPage.aspx.cs" Inherits="TicketPortal.LoginPage" %>

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
    .txtbox{
        border-bottom-left-radius:20px;
        border-bottom-right-radius:20px;
        border-top-left-radius:20px;
        border-top-right-radius:20px;
        width:260px;
        height:30px;
        font-family:Century Gothic;
    }
    .btnn{
        border-bottom-left-radius:20px;
        border-bottom-right-radius:20px;
        border-top-left-radius:20px;
        border-top-right-radius:20px;
        
    }
</style></head>
<body>
    
    <form runat="server">
      
        <div style="margin-left:560px;">
      
            <asp:Label ID="datetime" Font-Size="Large" runat="server" Font-Names="Century Gothic">.</asp:Label></div>
        <div  style="margin-left:500px;margin-top:100px">
            
    <asp:Panel runat="server" Width="300px" Height="400px">
    <div class="panel panel-primary" runat="server" >
            <div class="panel-heading" runat="server" style="background-color:crimson;font-family:Century Gothic;">Login</div>
                <div class="panel-body" runat="server">
                    <asp:Label ID="label1" runat="server" Font-Bold="false" Font-Names="Century Gothic">Username:</asp:Label><br />
                    <asp:TextBox ID="txtUsername" Font-Bold="false" Font-Names="Century Gothic" runat="server" CssClass="form-control"></asp:TextBox><br />
                    <asp:Label ID="label2" runat="server" Font-Bold="false" Font-Names="Century Gothic">Password:</asp:Label><br />
                    <asp:TextBox ID="txtPassword" Font-Bold="false" Font-Names="Century Gothic" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox><br />
                    
                    <div style="margin-left:20px;margin-bottom:10px"><asp:Label ID="lblError" CssClass="label label-danger" Font-Names="Century Gothic" runat="server" Visible="false">Username & Password is incorrect</asp:Label></div><br />
                    <div style="margin-left:100px"><asp:Button ID="btnLogin" runat="server" Font-Names="Century Gothic" CssClass="btn btn" Text="Login" OnClick="btnLogin_Click" BackColor="Crimson"/>
                    </div>
                    
                
            </div>
        </div>
        </asp:Panel>
            </div>
</form>
</body>
</html>
