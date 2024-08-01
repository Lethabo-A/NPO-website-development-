<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CMPG223_project.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="LoginStyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
            
        <div>
            <h2>Login</h2>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="User Number:" AssociatedControlID="txtUserNumber"></asp:Label>
            <asp:TextBox ID="txtUserNumber" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <button type="submit" id="btnLogin" class="login-button">Log in</button>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
