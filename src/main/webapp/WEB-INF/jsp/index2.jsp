<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

.topnav .right {
  float: right;
}

.topnav .right a {
  padding: 14px 16px;
}

.topnav .right span {
  color: #f2f2f2;
  padding: 14px 16px;
  font-size: 17px;
}

.logout-button {
  float: right; /* Position the logout button to the right */
  background-color: #f44336; /* Red background for logout button */
  color: white; /* White text color */
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  border-radius: 4px; /* Rounded corners */
}

.logout-button:hover {
  background-color: #e53935; /* Darker red for hover effect */
}

.profile-link {
    float: right; /* Align the profile link to the right */
    background-color: #4CAF50; /* Green background for profile link */
    color: white; /* White text color */
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
    border-radius: 4px; /* Rounded corners */
}

.profile-link:hover {
    background-color: #45a049; /* Darker green for hover effect */
}

.greeting {
  display: flex;
  align-items: center;
  margin-top: 20px;
}

.greeting img {
  width: 50px; /* Adjust the width of the image as needed */
  height: auto;
  margin-right: 10px;
}

.video-container {
  margin-top: 20px;
  text-align: center;
}

video {
  width: 100%; /* Make the video responsive */
  max-width: 600px; /* Limit the maximum width of the video */
  height: auto; /* Maintain aspect ratio */
}

.user-info {
  margin-top: 20px;
  padding: 20px;
  background-color: #f4f4f4;
  border-radius: 8px;
}

.user-info h3 {
  margin-top: 0;
}

.user-info p {
  margin: 5px 0;
}
</style>
</head>
<body bgcolor="#d4f1f9">

<div class="topnav">
  <a class="profile-link" href="http://localhost:8080/profile">PROFILE</a>
  <div class="right">
    <a class="logout-button" href="http://localhost:8080/home">LOGOUT</a>
  </div>
</div>

<div class="greeting">
  <h2>Hello, XYZ</h2>
</div>

<div class="video-container">
  <video controls>
    <source src="video/sample.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<div class="user-info">
  <h3>Account Details</h3>
  <p><strong>Username:</strong> XYZ</p>
  <p><strong>Email:</strong> xyz@example.com</p>
</div>

</body>
</html>
