<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStaff.aspx.cs" Inherits="CMPG223_project.UpdateStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Staff</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0; /* Light grey background */
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%;
            margin: 50px auto;
            text-align: center;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            font-size: 32px;
            color: #6a0dad;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .grid {
            width: 100%;
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
            width: 250px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .radio-group {
            margin: 20px 0;
            text-align: left; /* Align to the left for better readability */
        }

        .radio-group label {
            margin-right: 20px;
            font-size: 16px;
        }

        .btn {
            width: 150px;
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
            <div class="header">Update Staff</div>

            <asp:Label ID="lblMessage" runat="server" Text="[Output]" CssClass="label"></asp:Label>

            <asp:GridView ID="gridUpdate" runat="server" CssClass="grid"></asp:GridView>

            <div class="input-group">
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Enter staff number to update:"></asp:Label>
                <asp:TextBox ID="txtNum" runat="server" CssClass="textbox"></asp:TextBox>
            </div>

            <div class="radio-group">
                <span>Please choose the field you want to update:</span><br />
                <asp:RadioButtonList ID="rblFields" runat="server">
                    <asp:ListItem Text="Name" Value="Name"></asp:ListItem>
                    <asp:ListItem Text="Surname" Value="Surname"></asp:ListItem>
                    <asp:ListItem Text="Contact" Value="Contact_number"></asp:ListItem>
                    <asp:ListItem Text="Home Address" Value="Home_Address"></asp:ListItem>
                    <asp:ListItem Text="Password" Value="Password"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="input-group">
                <asp:TextBox ID="txtUpdated" runat="server" CssClass="textbox" Height="43px"></asp:TextBox>
            </div>

            <div class="button-group">
                <asp:Button ID="btnUpdateStaff" runat="server" CssClass="btn" Text="Update Staff" OnClick="btnUpdateStaff_Click" />
                <asp:Button ID="btnBack" runat="server" CssClass="btn" Text="Back" OnClick="btnBack_Click" />
            </div>
        </div>
    </form>
</body>
</html>
