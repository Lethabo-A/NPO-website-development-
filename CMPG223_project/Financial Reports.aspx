<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Financial Reports.aspx.cs" Inherits="CMPG223_project.Financial_Reports" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Financial Reports</title>
    <link href="FinancialReports.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        /* Create two unequal columns that floats next to each other */
        /* Left column */
        .leftcolumn {   
          float: left;
          width: 75%;
        }

        /* Right column */
        .rightcolumn {
          float: left;
          width: 25%;
          background-color: #f1f1f1;
          padding-left: 20px;
        }

        /* Add a card effect for articles */
        .card {
          background-color: lightgrey;
          padding: 20px;
          margin-top: 20px;
          border-radius: 15px;
        }
        .grids {
            align-content: center;
        }
        /* Clear floats after the columns */
        .row::after {
          content: "";
          display: table;
          clear: both;
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

        .footer {
            border-spacing: 20px;
            background-color: #f1f1f1;
            padding: 10px;
            text-align: center;
            font-size: 10px;
            margin-bottom: 10px;
            color: black;
        }
    	.auto-style1 {
			height: 107px;
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
            text-align:center;
        }
        h2 {
            margin-bottom: 25px;
            color: #4a148c;
            font-size: 24px;
            text-align:center;
        }
        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 900px;
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
            /* Create three equal columns that floats next to each other */
            .column {
                  
                  
                  float: left;
                  width: 33.33%;
                  padding: 20px;
            }

            /* Clear floats after the columns */
            .row::after {
              content: "";
              display: table;
              clear: both;
            }

            /* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
            @media screen and (max-width:900px) {
                .column {
                    width: 100%;
                }
            }
            .chartCenter{
                display: flex;
                justify-content: center;
                align-content: center;
            }
    </style>
</head>
<body>
    <div class="header">
        <img src="images/NGOs.png" alt="logo" class="auto-style1" />&nbsp;<h1>Financial Reports</h1>
    </div>

    <div class="topnav">
        <a href="Financial_Page_Formaspx.aspx">Back</a>
        <a href="WebForm1.aspx">Logout</a>
    </div>
    <div class="form-container">
    <form id="form1" runat="server">
        
        <div>
            <h2>Expenses VS Income</h2>
        </div>
        <div>
            <asp:Label ID="lblDateTime" CSSclass="Label" runat="server"></asp:Label>
        </div>
        <div class="card">
            <h1>Expenses</h1>
             <asp:GridView ID="GridView1" CssClass="grids" runat="server"></asp:GridView>
        </div>

        <div class="card">
            <h1>Income</h1>
            <asp:GridView ID="GridView2" CssClass="grids" runat="server"></asp:GridView>
        </div>
         
        <div>
            
            
        </div>
                    
        <div class="column">
            <h2>Chart for expenses</h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Chart ID="Chart1" runat="server" CssClass="chartCenter" DataSourceID="SqlDataSource2">
                <series>
                    <asp:Series ChartType="Pie" Name="Series1" XValueMember="Expense_Category" YValueMembers="Expense_Amount"></asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMain %>" SelectCommand="SELECT [Expense_Category], [Expense_Amount] FROM [Add_Expense_Table]"></asp:SqlDataSource>        
        </div>               
        <div class="column">
            <h2>Chart for income</h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Chart ID="Chart2" runat="server" CssClass="chartCenter" DataSourceID="SqlDataSource1">
                <series>
                   <asp:Series ChartType="Pie" Name="Series1" XValueMember="Income_Category" YValueMembers="Income_Amount" ChartArea="ChartArea1"></asp:Series>
                </series>
                <chartareas>
                   <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMain %>" SelectCommand="SELECT [Income_Category], [Income_Amount] FROM [Add_Income_Table]"></asp:SqlDataSource>
        </div>
    </form>
    </div>
    <div class="footer">
            <p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
        </div>
</body>
</html>
