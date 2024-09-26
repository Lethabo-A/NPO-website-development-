<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Financial_Page_Form.aspx.cs" Inherits="CMPG223_project.Financial_Page_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Finance</title>
    <link href="Financial_Page.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            height: 105px;
        }
    </style> 
</head>
    
<body>
    <div class="header">
        <img src="images/NGOs.png" alt="logo" class="auto-style1" />&nbsp;<h1>Financial Information</h1>
    </div>

    <div class="topnav">
        <a href="Financial_Page_Form.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
     </div>
    <div class="form-container">
    <form id="form" runat="server">
        	&nbsp; &nbsp;
        <h2>Select Option Below:</h2>
        
        <div >
        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True" CssClass="dropdown-style">
            <asp:ListItem>Expenses</asp:ListItem>
            <asp:ListItem>Add expenses</asp:ListItem>
            <asp:ListItem>Edit expenses</asp:ListItem>
            <asp:ListItem>Expense reports</asp:ListItem>
        </asp:DropDownList>
        </div>

        <div >
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="dropdown-style">
            <asp:ListItem>Budget Information</asp:ListItem>
            <asp:ListItem>Financial year budget</asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <div >
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" CssClass="dropdown-style">
                <asp:ListItem>Financial reports</asp:ListItem>
                </asp:DropDownList>
        </div>
        
        <div >
            <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="True" CssClass="dropdown-style">
            <asp:ListItem>Income</asp:ListItem>
            <asp:ListItem>Add income</asp:ListItem>
            <asp:ListItem>Edit income</asp:ListItem>
            <asp:ListItem>Income reports</asp:ListItem>
            <asp:ListItem>Funding and Donors</asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <div >
            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged" CssClass="dropdown-style">
            <asp:ListItem>Accounts</asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <div>
            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" CssClass="dropdown-style">
            <asp:ListItem>Financial Policies and Procedures</asp:ListItem>
           </asp:DropDownList>
        </div>
        
        <br />
        <br />
        
        
    </form>
    </div>
    <div class="footer">
	    <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>
</body>
</html>
