<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindPatient.aspx.cs" Inherits="CMPG223_project.FindPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find Patient</title>
    <link href="FindPatient.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Find a Patient</h1>
    </div>

    <div class="topnav">
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class ="form-container">
    <form id="form1" runat="server">
        <h1>Find an existing patient by ID:</h1>

        <div>
            <asp:Label ID="Label6" runat="server" Text="Enter a patients ID number: "></asp:Label>
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        </div>

        <div class="Button1_container">
            <asp:Button ID="Button1" runat="server" OnClick="SearchButton_Click"  Text="Search" CssClass="Button1"/>
        </div>

        <h2>Add a new Patient:</h2>
        <div class="HyperLink3_container">
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="HyperLink3" NavigateUrl="~/AddNewPatient.aspx">Add new patient </asp:HyperLink>
        </div>


        <h3>Remove a patient:</h3>
        <div>
            <asp:Label ID="Label7" runat="server" Text="Enter a patients ID number: "></asp:Label>
            <asp:TextBox ID="txtDeleteID" runat="server"></asp:TextBox>
        </div>

        <div class="Button2_container">
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Delete Patient" CssClass="Button2" />
        </div>

        <h4>Medical Report</h4>
        <div class="HyperLink4_container">
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="HyperLink4" NavigateUrl="~/MedicalReport.aspx">Show Full Medical Report</asp:HyperLink>
        </div>
        
    </form>

</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
