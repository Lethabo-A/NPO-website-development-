<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Income_Form.aspx.cs" Inherits="CMPG223_project.Add_Expense_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Income</title>
    <link href="Add_Income.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Adding Income</h1>
    </div>

    <div class="topnav">
        <a href="Financial_Page_Formaspx.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>
    <div class="form-container">
        <form id="form1" runat="server">
            <h1>Add the income details below:</h1>
            &nbsp;
            <div>
                <asp:Label ID="Label2" runat="server" Text="Income Category:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Governemnt Funding</asp:ListItem>
                    <asp:ListItem>Investments</asp:ListItem>
                    <asp:ListItem>Fundraising</asp:ListItem>
                    <asp:ListItem>Corporate partnerships</asp:ListItem>
                    <asp:ListItem>Sales of products/goods</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div>
                <asp:Label ID="Label6" runat="server" Text="Income name:"></asp:Label>
                <asp:TextBox ID="IncomeName_TextBox" runat="server" placeholder="Enter income name.."></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label5" runat="server" Text="Date of income:"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" CssClass="cal"></asp:Calendar>
            </div>
            
            <div>
                <asp:Label ID="Label7" runat="server" Text="Enter amount:"></asp:Label>
                <asp:TextBox ID="Amount_TextBox" runat="server" placeholder="Enter amount here.."></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label4" runat="server" Text="Add supporting documents(receipts, invoices, bank statements):"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>

            <div class="addButton_container">
               <asp:Button ID="AddIncome_Button" runat="server" OnClick="AddIncome_Button_Click" Text="Add Income" CssClass="addIncome_button"/>
            </div>
        </form>
    </div>
    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>
</body>
</html>
