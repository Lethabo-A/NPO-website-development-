<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="requestMedical.aspx.cs" Inherits="requestReports.requestMedical" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medical report</title>
        <link href="~/StyleSheet1.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            width: 464px;
        }
        .auto-style2 {
            width: 469px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
      <div>
          <h1 style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:ImageButton ID="ImageButton1" runat="server" Height="154px" ImageUrl="~/WhatsApp Image 2024-08-06 at 14.13.08_c6a5caf1.jpg" PostBackUrl="~/requestPage.aspx.cs" Width="191px" />
          &nbsp;&nbsp;&nbsp; The NGO'S Office</h1>
      </div>
        <br />
        <div>
            <h2 style=" text-align:center">
                    Medical records
            </h2>
        </div>
    
    <div style="background-color: #d9d9d9">
        <h3>Search patients</h3>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
        <label>Name</label>
        </td>
                <td>
        <asp:TextBox runat="server" ID="nameTxt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
        <label>Patient Number</label>
        </td>
                <td>
        <asp:TextBox runat="server" ID="numberTxt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
             </table>
       
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
        <asp:Button runat="server" Text="Search" Height="54px" Width="171px" ID="searchBtn" OnClick="Unnamed1_Click"></asp:Button>


                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="message1" runat="server" Text="Label"></asp:Label>


            <br />
    </div>
        <br />
        <dIV style="background-color: #d9d9d9">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">            <asp:Button ID="AllpatientsBtn" runat="server" Text="See all patients " Height="51px" Width="216px" OnClick="AllpatientsBtn_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>            
        </dIV>


    </form>
</body>
</html>
