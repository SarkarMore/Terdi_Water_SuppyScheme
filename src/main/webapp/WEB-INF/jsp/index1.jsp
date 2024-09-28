<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Water Supply System</title>
  
  <!-- Font Awesome for Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <!-- External CSS -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/index1.css">
</head>
<body>

<!-- Page Header -->
<div class="page-header" style="padding-left:16px">
  <h2>Terdi Baudhavadi</h2>
</div>

<!-- Top Navigation Bar -->
<div class="topnav">
  <a href="${pageContext.request.contextPath}/back">HOME</a>
  <!--  <a href="${pageContext.request.contextPath}/register">REGISTRATION</a> -->
  <a href="${pageContext.request.contextPath}/about-us">ABOUT US</a>
  <a href="${pageContext.request.contextPath}/contactUs">CONTACT US</a>
  <div class="header" style="float:right">
    <a class="logout-button" href="${pageContext.request.contextPath}/home">
      <i class="fa fa-sign-out"></i> LOGOUT
    </a>
  </div>
</div>

<!-- Sidebar -->
<div class="sidebar">
  <a href="${pageContext.request.contextPath}/register">
    <i class="fa fa-fw fa-user-plus"></i> Add User
  </a>
  <a href="${pageContext.request.contextPath}/monthly_pay">
    <i class="fa fa-fw fa-money"></i> Monthly Pay
  </a>
  <a href="${pageContext.request.contextPath}/contactUs">
    <i class="fa fa-fw fa-envelope"></i> Contact
  </a>
</div>

<!-- Main Content Area -->
<div class="content">
  <!-- Table for Member Details -->
  <table>
    <thead>
      <tr>
        <th>First Name</th>
        <th>Middle Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Date of Birth</th>
        <th>Role</th>
        <th colspan="2">Operations</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${memberDetails}" var="memberDetail">
        <tr>
          <td>${memberDetail.first_name}</td>
          <td>${memberDetail.middle_name}</td>
          <td>${memberDetail.last_name}</td>
          <td>${memberDetail.email_id}</td>
          <td>${memberDetail.dob}</td>
          <td>${memberDetail.role}</td>
          <td class="operation-link">
            <a href="${pageContext.request.contextPath}/update/${memberDetail.id}">
              Update
            </a>
          </td>
          <td class="operation-link">
            <a href="${pageContext.request.contextPath}/delete/${memberDetail.id}">
              Delete
            </a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>
