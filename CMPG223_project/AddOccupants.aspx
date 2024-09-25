<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOccupants.aspx.cs" Inherits="CMPG223_project.AddOccupants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 69px;
            height: 68px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style1" src="images/NGOs.png" /><br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Text="Occupant Information" Font-Bold="True" Font-Size="19pt" Font-Underline="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DefaultOccupants.aspx">Back</asp:HyperLink>
                    <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Fill in the correct Occupant information as per thier ID or Birth Certificate , for sections that do not apply please enter none."></asp:Label>
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="General Information:"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox>
        <table style="width:100%;">
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Surname:"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsurname" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtsurname" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Identification /passport number:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:RadioButton ID="Radfemale" runat="server" Text="Female" OnCheckedChanged="Radfemale_CheckedChanged" GroupName="Gender" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:RadioButton ID="Radmale" runat="server" Text="Male" GroupName="Gender" />
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Background Information:"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Previous address:"></asp:Label>
                    <br />
                   <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter Previous Address"></asp:TextBox>

                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Citizenship:"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcitizen" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtcitizen" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Transfer:"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="If yes , please state from which institute"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtTransfer" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter Transfer Home"></asp:TextBox>

                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="please state all medical conditions as well as disabilities"></asp:Label>
                    <br />
                   <asp:TextBox ID="txtMedical" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter Medical Conditions"></asp:TextBox>

                    <br />
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="Relative Contact Information"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtinfo" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Add Occupant" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
