<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintain_Staff.aspx.cs" Inherits="CMPG223_project.Maintain_Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maintain Staff</title>
    <link href="Maintain_Staff.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Maintain staff</h1>
    </div>

    <div class="topnav">
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class="form-container">
    <form id="form1" runat="server">
        <h1>Select a page:</h1>
            
        <div class="Button1_container">
            <asp:Button ID="Button1" runat="server" OnClick="btnAdd_Click" Text="Add Page" CssClass="Button1_button" />
        </div>

        <div class="btnUpdateStaffPage_container">
            <asp:Button ID="btnUpdateStaffPage" runat="server" Text="Update Page" CssClass="btnUpdateStaffPage_button" OnClick="btnUpdateStaffPage_Click" />
        </div>


            <div class="btnRemoveStaffPage_container">
                <asp:Button ID="btnRemoveStaffPage" runat="server" Text="Remove Staff Page" CssClass="btnRemoveStaffPage_button" OnClick="btnRemoveStaffPage_Click" />
            </div>


    </form>

</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
