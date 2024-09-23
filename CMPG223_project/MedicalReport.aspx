<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicalReport.aspx.cs" Inherits="WebApplication1.MedicalReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4 class="auto-style1">Detailed Report On All Patients housed in the facilities<table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
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
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnViewAll" runat="server" OnClick="btnViewAll_Click" Text="View All" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            </h4>
        </div>
        <asp:GridView ID="GridView1" runat="server" Height="513px" Width="1558px">
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FindPatient.aspx">back</asp:HyperLink>
    </form>
</body>
</html>
