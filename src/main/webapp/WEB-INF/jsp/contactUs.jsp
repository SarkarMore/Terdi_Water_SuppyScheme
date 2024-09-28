<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>

<div style="padding-left:16px">
  <h2>WATER SUPPLY SYSTEM</h2>
  
</div>

<div class="topnav">
  <a class="active" href="http://localhost:8080/home">HOME</a>
  <a href="http://localhost:8080/home">LOGIN</a>
  <a href="http://localhost:8080/register">REGISTRATION</a>
  <a href="http://localhost:8080/about-us">ABOUT-US</a>
  <a href="http://localhost:8080/contactUs">CONTACT-US</a>
</div><br>

<h2 align="center">${contact}</h2><br>

<title>Contact Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' href='style.css' type='text/css' media='all' />
</head>
<body bgcolor="#3285a8">
	<div id="central">
		<div class="content">
			<h1 align="center">Contact Form</h1>
			<b><p align="center">Send your comments through this form and we will get back to
				you.</p></b>
			<div id="message" align="center">
				<form id="frmContact" name="frmContact" action="contactUsData" method="POST"
					novalidate="novalidate" >
					<b><div class="label">Name:</div></b>
					<div class="field">
						<input type="text" id="pp-name" name="Name"
							placeholder="enter your name here" title="Please enter your name"
							class="required" aria-required="true" required>
					</div><br>
					<b><div class="label">Email:</div></b>
					<div class="field">
						<input type="text" id="pp-email" name="Email_id"
							placeholder="enter your email address here"
							title="Please enter your email address" class="required email"
							aria-required="true" required>
					</div><br>
					<b><div class="label">Phone Number:</div></b>
					<div class="field">
						<input type="text" id="pp-phone" name="Phone_no"
							placeholder="enter your phone number here"
							title="Please enter your phone number" class="required phone"
							aria-required="true" required>
					</div><br>
					<b><div class="label">Message:</div></b>
					<div class="field">
						<textarea id="about-project" name="Message"
							placeholder="enter your message here"></textarea>
					</div><br>
					<div id="mail-status"></div>
					<input type="submit" name="submit" value="Send Message"
						id="send-message" style="clear: both;">
						
						
						
					
				</form>
			</div>
		</div>
		<!-- content -->
	</div>
	<!-- central -->
</body>
</html>