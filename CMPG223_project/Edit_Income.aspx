<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Income.aspx.cs" Inherits="CMPG223_project.Edit_Income" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Edit Income</title>
    <link href="Edit_Income.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Edit Income</h1>
    </div>

    <div class="topnav">
        <a href="Financial_Page_Formaspx.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>


    <div class ="form-container">
    <form id="form1" runat="server">

        <h1>Choose the category and ID of the income you want to update:</h1>

        <div>
            <asp:Label ID="lblRemove" runat="server" Text="[Output]"></asp:Label>
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Choose category:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-style" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                    <asp:ListItem>Governemnt Funding</asp:ListItem>
                    <asp:ListItem>Investments</asp:ListItem>
                    <asp:ListItem>Fundraising</asp:ListItem>
                    <asp:ListItem>Corporate partnerships</asp:ListItem>
                    <asp:ListItem>Sales of products/goods</asp:ListItem>
                </asp:DropDownList>     
            </div>

        <div>
            <asp:Label ID="Label12" runat="server" Text="Enter ID of income:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter ID!" ForeColor="Red"></asp:RequiredFieldValidator>
            
        </div>


            <div>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>

        <h1>Enter the details you want to update:</h1>
            

        <div>
            <asp:Label ID="Label9" runat="server" Text="Update category:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown-style">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Governemnt Funding</asp:ListItem>
                <asp:ListItem>Investments</asp:ListItem>
                <asp:ListItem>Fundraising</asp:ListItem>
                <asp:ListItem>Corporate partnerships</asp:ListItem>
                <asp:ListItem>Sales of products/goods</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Choose a category!" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>


        <div>
            <asp:Label ID="Label3" runat="server" Text="Update name:"></asp:Label>
            <asp:TextBox ID="ExpenseName_TextBox" runat="server" placeholder="Enter expense name.."></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ExpenseName_TextBox" ErrorMessage="Enter income name!" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>


        <div>
            <asp:Label ID="Label5" runat="server" Text="Update date of income:"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>


        <div>
            <asp:Label ID="Label7" runat="server" Text="Update amount:"></asp:Label>
            <asp:TextBox ID="Amount_TextBox" runat="server" placeholder="Enter cost amount.."></asp:TextBox>     
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Amount_TextBox" ErrorMessage="Enter income amount!" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="UpdateButton_container">
            <asp:Button ID="UpdateButton" runat="server" Text="Update" CssClass="UpdateButton" OnClick="UpdateButton_Click" />
        </div>


        <h1>Delete by category and date of income:</h1>
        <div>
            <asp:Label ID="Label10" runat="server" Text="Choose category:"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown-style" ValidationGroup="Delete">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Governemnt Funding</asp:ListItem>
                    <asp:ListItem>Investments</asp:ListItem>
                    <asp:ListItem>Fundraising</asp:ListItem>
                    <asp:ListItem>Corporate partnerships</asp:ListItem>
                    <asp:ListItem>Sales of products/goods</asp:ListItem>
                </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Choose a category!" ForeColor="Red" ValidationGroup="Delete"></asp:RequiredFieldValidator>
            </div>

        <div>
            <asp:Label ID="Label13" runat="server" Text="Enter ID of income:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="Delete"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter ID!" ForeColor="Red" ValidationGroup="Delete"></asp:RequiredFieldValidator>
            
        </div>

        
        <div class="DeleteButton_container">
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" CssClass="DeleteButton" OnClick="DeleteButton_Click" ValidationGroup="Delete" />
        </div>
        

    </form>


</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
