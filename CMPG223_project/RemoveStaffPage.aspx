<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveStaffPage.aspx.cs" Inherits="CMPG223_project.RemoveStaffPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0; /* Light grey background */
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            text-align: center;
        }

        .header {
            font-size: 32px;
            color: #6a0dad;
            font-weight: bold;
            margin-bottom: 40px;
        }

        .grid {
            width: 60%;
            margin: 20px auto;
            border: 1px solid #ddd;
            border-collapse: collapse;
        }

        .grid th, .grid td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        .label {
            font-size: 18px;
            margin-right: 10px;
        }

        .textbox {
            width: 220px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            width: 120px;
            padding: 10px;
            background-color: #8e44ad; /* Purple button */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
        }

        .btn:hover {
            background-color: #732d91; /* Darker purple on hover */
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">Remove Staff</div>

            <asp:Label ID="lblRemove" runat="server" Text="[Output]"></asp:Label>

            <asp:GridView ID="gridRemove" runat="server" CssClass="grid"></asp:GridView>

            <div>
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Enter staff number to remove:"></asp:Label>
                <asp:TextBox ID="txtRemove" runat="server" CssClass="textbox"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="btnDeleteStaff" runat="server" Text="Delete" CssClass="btn" OnClick="Button1_Click" />
                <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn" OnClick="btnBack_Click" />
            </div>
        </div>
    </form>
</body>
</html>
