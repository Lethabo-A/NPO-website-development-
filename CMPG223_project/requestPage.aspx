<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="requestPage.aspx.cs" Inherits="requestReports.requestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request reports</title>
        <link href="~/StyleSheet1.css" rel="stylesheet" type="text/css" />

</head>
<body >
    <form id="form1" runat="server">
        <div>
        </div>
        <h1 style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:ImageButton ID="ImageButton1" runat="server" Height="143px" Width="206px" ImageUrl="~/WhatsApp Image 2024-08-06 at 14.13.08_c6a5caf1.jpg" OnClick="ImageButton1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The NGO'S Office&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        <br />
        <h2 style="text-align:center">Administration Reports</h2>
        <div style="background-color:#d9d9d9">
            <h3 style="text-align:center"> See Financial report</h3>
            <asp:Button ID="financialBtn" runat="server" Text="Open" Height="74px" Width="145px" OnClick="Button1_Click" />
        </div>
       
        <div style="background-color:#d9d9d9">
            <h3 style="text-align:center"> See medical Reports</h3>
            <asp:Button ID="medicalBtn" runat="server" Text="Open" Height="73px" Width="147px" OnClick="medicalBtn_Click" />
        </div>
        
    </form>
</body>
</html>
