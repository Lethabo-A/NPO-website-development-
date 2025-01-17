﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewStaffPage.aspx.cs" Inherits="CMPG223_project.AddNewStaffPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Staff</title>
    <link href="AddNewStaff.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Add new staff</h1>
    </div>

    <div class="topnav">
        <a href="Maintain_Staff.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class="form-container">

    <form id="form1" runat="server">
        <h1>Enter details below:</h1>
        <asp:Label ID="lblOutput" runat="server" Text="[Output]"></asp:Label>
        

         <div>
     <asp:Label ID="Label2" runat="server" Text="ID number:"></asp:Label>
     <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
 </div>


        <div>
            <asp:Label ID="Label9" runat="server" Text="Choose department you work for:"></asp:Label>
            <asp:DropDownList ID="staffDepart" runat="server" CssClass="dropdown-style">
                <asp:ListItem>Doctor</asp:ListItem>
                <asp:ListItem>Accountant</asp:ListItem>
                <asp:ListItem>General staff</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div>
            <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label4" runat="server" Text="Surname:"></asp:Label>
            <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label5" runat="server" Text="Contact number:"></asp:Label>
            <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label6" runat="server" Text="Home address:"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtWord" runat="server" TextMode="Password" CssClass="password"></asp:TextBox>
        </div>


        <div class="btnAdd_container">
            <asp:Button ID="btnAdd" runat="server"  OnClick="btnAdd_Click" Text="Add staff" CssClass="btnAdd_button" />
            
        </div>


    </form>

</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
