<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donations.aspx.cs" Inherits="CMPG223_project.Donations" %>

	<!DOCTYPE html>

	<html xmlns="http://www.w3.org/1999/xhtml">
	
	<head runat="server">
    		<title>Donation</title>
    		<link href="DonationsCSS.css" rel="stylesheet" type="text/css" />
    
		<style type="text/css">
			.form{
				align-content: center;
			}
			.auto-style3 {
				width: 113px;
				height: 108px;
			}
			/* Designing and creating a form */
			.form-container {
				border-spacing: 20px;
				display: flex;
				justify-content: center;
				align-items: center;
				min-height: 100vh;
				padding: 20px;
			}
			.form-container input[type=text], select {
				width: 100%;
				padding: 9px 30px;
				margin: 8px 0;
				box-sizing: border-box;
				background-color: lightblue;
				color: black;
				display: inline-block;
				border: 1.5px solid #ccc;
				border-radius: 4px;
				border-block-end-style: dashed;
				box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
			}
				.form-container input[type=date], input[type=submit] {
					width: 100%;
					padding: 9px 30px;
					margin: 8px 0;
					box-sizing: border-box;
					background-color: lightblue;
					color: black;
					display: inline-block;
					border: 1.5px solid #ccc;
					border-radius: 4px;
					border-block-end-style: dashed;
					box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
				}
				input[type=submit]:hover {
					background-color: forestgreen;
				}
			</style>
    
	</head>
	<body>
		<div class="header">
			<img src="images/NGOs.png" alt="logo" class="auto-style3" />&nbsp;<h1>Donation Information</h1>
		</div>

  		 <div class="topnav">
			<a href="#">Home</a>
			<a href="Financial_Page_Form.aspx">Back</a>
			<a href="WebForm1.aspx">Logout</a>
  		 </div>	&nbsp; &nbsp;
		<div class="form-container">
			<form id="form1" runat="server">
	
				<label for="fname">First Name</label>
				<input type="text" id="fname" name="firstname" placeholder="Donor's first name.." />

				<label for="lname">Last Name</label>
				<input type="text" id="lname" name="lastname" placeholder="Donor's last name.." />

				<label for="eMail">E-Mail Address</label>
				<input type="text" id="eMail" name="eMail" placeholder="Donor's E-Mail address.." />

				<label for="phoneNumb">Phone Number</label>
				<input type="text" id="phoneNumb" name="phoneNumb" placeholder="Donor's phone number.." />

				<label for="date">Date</label>
				<input type="date" id="date" name="date" placeholder="Date.." />

				<label for="dAmount">Amount Donated</label>
				<input type="text" id="dAmount" name="dAmount" min="1" step="0.5" placeholder="Amount donated.." />

				<label for="banks">Bank Account</label>
				<select id="banks" name="banks">
					<option value="">Select bank account donated in..</option>
					<option value="fnb">FNB</option>
					<option value="nedbank">NedBank</option>
					<option value="capitec">Capitec</option>
				</select>&nbsp;

				<asp:Button ID="myButton" runat="server" Text="Submit" OnClick="myButton_Click" />
				
    		</form>
		</div>
		&nbsp;	

		<div class="footer">
				<p>Copyright © 2024 NGOs office Company. All rights reserved.</p>
		</div>
    </body>
</html>
