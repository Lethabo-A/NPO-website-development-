<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Expenses.aspx.cs" Inherits="CMPG223_project.Edit_Expenses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Expenses</title>
    <link href="Edit_Expenses.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .form{
            align-content: center;
        }
        .auto-style3 {
            width: 113px;
            height: 108px;
        }
    .dropdown-style {
    width: calc(100% - 20px);
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
    margin-bottom: 15px;
    border-radius: 10px;
}
    input[type="text"],
input[type="name"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
    transition: border-color 0.3s, box-shadow 0.3s;
    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
}

    </style>
</head>
<body>

    <div class="header">
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Edit Expenses</h1>
    </div>

    <div class="topnav">
        <a href="Financial_Page_Formaspx.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>


    <div class ="form-container">
    <form id="form1" runat="server">

        <h1>Filter the expenses to choose the expense you want to update:</h1>


        <div>
            <asp:Label ID="Label1" runat="server" Text="Choose category:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-style" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                    <asp:ListItem>Choose your option...</asp:ListItem>
                    <asp:ListItem>Administrative Expenses</asp:ListItem>
                    <asp:ListItem>Fundraising Expenses</asp:ListItem>
                    <asp:ListItem>Governance and Management Expenses</asp:ListItem>
                    <asp:ListItem>Capital Expenses</asp:ListItem>
                    <asp:ListItem>Other Expenses</asp:ListItem>
                </asp:DropDownList>     
            </div>

        <div>
            <asp:Label ID="Label12" runat="server" Text="Choose date of expense:"></asp:Label>
            <asp:Calendar ID="Calendar3" runat="server" OnSelectionChanged="Calendar3_SelectionChanged"></asp:Calendar>
        </div>


            <div>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>

        <h1>Enter the details you want to update:</h1>
            

        <div>
            <asp:Label ID="Label9" runat="server" Text="Update category:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown-style">
                <asp:ListItem>Choose your option...</asp:ListItem>
                <asp:ListItem>Administrative Expenses</asp:ListItem>
                <asp:ListItem>Fundraising Expenses</asp:ListItem>
                <asp:ListItem>Governance and Management Expenses</asp:ListItem>
                <asp:ListItem>Capital Expenses</asp:ListItem>
                <asp:ListItem>Other Expenses</asp:ListItem>
            </asp:DropDownList>
        </div>


        <div>
            <asp:Label ID="Label3" runat="server" Text="Update name:"></asp:Label>
            <asp:TextBox ID="ExpenseName_TextBox" runat="server" placeholder="Enter expense name.."></asp:TextBox>
        </div>


        <div>
            <asp:Label ID="Label5" runat="server" Text="Update date of expense:"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>


        <div>
            <asp:Label ID="Label7" runat="server" Text="Update amount:"></asp:Label>
            <asp:TextBox ID="Amount_TextBox" runat="server" placeholder="Enter cost amount.."></asp:TextBox>     
        </div>

        <div class="UpdateButton_container">
            <asp:Button ID="UpdateButton" runat="server" Text="Update" CssClass="UpdateButton" OnClick="UpdateButton_Click" />
        </div>


        <h1>Delete by category and date of expense:</h1>
        <div>
            <asp:Label ID="Label10" runat="server" Text="Choose category:"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown-style">
                    <asp:ListItem>Choose your option...</asp:ListItem>
                    <asp:ListItem>Administrative Expenses</asp:ListItem>
                    <asp:ListItem>Fundraising Expenses</asp:ListItem>
                    <asp:ListItem>Governance and Management Expenses</asp:ListItem>
                    <asp:ListItem>Capital Expenses</asp:ListItem>
                    <asp:ListItem>Other Expenses</asp:ListItem>
                </asp:DropDownList>
            </div>

        <div>
            <asp:Label ID="Label11" runat="server" Text="Choose date of expense:"></asp:Label>
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        </div>

        
        <div class="DeleteButton_container">
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" CssClass="DeleteButton" OnClick="DeleteButton_Click" />
        </div>
        

    </form>


</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
