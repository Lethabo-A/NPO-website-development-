﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateOccupants.aspx.cs" Inherits="CMPG223_project.UpdateOccupants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Occupants</title>
    <link href="UpdateOccupants.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Occupant Report</h1>
    </div>

    <div class="topnav">
        <a href="DefaultOccupants.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class ="form-container">
    <form id="form1" runat="server">
        <h1>Occupant Update:</h1>

        <div>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>

        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
        </div>

        <div>
            <asp:Label ID="Label16" runat="server" Text="Please enter the id/passport number of the occupant which you wish to Update"></asp:Label>
            <asp:TextBox ID="txtIDPassport" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label14" runat="server" Text="Please Select The Column which you wish to Update"></asp:Label>
            <br />
            <br />
            <asp:RadioButton ID="Radname" runat="server" GroupName="Update" Text="Name" />
            <br />
            <br />
            <asp:RadioButton ID="Radsurname" runat="server" GroupName="Update" Text="Surname" />
            <br />
            <br />
            <asp:RadioButton ID="Radgender" runat="server" GroupName="Update" Text="Gender" />
            <br />
            <br />
            <asp:RadioButton ID="Radaddress" runat="server" GroupName="Update" Text="Previous Address" />
            <br />
            <br />
            <asp:RadioButton ID="Radcitizen" runat="server" GroupName="Update" Text="Citizenship" />
            <br />
            <br />
            <asp:RadioButton ID="RadTrans" runat="server" GroupName="Update" Text="Transfer Home" />
            <br />
            <br />
            <asp:RadioButton ID="Radmedical" runat="server" GroupName="Update" Text="Medical Conditions" />
            <br />
            <br />
            <asp:RadioButton ID="Radinfo" runat="server" GroupName="Update" Text="Contact Infromation" />
            <br />
        </div>

        <div>
            <asp:Label ID="Label15" runat="server" Text="Please enter the changes  which you wish to Update"></asp:Label>
            <asp:TextBox ID="txtNewValue" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter Previous Address"  CssClass="multilineText"></asp:TextBox>
        </div>

        <div class="btnUpdate_container">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btnUpdate" />
        </div>  

    </form>

</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
