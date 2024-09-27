<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expense report.aspx.cs" Inherits="CMPG223_project.Expense_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Expense Report</title>
    <link href="ExpenseReportcss.css" rel="stylesheet" type="text/css" />
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
            <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Expense Report</h1>
        </div>

        <div class="topnav">
            <a href="Financial_Page_Formaspx.aspx">Back</a>
            <a href="WebForm1.aspx">Logout</a>
        </div>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Report for Expenses"></asp:Label>
        <br />
        </strong>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="dropCat" runat="server">
                             <asp:ListItem>Choose a month</asp:ListItem>
 <asp:ListItem>January</asp:ListItem>
 <asp:ListItem>February</asp:ListItem>
 <asp:ListItem>March</asp:ListItem>
 <asp:ListItem>April</asp:ListItem>
 <asp:ListItem>May</asp:ListItem>
 <asp:ListItem>June</asp:ListItem>
 <asp:ListItem>July</asp:ListItem>
 <asp:ListItem>August</asp:ListItem>
 <asp:ListItem>September</asp:ListItem>
                             <asp:ListItem>October</asp:ListItem>
                             <asp:ListItem>November</asp:ListItem>
                             <asp:ListItem>December</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnFilter" runat="server" OnClick="btnFilter_Click" Text="Filter" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Height="517px" Width="815px">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnReport" runat="server" OnClick="btnReport_Click1" Text="Generate Physical Report" />
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <div class="footer">
            <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
        </div>

    </form>
</body>
</html>
