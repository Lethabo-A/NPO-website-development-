<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="defaultAdmin.aspx.cs" Inherits="CMPG223_project.defaultAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Admin</title>
    <link href="defaultAdmin.css" rel="stylesheet" type="text/css" />
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
<body>

    <div class="header">
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Admin Management</h1>
    </div>

    <div class="topnav">
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class="form-container">
    <form id="form1" runat="server">

        <h1>Select a page below:</h1>
       
        <div class="btnstaff_container">
            <asp:Button ID="btnstaff" runat="server" OnClick="btnstaff_Click" Text="Maintain Staff" CssClass="btnstaff_button" />
        </div>

        <div class="btnOccupants_container">
            <asp:Button ID="btnOccupants" runat="server" OnClick="btnOccupants_Click" Text="Maintain Occupants" CssClass="btnOccupants_button" />
        </div>

        <div class="btndonations_container">
            <asp:Button ID="btndonations" runat="server" OnClick="btndonations_Click" Text="Maintain Donations" CssClass="btndonations_button" />
        </div>

        <div class="btnfinances_container">
            <asp:Button ID="btnfinances" runat="server" OnClick="btnfinances_Click" Text="Maintain Finances" CssClass="btnfinances_button" />
        </div>

        <div class="btnpatients_container">
            <asp:Button ID="btnpatients" runat="server" OnClick="btnpatients_Click" Text="Maintain Patients" CssClass="btnpatients_button" />
        </div>


    </form>

</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
