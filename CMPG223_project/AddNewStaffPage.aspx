<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewStaffPage.aspx.cs" Inherits="CMPG223_project.AddNewStaffPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 230px;
        }
        .auto-style5 {
            width: 346px;
        }
        .auto-style6 {
            width: 230px;
            height: 31px;
        }
        .auto-style7 {
            width: 346px;
            height: 31px;
        }
        .auto-style8 {
            height: 31px;
        }
        .auto-style9 {
            width: 231px;
        }
        .auto-style10 {
            width: 347px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <br />
        <strong>&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" CssClass="auto-style1" Text="Add New Staff"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" NavigateUrl="~/Maintain_Staff.aspx">Back</asp:HyperLink>
        <br />
&nbsp;<br />
                    <asp:Label ID="lblOutput" runat="server" CssClass="auto-style2" Text="[Output]"></asp:Label>
        <p>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Please make sure to enter all the fields  below."></asp:Label>
        </p>
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style2" Text="Choose department you work for:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:DropDownList ID="staffDepart" runat="server" Width="273px">
                        <asp:ListItem>Doctor</asp:ListItem>
                        <asp:ListItem>Accountant</asp:ListItem>
                        <asp:ListItem>General staff</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Staff number:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtID" runat="server" Width="271px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtName" runat="server" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" CssClass="auto-style2" ErrorMessage="Enter name!" ForeColor="Red" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="Surname:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtSurname" runat="server" Width="262px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" CssClass="auto-style2" ErrorMessage="Enter surname!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style2" Text="Contact number:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtContact" runat="server" Width="260px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtContact" CssClass="auto-style2" ErrorMessage="Enter 10 digits!" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style2" Text="Home address:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtAddress" runat="server" Width="258px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style2" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtWord" runat="server" Width="255px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add staff" Width="146px" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

