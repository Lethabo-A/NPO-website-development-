<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveStaffPage.aspx.cs" Inherits="CMPG223_project.RemoveStaffPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Remove Staff"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            </strong>
            <asp:Label ID="Label2" runat="server" Text="Enter staff number to remove:"></asp:Label>
&nbsp;<asp:TextBox ID="txtDeleteStaff" runat="server" Width="201px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDeleteStaff" runat="server" OnClick="Button1_Click" Text="Delete" Width="111px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblRemoveMessage" runat="server" Text="[Output]"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddNewStaff.aspx">Back</asp:HyperLink>
        </div>
    </form>
</body>
</html>
