<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOccupants.aspx.cs" Inherits="CMPG223_project.ViewOccupants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Occupants</title>
    <link href="UpdateOccupants.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Current Occupants</h1>
    </div>

    <div class="topnav">
        <a href="DefaultOccupants.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>
    <div class="form-container";>
        <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblRecordCount" runat="server"></asp:Label>
            <div>
             <h2>Existing occupants:</h2>
            </div>
            &nbsp;
        </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"></asp:GridView>
        </form>
    </div>
    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>
</body>
</html>
