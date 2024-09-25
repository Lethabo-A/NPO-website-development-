<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPatientInfo.aspx.cs" Inherits="CMPG223_project.DisplayPatientInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 428px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <h4 class="auto-style3">Display patient into</h4>
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblDisplay" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [patients]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Choose a category you want to update:  "></asp:Label>
                    <asp:DropDownList ID="listCat" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="DropDownList1_SelectedIndexChanged">
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
                </td>
                <td>
                    <asp:Label ID="lblChanges" runat="server" Text="What is the new diagnosis for the category:  "></asp:Label>
                    <asp:TextBox ID="txtChanges" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Category" />
                </td>
            </tr>
        </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FindPatient.aspx">back</asp:HyperLink>
    </form>
</body>
</html>

