<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Financial_Page_Form.aspx.cs" Inherits="CMPG223_project.Financial_Page_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Finance</title>
    <link href="Financial_Page.css" rel="stylesheet" type="text/css" />

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
            <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Financial Information</h1>
        </div>

        <div class="topnav">
            <a href="#">Home</a>
            <a href="Financial_Page_Form.aspx">Back</a>
            <a href="WebForm1.aspx">Logout</a>
         </div>	&nbsp; &nbsp;

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td>

        <asp:DropDownList ID="DropDownList1" runat="server" Height="56px" AutoPostBack="True">
            <asp:ListItem>Financial statements</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            <asp:ListItem>Budget Information</asp:ListItem>
            <asp:ListItem>Financial year budget</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem>Financial reports</asp:ListItem>
            <asp:ListItem>Monthly reports</asp:ListItem>
            <asp:ListItem>Year report</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>Expenses</asp:ListItem>
            <asp:ListItem>Add expenses</asp:ListItem>
            <asp:ListItem>Edit expenses</asp:ListItem>
            <asp:ListItem>Expense reports</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>Income</asp:ListItem>
            <asp:ListItem>Add income</asp:ListItem>
            <asp:ListItem>Edit income</asp:ListItem>
            <asp:ListItem>Income reports</asp:ListItem>
            <asp:ListItem>Funding and Donors</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
            <asp:ListItem>Accounts</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True">
            <asp:ListItem>Financial Policies and Procedures</asp:ListItem>
        </asp:DropDownList>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        <div class="footer">
			<p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
		</div>
    </form>
</body>
</html>
