<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Error</title>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-image: url('error.jpg');
  background-size: cover;
  background-position: center;
  color: #f2f2f2;
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

.modal {
  display: none; 
  position: fixed; 
  z-index: 1; 
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%; 
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
  padding-top: 60px;
}

.modal-content {
  background-color: #fefefe;
  margin: 5% auto; 
  padding: 20px;
  border: #100f0f;
  width: 80%; 
}

.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.error-message {
  text-align: center;
}

.error-message h2 {
  color: red;
}

.error-message p {
  color: #000404;
}

.error-message a {
  color: blue;
  text-decoration: none;
  font-weight: bold;
}

.error-message a:hover {
  text-decoration: underline;
}
</style>
</head>
<body onload="showModal()">

<div id="errorModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <div class="error-message">
      <p>Registration Successful...</p>
      <p><a href ="http://localhost:8080/login" style="color: blue;">Click Here To Login</a></p>
    </div>
  </div>
</div>

<script>
function showModal() {
  var modal = document.getElementById("errorModal");
  modal.style.display = "block";
}

function closeModal() {
  var modal = document.getElementById("errorModal");
  modal.style.display = "none";
  // Redirect to the previous page
  window.history.back();
}

</script>

</body>
</html>
