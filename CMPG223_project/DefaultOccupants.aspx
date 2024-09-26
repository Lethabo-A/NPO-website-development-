<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultOccupants.aspx.cs" Inherits="CMPG223_project.DefaultOccupants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Occupants Management</title>
    <link href="DefaultOccupants.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        form{
               
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
        .button-container {
            display: flex;
            justify-content: flex-start;
            margin-top: 20px;
            position: center;
        }
        
        h2 {
                margin-bottom: 20px;
                color: #4a148c;
                font-size: 24px;
        }
        h1 {
                margin-bottom: 20px;
                color: #4a148c;
                font-size: 24px;
        }
        .Approve-Button, .Report-Button, .Update-Button, .Remove-Button {
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 14px;
                margin: 0 5px;
                cursor: pointer;
                transition: background-color 0.3s, box-shadow 0.3s;
    
                width: calc(100% - 20px);
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
                box-sizing: border-box;
                transition: border-color 0.3s, box-shadow 0.3s;
                box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            }
        .Update-button{
                background-color: #8e24aa;
                color: white;
            }
        .Update-button:hover{
            background-color: #7b1fa2;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        label {
            display: block;
            text-align: left;
            margin-bottom: 8px;
            font-weight: bold;
            color: #6a1b9a;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    	.auto-style1 {
			height: 105px;
		}

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }
    </style>
    </head>
<body style="height: 231px">
    <div class="header">
            <img src="images/NGOs.png" alt="logo" class="auto-style1" />&nbsp;<h2>Occupants Management</h2>
        </div>
    <div class="topnav">
        <a href="WebForm1.aspx">Logout</a>
        </div>	
        &nbsp;
        &nbsp;
     <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>

     <div class="form-container">
    <form id="form" runat="server">
         
        <h1>Select an option below:</h1>
        &nbsp;
        &nbsp;
        <asp:Label ID="welcometext" runat="server"></asp:Label>
            &nbsp;
            &nbsp;
        <div class="button-container">
                <asp:Button ID="Bntadd" runat="server" Text="Add an Approved Occupant" OnClick="Bntadd_Click"  CssClass="Approve-Button"/>
         </div>
        &nbsp;
        <div class="button-container">
                <asp:Button ID="Bntupdate" runat="server" Text="Update Occupant Infomation" OnClick="Bntupdate_Click"  CssClass="Update-Button"/>
        </div> 
        &nbsp;

        <div class="button-container">
                <asp:Button ID="Bntremove" runat="server" Text="Remove Current Occupants" OnClick="Bntremove_Click"  CssClass="Remove-Button"/>
        </div>  
        &nbsp;

        <div class="button-container">
                <asp:Button ID="Btnreports" runat="server" OnClick="Btnreports_Click" Text="Reports"  CssClass="Report-Button"/>
         &nbsp;
        </div>
    </form>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;

		&nbsp;<p>
		&nbsp;</p>
	<p>
		&nbsp;</p>
	<p>
		&nbsp;</p>
	
&nbsp;<div class="footer">
        <p>
            This notice serves as an important reminder regarding the confidentiality and protection of our occupants personal information.
            In accordance with the Protection of Personal Information Act (POPI Act), it is imperative that all personal information belonging to occupants is handled with the utmost care and confidentiality.
            Sharing or disclosing personal information without proper authorization is not only a breach of trust but also a violation of the POPI Act, which can result in legal consequences.
         </p>
    </div>
</body>
</html>

