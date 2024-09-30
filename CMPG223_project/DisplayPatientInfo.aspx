<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPatientInfo.aspx.cs" Inherits="CMPG223_project.DisplayPatientInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Patient Information</title>
    <link href="DisplayPatientInfocss.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .form{
             align-content: center;
         }
        .auto-style3 {
            width: 113px;
            height: 108px;
        }
        .header {
            background-color: mediumpurple;
            text-align: center;
            color: aliceblue;
            font-size: 25px;
            text-transform: uppercase;
            padding: 6px;
            border-radius: 0.5px;
        }

        .topnav {
            border-radius: 0px;
            overflow: hidden;
            background-color: black;
        }

        .topnav a {
            font-size: 10px;
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
            }

        /* Form design */
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        h1 {
            margin-bottom: 20px;
            color: #4a148c;
            font-size: 24px;
        }
        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 1100px;
            text-align: center;
            animation: fadeIn 0.7s ease-in-out;
            position: relative;
            overflow: hidden;
        }

            form::before {
                content: '';
                position: absolute;
                top: -20px;
                left: -20px;
                right: -20px;
                bottom: -20px;
                background: linear-gradient(to bottom, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.5));
                z-index: -1;
                border-radius: 10px;
            }

            form div {
                text-align: left;
                position: relative;
                padding-left: 20px;
                margin-bottom: 15px; /* Ensures consistent spacing between fields */
            }
        .dropdown-style {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 15px;
            border-radius: 10px;
        }
        .button-container {
            display: flex;
            justify-content: flex-start;
            margin-top: 20px;
            position: center;
        }
        .button {
            padding: 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 0 5px;
            cursor: pointer;
            transition: background-color 0.3s, box-shadow 0.3s;
            width: calc(100% - 20px);
        }

        .button {
            background-color: #8e24aa;
            color: white;
        }
            .button:hover {
                background-color: #7b1fa2;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            }
    </style>
</head>
<body>
    <div class="header">
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Display Patients</h1>
    </div>

    <div class="topnav">
        <a href="FindPatient.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class="form-container">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="lblDisplay" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblDateTime" CSSclass="Label" runat="server"></asp:Label>
            </div>
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [patients]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
                        
            <div>
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
            </div>
                        
            <div>
                <asp:Label ID="lblChanges" runat="server" Text="What is the new diagnosis for the category:"></asp:Label>
                <asp:TextBox ID="txtChanges" runat="server"></asp:TextBox>
            </div>      
                        
            <div class="button-container">
                <asp:Button ID="btnUpdate" runat="server" CssClass="button" OnClick="btnUpdate_Click" Text="Update Category"/>
            </div>             
        </form>
    </div>
    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>
</body>
</html>

