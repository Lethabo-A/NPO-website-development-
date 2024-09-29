<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewPatient.aspx.cs" Inherits="CMPG223_project.AddNewPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Patient</title>
    <link href="AddNewPatient.css" rel="stylesheet" type="text/css" />
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
    <div class="header">
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Adding a New Patient</h1>
    </div>

    <div class="topnav">
        <a href="WebForm1.aspx">Back to Log in</a>
    </div>
    <div class ="form-container">
    <form id="form1" runat="server">

        <h1>Enter the following details:</h1>
        <p>&nbsp;</p>
            
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Label ID="Label3" runat="server" Text="Surname: "></asp:Label>
                    <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Label ID="Label5" runat="server" Text="ID Number: "></asp:Label>
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtID" ErrorMessage="required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Allergies: "></asp:Label>
                    <asp:TextBox ID="txtAllergies" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAllergies" ErrorMessage="required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Label ID="Label4" runat="server" Text="Prescriptions"></asp:Label>
                    <asp:TextBox ID="txtPrescriptions" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrescriptions" ErrorMessage="required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Label ID="Label6" runat="server" Text="Age:  "></asp:Label>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="[Enter a valid age]" ForeColor="Red" MinimumValue="1"></asp:RangeValidator>
                </div>
            
                <div>
                    <asp:Label ID="Label7" runat="server" Text="Gender:  "></asp:Label>
                    <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtGender" ErrorMessage="required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Label ID="Label8" runat="server" Text="Current Diagnosis:  "></asp:Label>
                    <asp:TextBox ID="txtCurrent" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCurrent" ErrorMessage="required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Label ID="Label9" runat="server" Text="Past medical history:  "></asp:Label>
                    <asp:TextBox ID="txtPastMed" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label10" runat="server" Text="Past Surgical History:  "></asp:Label>
                    <asp:TextBox ID="txtPastSurg" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label11" runat="server" Text="Vaccine Status:  "></asp:Label>
                    <asp:DropDownList ID="dropDownVaccine" runat="server" CssClass="dropdown-style">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Partially Vaccinated</asp:ListItem>
                        <asp:ListItem>Not Vaccinated</asp:ListItem>
                        <asp:ListItem>Fully Vaccinated</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="dropDownVaccine" ErrorMessage="required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Label ID="Label12" runat="server" Text="Pregnancy History:  "></asp:Label>
                    <asp:TextBox ID="txtPreg" runat="server"></asp:TextBox>
                </div>
            
                <div>
                    <asp:Label ID="Label13" runat="server" Text="Social History:  "></asp:Label>
                    <asp:TextBox ID="txtSocial" runat="server"></asp:TextBox>
                </div>

                
               
                <div class="btnAddPatient_container">
                        <asp:Button ID="btnAddPatient" runat="server" OnClick="btnAddPatient_Click" Text="Add Patient" CssClass="btnAddPatient" />
                </div>
                    
    </form>
</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
