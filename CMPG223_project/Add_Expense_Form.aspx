<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Expense_Form.aspx.cs" Inherits="CMPG223_project.Add_Expense_Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Expense</title>
    <link href="Add_Expense.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Adding Expense</h1>
    </div>

    <div class="topnav">
        <a href="Financial_Page_Formaspx.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class="form-container">
        <form id="form1" runat="server">
            <h1>Add expense details below:</h1>
			
            <div>
                <asp:Label ID="Label9" runat="server" Text="Choose a category:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-style">
                    <asp:ListItem>Choose your option...</asp:ListItem>
                    <asp:ListItem>Administrative Expenses</asp:ListItem>
                    <asp:ListItem>Fundraising Expenses</asp:ListItem>
                    <asp:ListItem>Governance and Management Expenses</asp:ListItem>
                    <asp:ListItem>Capital Expenses</asp:ListItem>
                    <asp:ListItem>Other Expenses</asp:ListItem>
                </asp:DropDownList>
            </div>
           
            <div>
                <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="ExpenseName_TextBox" runat="server" placeholder="Enter expense name.."></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ExpenseName_TextBox" ErrorMessage="Enter expense name" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            
            <div>
                    <asp:Label ID="Label5" runat="server" Text="Date of expense:"></asp:Label>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </div>
            &nbsp;
            <div>
                    <asp:Label ID="Label7" runat="server" Text="Enter amount:"></asp:Label>
                    <asp:TextBox ID="Amount_TextBox" runat="server" placeholder="Enter cost amount.."></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Amount_TextBox" ErrorMessage="Enter correct amount" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
           
            
            <div class="addButton_container">
               <asp:Button ID="AddExpense_Button" runat="server" OnClick="AddExpense_Button_Click" Text="Add Expense" CssClass="addExpense_button"/>
            </div>
      
        </form>
    </div>
    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>
</body>
</html>
