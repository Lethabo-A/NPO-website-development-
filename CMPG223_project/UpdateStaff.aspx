<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStaff.aspx.cs" Inherits="CMPG223_project.UpdateStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Staff</title>
    <link href="UpdateStaff.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Update staff</h1>
    </div>

    <div class="topnav">
        <a href="Maintain_Staff.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>


    <div class="form-container">
    <form id="form1" runat="server">
        <h1>Enter the details below:</h1>

        <div>
            <asp:Label ID="lblMessage" runat="server" Text="[Output]" CssClass="label"></asp:Label>
        </div>
            

            <asp:GridView ID="gridUpdate" runat="server" CssClass="grid"></asp:GridView>

            <div>
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Enter staff number to update:"></asp:Label>
                <asp:TextBox ID="txtNum" runat="server" CssClass="textbox"></asp:TextBox>
            </div>


            <div class="radio-group">
                <span>Please choose the field you want to update:</span><br />
                <asp:RadioButtonList ID="rblFields" runat="server">
                    <asp:ListItem Text="Name" Value="Name"></asp:ListItem>
                    <asp:ListItem Text="Surname" Value="Surname"></asp:ListItem>
                    <asp:ListItem Text="Contact" Value="Contact_number"></asp:ListItem>
                    <asp:ListItem Text="Home Address" Value="Home_Address"></asp:ListItem>
                    <asp:ListItem Text="Password" Value="Password"></asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </div>

            <div>
                <asp:Label ID="Label3" runat="server" Text="Please enter updated detail:"></asp:Label>
                <asp:TextBox ID="txtUpdated" runat="server" CssClass="textbox" Height="43px"></asp:TextBox>
            </div>
 

            <div class="btnUpdateStaff_container">
                <asp:Button ID="btnUpdateStaff" runat="server" CssClass="btnUpdateStaff_button" Text="Update Staff" OnClick="btnUpdateStaff_Click" />
            </div>

    </form>

</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
