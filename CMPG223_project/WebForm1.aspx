<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CMPG223_project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblHeading" runat="server" Text="Login"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="user number:  "></asp:Label><asp:TextBox ID="txtUserNumber" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label runat="server" Text="password:  "></asp:Label><asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>&nbsp;</div>
    </form>
</body>
</html>
