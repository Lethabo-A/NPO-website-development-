<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultOccupants.aspx.cs" Inherits="CMPG223_project.DefaultOccupants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Occupants Management</title>
    <link href="DefaultOccupants.css" rel="stylesheet" type="text/css" />
   
	<style type="text/css">
		.auto-style1 {
			height: 106px;
		}
	</style>
</head>
<body>
        <div class="header">
            <img src="images/NGOs.png" alt="logo" class="auto-style1" />&nbsp;<h1>Occupants Management</h1>
        </div>
        <div class="topnav">
            <a href="WebForm1.aspx">Logout</a>
        </div>

        <div class="form-container">
            <form id="form" runat="server">
                <h1>Select an option below:</h1>
                <asp:Label ID="welcometext" runat="server"></asp:Label>

                <div class="button-container">
                    <asp:Button ID="Bntview" runat="server" Text="View existing occupants" OnClick="Bntview_Click" CssClass="View-Button" />
                </div>

                <div class="button-container">
                    <asp:Button ID="Bntadd" runat="server" Text="Add an approved occupant" OnClick="Bntadd_Click" CssClass="Approve-Button" />
                </div>

                <div class="button-container">
                    <asp:Button ID="BtnUpdate" runat="server" Text="Update occupant information" OnClick="BtnUpdate_Click" CssClass="Update-Button" />
                </div>

                <div class="button-container">
                    <asp:Button ID="BtnRemove" runat="server" Text="Remove current occupants" OnClick="BtnRemove_Click" CssClass="Remove-Button" />
                </div>

                <div class="button-container">
                    <asp:Button ID="BtnReports" runat="server" Text="Request reports" OnClick="BtnReports_Click" CssClass="Report-Button" />
                </div>

                <div class="footer">
                    <p>
                        This notice serves as an important reminder regarding the confidentiality and protection of our occupants personal information.
                        In accordance with the Protection of Personal Information Act (POPI Act), it is imperative that all personal information belonging to occupants is handled with the utmost care and confidentiality.
                        Sharing or disclosing personal information without proper authorization is not only a breach of trust but also a violation of the POPI Act, which can result in legal consequences.
                    </p>
                </div>
            </form>
        </div>
</body>
</html>
