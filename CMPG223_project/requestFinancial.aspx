<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="requestFinancial.aspx.cs" Inherits="requestReports.requestFinancial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Financial report</title>
        <link href="~/StyleSheet1.css" rel="stylesheet" type="text/css" />

</head>
<body >
    <form id="form1" runat="server">
        
            <div>
                 <h1 style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="147px" ImageUrl="~/WhatsApp Image 2024-08-06 at 14.13.08_c6a5caf1.jpg" OnClick="ImageButton1_Click" PostBackUrl="~/requestPage.aspx.cs" Width="211px" />
                 &nbsp;&nbsp;&nbsp; The NGO's Office</h1>
            </div>
        <br />
            <div >
                 <h2 style="text-align:center"> Financial reports</h2>
            </div>
            <div style="background-color: #d9d9d9">
                 <h3 style="text-align:center">See Donation reports</h3>
                <asp:Button ID="donationsBtn" runat="server" Text="Open" OnClick="Button1_Click" Height="66px" Width="136px" />
            </div>
       
            <div style=" background-color: #d9d9d9">
                 <h3 style="text-align:center">See Expenditure reports</h3>
                <asp:Button ID="expenditureBtn" runat="server" Text="Open" OnClick="expenditureBtn_Click" Height="65px" Width="137px" />
            </div>
        
    </form>
</body>
</html>
