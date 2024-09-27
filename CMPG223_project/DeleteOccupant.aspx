<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteOccupant.aspx.cs" Inherits="CMPG223_project.DeleteOccupant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Occupants</title>
    <link href="DeleteOccupant.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Delete Occupant</h1>
    </div>

    <div class="topnav">
        <a href="DefaultOccupants.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class ="form-container">
    <form id="form1" runat="server">
        <h1>Please select the Id/Passport Number of the Occupant you wish to delete alteritivly you can Enter The Id/Passport Number in the space given:</h1>
                    
        <div>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
                   
            <div>
                <asp:GridView ID="GridView1" runat="server" CssClass="gridview">
                </asp:GridView>
            </div>

            <div class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Identification /passport number:"></asp:Label>
                <asp:TextBox ID="txtIDPassport" runat="server"></asp:TextBox>
            </div>

        <div class="btnDelete_container">
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click"  Text="delete" CssClass="btnDelete" />
        </div>
    </form>

</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>

