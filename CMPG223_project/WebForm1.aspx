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

        <!-- Register Link Label directly under the password textbox -->
        <div>
            <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="~/AddNewStaffPage.aspx" CssClass="register-link">
                New user? Register here
            </asp:HyperLink>
        </div>
        
        <!-- Error message label -->
        <div>
            <asp:Label ID="lblErrorMessage" runat="server" CssClass="lblErrorMessage" ForeColor="Red"></asp:Label>
        </div>

        <asp:Button ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" CssClass="login-button" />
    </form>
</body>
</html>
