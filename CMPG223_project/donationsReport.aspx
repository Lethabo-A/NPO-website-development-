<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donationsReport.aspx.cs" Inherits="requestReports.donationsReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donantions report</title>
    <link href="~/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 743px;
        }
        .auto-style2 {
            width: 743px;
            height: 325px;
        }
        .auto-style3 {
            height: 325px;
        }
    </style>
</head>
    <div>
     <asp:Image runat="server" Height="141px" ImageAlign="Left" ImageUrl="~/WhatsApp Image 2024-08-06 at 14.13.08_c6a5caf1.jpg" Width="177px"></asp:Image>
     <h1 style="text-align:left">&nbsp;&nbsp;&nbsp; The NGO's Office</h1>
        <br />
</div>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style=" text-align:center"> Donation reports</h2>
        </div>
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Searchh Donor by name: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Search" runat="server" Text="Search Donor" OnClick="Search_Click" Height="39px" Width="179px" />
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Clear" Height="40px" OnClick="Button1_Click" Width="182px" />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="BackBtn" runat="server" Text="Back" OnClick="BackBtn_Click" Height="57px" Width="132px" />
        </div>
    </form>
</body>
</html>
