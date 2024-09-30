<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveStaffPage.aspx.cs" Inherits="CMPG223_project.RemoveStaffPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="RemoveStaff.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .form{
                align-content: center;
             }
        .auto-style3 {
            width: 113px;
            height: 108px;
             }
        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 1100px;
            text-align: center;
            animation: fadeIn 0.7s ease-in-out;
            position: relative;
            overflow: hidden;
        }
    </style>
</head>
<body>

    <div class="header">
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Remove staff</h1>
    </div>

    <div class="topnav">
        <a href="Maintain_Staff.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>


    <div class="form-container">
    <form id="form1" runat="server">
        <h1>Enter the details below:</h1>

        <div>
            <asp:Label ID="lblRemove" runat="server" Text="[Output]"></asp:Label>
        </div>
            

            <asp:GridView ID="gridRemove" runat="server" CssClass="grid"></asp:GridView>

            <div>
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Enter staff number to remove:"></asp:Label>
                <asp:TextBox ID="txtRemove" runat="server" CssClass="textbox"></asp:TextBox>
            </div>

            <div class="btnDeleteStaff_container">
                <asp:Button ID="btnDeleteStaff" runat="server" Text="Delete" CssClass="btnDeleteStaff_button" OnClick="Button1_Click" />
            </div>
    </form>


</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
