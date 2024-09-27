<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Approve.aspx.cs" Inherits="CMPG223_project.Approve" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Occupants check</title>
    <link href="Approve.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            width: 113px;
            height: 108px;
         }
        /*Row and Column thng*/
        /* Create three equal columns that floats next to each other */
        .column {
            float: left;
            width: 33.33%;
            padding: 15px;
        }

        /* Clear floats after the columns */
        .row::after {
            content: "";
            display: table;
            clear: both;
        }

        /* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
        @media screen and (max-width:500px) {
            .column {
                width: 100%;
            }
        }
        .container {
          display: block;
          position: relative;
          padding-left: 35px;
          margin-bottom: 12px;
          cursor: pointer;
          font-size: 22px;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          user-select: none;
        }

        /* Hide the browser's default checkbox */
        .container input {
          position: absolute;
          opacity: 0;
          cursor: pointer;
          height: 0;
          width: 0;
        }

        /* Create a custom checkbox */
        .checkmark {
          position: absolute;
          top: 0;
          left: 0;
          height: 25px;
          width: 25px;
          background-color: #eee;
        }

        /* On mouse-over, add a grey background color */
        .container:hover input ~ .checkmark {
          background-color: #ccc;
        }

        /* When the checkbox is checked, add a blue background */
        .container input:checked ~ .checkmark {
          background-color: #2196F3;
        }

        /* Create the checkmark/indicator (hidden when not checked) */
        .checkmark:after {
          content: "";
          position: absolute;
          display: none;
        }

        /* Show the checkmark when checked */
        .container input:checked ~ .checkmark:after {
          display: block;
        }

        /* Style the checkmark/indicator */
        .container .checkmark:after {
          left: 9px;
          top: 5px;
          width: 5px;
          height: 10px;
          border: solid white;
          border-width: 0 3px 3px 0;
          -webkit-transform: rotate(45deg);
          -ms-transform: rotate(45deg);
          transform: rotate(45deg);
        }   
            h2 {
                margin-bottom: 20px;
                color: black;
                font-size: 24px;
            }
            h1 {
                margin-bottom: 20px;
                color: black;
                font-size: 24px;
            }
            p {
                margin-bottom: 20px;
                color: dimgray;
                font-size: 15px;
            }
        .form-container {
	        border-spacing: 20px;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        min-height: 100vh;
	        padding: 20px;
        }
       form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 800px;
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
            .button-container {
                display: flex;
                justify-content: flex-start;
                margin-top: 20px;
            }

            .btnNext {
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 14px;
                margin: 0 5px;
                cursor: pointer;
                transition: background-color 0.3s, box-shadow 0.3s;
                width: calc(100% - 20px);
                border-radius: 25px;
            }

            .btnNext {
                background-color: #8e24aa;
                color: white;
            }
            .btnNext:hover {
                background-color: #7b1fa2;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            }
            .topnav {
                border-radius: 0.5px;
                overflow: hidden;
                background-color: black;
            }

                .topnav a {
                    font-size: 10px;
                    float: left;
                    display: block;
                    color: white;
                    background-color: brown;
                    text-align: center;
                    padding: 14px 16px;
                    text-decoration: none;
                }

                    .topnav a:hover {
                        background-color: #ddd;
                        color: black;
                    }
                    .topnav a.active {
            background-color: #04AA6D;
            color: white;
        }

        .topnav-right {
            float: right;
        }
    </style>
</head>
<body>
     <div class="header">
         <img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Occupants Check</h1>
     </div>

     <div class="topnav">
         <a href="WebForm1.aspx">Logout</a>
         <div class="topnav-right">
             <a href="DefaultOccupants.aspx">Back</a>
         </div>
     </div>
     <div>
         <asp:Label ID="lblMessage" runat="server"></asp:Label>
     </div>
    <div class="form-container">
    <form id="form1" runat="server">
       
        <div>
            <h3>Please make sure all neccesary categories are checked before proceeding to next page</h3>
            <label class="container">Legal Status
              <input type="checkbox"/>
              <span class="checkmark"></span>
            </label>
            <label class="container">Criminal Background
              <input type="checkbox"/>
              <span class="checkmark"></span>
            </label>
            <label class="container">Social History
              <input type="checkbox"/>
              <span class="checkmark"></span>
            </label>
            <label class="container">Medical Record
              <input type="checkbox"/>
              <span class="checkmark"></span>
            </label>
            <label class="container">Risk Assessment
              <input type="checkbox"/>
              <span class="checkmark"></span>
            </label>
        </div>

        <div class="button-container">
            <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" CssClass="btnNext" Text="Next" />
        </div>
        <h2>Category Break Down</h2>
        <div class="row">
          
          <h1>Under Legal Status:</h1>
          <p>Ensure they have necessary legal documents, such as ID , residency permits , or other legal approvals.</p>
          <h1>Under Criminal Background:</h1>
          <p>Conduct a criminal background check to ensure they do not pose any safety risks to other residents.</p>
          <h1>Under Social History:</h1>
          <p>Assess their social background , including any history of violence , substance abuse , or behavioral issues.</p>
          <h1>Immunization:</h1>
          <p>Confirm they have necessary vaccinations , especially if they will be living with others in close quaters.</p>
          <h1>Mediacal record:</h1>
          <p>all available medical records have been checked.</p>
          <h1>Risk Assessment:</h1>
          <p>Assess the potential risks they may pose to themselves or others.</p>
        </div>
    </form>
    </div> 
</body>
</html>
