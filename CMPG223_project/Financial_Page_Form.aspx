<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Financial_Page_Form.aspx.cs" Inherits="CMPG223_project.Financial_Page_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="56px">
            <asp:ListItem>Financial statements</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Budget Information</asp:ListItem>
            <asp:ListItem>Financial year budget</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Financial reports</asp:ListItem>
            <asp:ListItem>Monthly reports</asp:ListItem>
            <asp:ListItem>Year report</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
            <asp:ListItem>Expenses</asp:ListItem>
            <asp:ListItem>Add expenses</asp:ListItem>
            <asp:ListItem>Edit expenses</asp:ListItem>
            <asp:ListItem>Expense reports</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
            <asp:ListItem>Income</asp:ListItem>
            <asp:ListItem>Add income</asp:ListItem>
            <asp:ListItem>Edit income</asp:ListItem>
            <asp:ListItem>Income reports</asp:ListItem>
            <asp:ListItem>Funding and Donors</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>Accounts</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList7" runat="server">
            <asp:ListItem>Financial Policies and Procedures</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td>
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
    </form>
</body>
</html>
