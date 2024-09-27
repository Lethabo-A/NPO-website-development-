<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExpenditureReport.aspx.cs" Inherits="requestReports.ExpenditureReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Expenditure report</title>
        <link href="~/StyleSheet1.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            width: 757px;
        }
        .auto-style2 {
            width: 298px;
        }
        .auto-style3 {
            width: 757px;
            height: 361px;
        }
        .auto-style4 {
            width: 298px;
            height: 361px;
        }
        .auto-style5 {
            height: 361px;
        }
    </style>

</head>
    <div>
     <asp:Image runat="server" Height="141px" ImageAlign="Left" ImageUrl="~/WhatsApp Image 2024-08-06 at 14.13.08_c6a5caf1.jpg" Width="177px"></asp:Image>
     <h1 style="text-align:left">The NGO's Office</h1>
        <p style="text-align:left">&nbsp;</p>
</div>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="text-align:center" >Financial expenditure reports </h2>
        </div>
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="HighestT" runat="server" Text="Highest Total expense" Height="45px" OnClick="HighestT_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Button ID="LowestT" runat="server" Text="Lowest Total expense" Height="48px" OnClick="LowestT_Click" Width="292px" />
                        <br />
                        <br />
                        <asp:Button ID="Clear" runat="server" Text="clear" Height="60px" OnClick="Clear_Click" Width="115px" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
            <asp:Button ID="BackBtn" runat="server" Text="Back" OnClick="BackBtn_Click" Height="52px" Width="119px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
