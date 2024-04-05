<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketShow.aspx.cs" Inherits="TicketPortal.TicketShow" %>

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
        <div style="margin-left:200px;margin-top:10px">

            <asp:Panel runat="server" Width="600px">
            <div class="panel panel-primary">
                <div class="panel-heading">Ticket</div>
                    <div class="panel-body">
                            <h4>Ticket ID:</h4>
                            <h5><asp:Label ID="lblTicketId" runat="server"></asp:Label></h5>
                            <p>
                                &nbsp;</p>
                            <h4>Username:</h4>
                            <h5><asp:Label ID="lbluser" runat="server"></asp:Label></h5>
                            <p>
                                &nbsp;</p>
                            <h4>Email:</h4>
                            <h5><asp:Label ID="lblemail" runat="server"></asp:Label></h5>
                            <p>
                                &nbsp;</p>
                            <h4>Extension:</h4>
                            <h5><asp:Label ID="lblExt" runat="server"></asp:Label></h5>
                            <p>
                                &nbsp;</p>
                            <h4>Description:</h4>
                            <h5><asp:Label ID="lbldecp" runat="server"></asp:Label></h5>
                            <p>
                                &nbsp;</p>
                            <h4>Request To:</h4>
                            <h5><asp:Label ID="lblrequestto" runat="server"></asp:Label></h5>
                            <p>
                                &nbsp;</p>
                            <h4>Department:</h4>
                            <h5><asp:Label ID="lbldept" runat="server"></asp:Label></h5>
                            <p>
                                &nbsp;</p>
                            <h4>Priority:</h4>
                            <h5><asp:Label ID="lblpriority" runat="server"></asp:Label></h5>
                            <p>
                                &nbsp;</p>
                    </div>
                </div>
                </asp:Panel>
            
        </div>
    </form>
</body>
</html>
