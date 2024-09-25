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
    <form id="form1" runat="server">

        <div class="header">
            <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Find a Patient</h1>
        </div>

        <div class="topnav">
            <a href="#">Home</a>
            <a href="Financial_Page_Form.aspx">Back</a>
            <a href="WebForm1.aspx">Logout</a>
        </div>

        <div class="auto-style1">
            <h1>&nbsp;</h1>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Find an existing patient by ID"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Add a new Patient"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Remove a patient"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Enter a patients ID number: "></asp:Label>
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddNewPatient.aspx">Add new patient</asp:HyperLink>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Enter a patients ID number: "></asp:Label>
                    <asp:TextBox ID="txtDeleteID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" style="width: 61px" Text="Search" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDeletePatient" runat="server" OnClick="Button1_Click" Text="Delete Patient" />
                </td>
            </tr>
        </table>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MedicalReport.aspx">Show Full Medical Report</asp:HyperLink>

        <div class="footer">
            <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
        </div>

    </form>
</body>
</html>
