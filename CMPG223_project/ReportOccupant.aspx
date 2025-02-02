﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportOccupant.aspx.cs" Inherits="CMPG223_project.ReportOccupant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Occupant Report</title>
    <link href="ReportOccupant.css" rel="stylesheet" type="text/css" />
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

        line {
            background-color: mediumpurple;
            list-style-type: none;
            text-align: right;
            margin: 0px;
            padding: 5px;
        }

            line li {
                display: inline-block;
                font-size: 30px;
                padding: 20px;
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

        .Label {
            margin-bottom: 20px;
            color: #4a148c;
            font-size: 15px;
        }
        h2 {
            margin-bottom: 20px;
            color: #4a148c;
            font-size: 15px;
        }
        .Labe1 {
            margin-bottom: 20px;
            color: #4a148c;
            font-size: 15px;
        }
        Labe2 {
            margin-bottom: 20px;
            color: #4a148c;
            font-size: 15px;
        }
        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 600px;
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
        .footer {
            border-spacing: 20px;
            background-color: #f1f1f1;
            padding: 10px;
            text-align: center;
            font-size: 10px;
            margin-bottom: 10px;
            color: black;
        }
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url("images/ExpenseBackground.jpg");
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: 1920px 1080px;
            margin: 0;
            justify-content: center;
        }
        input[type="text"],
        input[type="txtFilterValue"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border-color 0.3s, box-shadow 0.3s;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
        }

            input[type="text"]::placeholder,
            input[type="txtFilterValue"]::placeholder {
                color: #aaa;
                opacity: 1;
                font-style: normal;
            }

            input[type="text"]:focus,
            input[type="txtFilterValue"]:focus {
                border-color: #ab47bc;
                outline: none;
                box-shadow: 0 0 8px rgba(171, 71, 188, 0.3);
            }
        .button-container {
            display: flex;
            justify-content: flex-start;
            margin-top: 20px;
            position: center;
        }

        .displayBtn {
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

        .displayBtn{
            background-color: #8e24aa;
            color: white;
        }

            .displayBtn:hover {
                background-color: #7b1fa2;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            }
    </style>
</head>
<body>
    <div class="header">
        <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Occupant Report</h1>
    </div>

    <div class="topnav">
        <a href="DefaultOccupants.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>

    <div class="form-container">
        <form id="form" runat="server">

            <div>
                <asp:Label ID="lblMessage" runat="server" CSSclass="Label2"></asp:Label>
            </div>
            <div>
                <h2>
                    Please select the category you would like to filter:
                </h2>
            </div>
            <div>
                <asp:RadioButtonList ID="rbFilterOptions" runat="server">
                <asp:ListItem Text="Name" Value="Name" />
                <asp:ListItem Text="Surname" Value="Surname" />
                <asp:ListItem Text="Gender" Value="Gender" />
                <asp:ListItem Text="Previous Address" Value="Previous Address" />
                <asp:ListItem Text="Citizenship" Value="Citizenship" />
                <asp:ListItem Text="Transfer Home" Value="Transfer Home" />
                </asp:RadioButtonList>
            </div>

            <div>
                <asp:Label ID="Label15" runat="server" Text="Enter The Value You Wish To Filter By:" CSSclass="Label2"></asp:Label>
                <asp:TextBox ID="txtFilterValue" type="text" runat="server"></asp:TextBox>
            </div>
             
            <div class="button-container">
                <asp:Button ID="btnDisplay" runat="server" Text="Filtered" OnClick="btnDisplay_Click" CSSclass="displayBtn"/>
                <asp:Button ID="btnShowAll" runat="server" Text="Detailed" OnClick="btnShowAll_Click" CSSclass="displayBtn"/>
                <asp:Button ID="btnSaveReport" runat="server" Text="Save Report" OnClick="btnSaveReport_Click" CSSclass="displayBtn"/>
            </div>
            
            <div>
                <asp:Label ID="lblDateTime" CSSclass="Label" runat="server"></asp:Label>
            </div>
            
            <div>
                <asp:GridView ID="GridViewReport" runat="server"></asp:GridView>
            </div>

        </form>
    </div>
    <div class="footer">
        <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
    </div>
</body>
</html>