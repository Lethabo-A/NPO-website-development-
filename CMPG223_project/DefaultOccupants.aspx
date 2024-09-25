<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultOccupants.aspx.cs" Inherits="CMPG223_project.DefaultOccupants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Occupants Management</title>
    <link href="DefaultOccupants.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .form{
                align-content: center;
             }
        .auto-style3 {
            width: 113px;
            height: 108px;
             }
    </style>
    </head>
<body style="height: 231px">
    <form id="form1" runat="server">
        <div class="header">
            <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Welcome To The Occupant Managment</h1>
        </div>

        <div class="topnav">
            <a href="#">Home</a>
            <a href="Financial_Page_Form.aspx">Back</a>
            <a href="WebForm1.aspx">Logout</a>
        </div>
        <asp:Label ID="welcometext" runat="server"></asp:Label>
            &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">LogOut</asp:HyperLink>
            &nbsp;
        
                <asp:Button ID="Bntadd" runat="server" Text="Add an Approved Occupant" OnClick="Bntadd_Click" Font-Bold="True" Height="37px" Width="240px" CssClass="Approve-Button"/>
                    &nbsp;
                <asp:Button ID="Bntupdate" runat="server" Text="Update Occupant Infomation" OnClick="Bntupdate_Click" Font-Bold="True" Height="37px" Width="239px" CssClass="Update-Button"/>
                    &nbsp;
                <asp:Button ID="Bntremove" runat="server" Text="Remove Current Occupants" OnClick="Bntremove_Click" Font-Bold="True" Height="37px" Width="240px" CssClass="Remove-Button"/>
                    &nbsp;
                <asp:Button ID="Btnreports" runat="server" Height="38px" OnClick="Btnreports_Click" Text="Reports" Width="239px" CssClass="Report-Button"/>
                    &nbsp;
        
    </form>
    <div class="footer">
    <p>
This notice serves as an important reminder regarding the confidentiality and protection of our occupants personal information.
In accordance with the Protection of Personal Information Act (POPI Act), it is imperative that all personal information belonging to occupants is handled with the utmost care and confidentiality.
Sharing or disclosing personal information without proper authorization is not only a breach of trust but also a violation of the POPI Act, which can result in legal consequences.
    </p>
</div>
</body>
</html>

