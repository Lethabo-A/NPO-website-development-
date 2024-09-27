<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintain_Staff.aspx.cs" Inherits="CMPG223_project.Maintain_Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: lightgrey; 
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            text-align: center;
        }

        .header {
            font-size: 32px;
            color: #6a0dad;
            font-weight: bold;
            margin-top: 50px;
        }

        .btn {
            width: 200px;
            height: 50px;
            background-color: #8e44ad; 
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            margin: 20px;
        }

        .btn:hover {
            background-color: #732d91; 
        }

        .logout {
            display: block;
            font-size: 16px;
            margin-top: 40px;
            color: #6a0dad;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">Maintain Staff Page</div>

            <div>
                <asp:Button ID="btnAddStaffPage" runat="server" OnClick="btnAdd_Click" Text="Add Page" CssClass="btn" />
                <asp:Button ID="btnUpdateStaffPage" runat="server" Text="Update Page" CssClass="btn" OnClick="btnUpdateStaffPage_Click" />
                <asp:Button ID="btnRemoveStaffPage" runat="server" Text="Remove Staff Page" CssClass="btn" OnClick="btnRemoveStaffPage_Click" />
            </div>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx" class="logout">Logout</asp:HyperLink>
        </div>
    </form>
</body>
</html>
