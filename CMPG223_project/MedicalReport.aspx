<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicalReport.aspx.cs" Inherits="CMPG223_project.MedicalReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medical Report</title>
    <link href="MedicalReport.css" rel="stylesheet" type="text/css" />
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
    <form id="form1" runat="server">

        <div class="header">
            <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Detailed Report On all patients houesed in facilities</h1>
        </div>

        <div class="topnav">
            <a href="#">Home</a>
            <a href="Financial_Page_Form.aspx">Back</a>
            <a href="WebForm1.aspx">Logout</a>
        </div>

        <div>
            <h4 class="auto-style1">Detailed Report On All Patients housed in the facilitie<table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Select category to filter the report by"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="View all "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:DropDownList ID="dropCat" runat="server">
                             <asp:ListItem>Choose a category..</asp:ListItem>
 <asp:ListItem Value="gender">Gender</asp:ListItem>
 <asp:ListItem Value="allergies">Allergies</asp:ListItem>
 <asp:ListItem Value="prescriptions">Prescriptions</asp:ListItem>
 <asp:ListItem Value="current_diagnosis">Current Diagnosis</asp:ListItem>
 <asp:ListItem Value="past_medical_history">Past Medical History</asp:ListItem>
 <asp:ListItem Value="past_surgical_history">Past Surgical History</asp:ListItem>
 <asp:ListItem Value="vaccine_status">Vaccine Status</asp:ListItem>
 <asp:ListItem Value="pregnancy_history">Pregnancy History</asp:ListItem>
 <asp:ListItem Value="social_history">Social History</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [patients]"></asp:SqlDataSource>
                        <asp:Button ID="btnFilter" runat="server" OnClick="btnFilter_Click" Text="Filter" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnViewAll" runat="server" OnClick="btnViewAll_Click" Text="View All" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnReport" runat="server" OnClick="btnReport_Click1" Text="Generate Physical Report" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            </h4>
        </div>
        <asp:GridView ID="GridView1" runat="server" Height="513px" Width="1558px">
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FindPatient.aspx">back</asp:HyperLink>

        <div class="footer">
            <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
        </div>

    </form>
</body>
</html>

