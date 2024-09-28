<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
  <a class="active" href="http://localhost:8080/back">HOME</a>
  <a href="http://localhost:8080/insert">Add Member</a>
  <a href="http://localhost:8080/monthly_pay">Monthly Pay</a>
  <a href="http://localhost:8080/members">All Members</a>
  <a class="active" href="http://localhost:8080/home">LOGOUT</a>
</div><br><br>
<body bgcolor="#3285a8">
<form action ="monthlypay" method="post">
<h3 align="center"><b style="color: black">Monthly Pay Here..</b> </h3>
<table border="1" style="color: black" align="center">
<tr><td><b>Member Name</td><td><input type ="text" name ="member_name" placeholder="member name"></td><tr>
<tr><td><b>Year</td><td><input type = "number" name = "year" placeholder="year"></td></tr>
<tr><td><b>Month</td><td><input type = "text" name = "month" placeholder="month"></td></tr>
<tr><td><b>Amount</td><td><input type = "number" name = "amount" placeholder="amount"> </td></tr>
<tr><td colspan="2" align="center"><input type ="submit" value ="Pay" name ="m1"></td></tr>
</table><br><br>


</form>
</body>
</html>