<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayMedical.aspx.cs" Inherits="requestReports.DisplayMedical" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medical</title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 1px;
        }
    </style>
        <link href="~/StyleSheet1.css" rel="stylesheet" type="text/css" />

</head>
    <div>
     <asp:Image runat="server" Height="141px" ImageAlign="Left" ImageUrl="~/WhatsApp Image 2024-08-06 at 14.13.08_c6a5caf1.jpg" Width="177px"></asp:Image>
     <h1 style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The NGO's Office</h1>
        <br />
</div>
<body style="background-color: #F2F1Ec">
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;</h1>
            <h2 style="text-align:center">&nbsp;Patient report</h2>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
        <div>
            <br />
            <asp:Button ID="BackBtn" runat="server" Text="Back" OnClick="BackBtn_Click" CssClass="auto-style1" Height="51px" Width="119px" />
            <br />
            <br />
            <asp:Label ID="messageData" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
