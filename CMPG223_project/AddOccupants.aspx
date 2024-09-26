<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOccupants.aspx.cs" Inherits="CMPG223_project.AddOccupants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Occupants</title>
    <link href="AddOccupants.css" rel="stylesheet" type="text/css" />
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
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Occupation Information</h1>
    </div>

    <div class="topnav">
        <a href="DefaultOccupants.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class ="form-container">
    <form id="form1" runat="server">
        
        <h1>Fill in the correct Occupant information as per thier ID or Birth Certificate , for sections that do not apply please enter none:</h1>
        <p>&nbsp;</p>
        

        <div>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        
        <h3>General Information:</h3>
        
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Required!!" ForeColor="Red"></asp:RequiredFieldValidator>
            
        </div>
        
        
                <div>
                    
                    <asp:Label ID="Label2" runat="server" Text="Surname:"></asp:Label>
                    <asp:TextBox ID="txtsurname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsurname" ErrorMessage="Required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </div>
                
            <div>
                <asp:Label ID="Label3" runat="server" Text="Identification /passport number:"></asp:Label>
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            </div>
            
                <div>
                     <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label>
                    <asp:RadioButton ID="Radfemale" runat="server" Text="Female" OnCheckedChanged="Radfemale_CheckedChanged" GroupName="Gender" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Radmale" runat="server" Text="Male" GroupName="Gender" />
                </div>

                 <h2>Background Information:</h2>
                    <div>
                         <asp:Label ID="Label8" runat="server" Text="Previous address:"></asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter Previous Address" CssClass="multilineText"></asp:TextBox>
                    </div>
                    
                    <div>
                        <asp:Label ID="Label9" runat="server" Text="Citizenship:"></asp:Label>
                        <asp:TextBox ID="txtcitizen" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcitizen" ErrorMessage="Required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                   <div>
                        <asp:Label ID="Label10" runat="server" Text="Transfer:"></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text="If yes , please state from which institute"></asp:Label>
                        <asp:TextBox ID="txtTransfer" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter Transfer Home" CssClass="multilineText"></asp:TextBox>
                    </div>
                    
                    <div>
                         <asp:Label ID="Label12" runat="server" Text="please state all medical conditions as well as disabilities"></asp:Label>
                         <asp:TextBox ID="txtMedical" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter Medical Conditions" CssClass="multilineText"></asp:TextBox>
                    </div>
                    
                    <div>
                        <asp:Label ID="Label14" runat="server" Text="Relative Contact Information"></asp:Label>
                        <asp:TextBox ID="txtinfo" runat="server"></asp:TextBox>
                    </div>
                    
                    <div class="btnSubmit_container">
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Add Occupant" CssClass="btnSubmit"/>
                    </div>
       
    </form>

</div>

    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>

</body>
</html>
