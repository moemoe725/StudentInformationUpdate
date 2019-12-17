<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%-- <a href="<c:url value='new_student.htm'/>">Add New Student</a> --%>
<%@include file="menu.jsp" %>
<div class="container">
	<table class="table table-dark table-hover table-border">
		<thead>
			<tr>
				<th>No</th>
				<th>Name</th>
				<th>Classes</th>
				<th>Student Profile</th>
				<th>Phone Number</th>
				<th>Address</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${StudentList}" var="std" varStatus="row">
			 <tr>
				<td>${row.count }</td>
				<td>${std.name }</td>
				<td>${std.classes.name }</td>
				<td><img src="./images/${std.pathName}" width="80" height="80"/></td>
				<td>${std.phNo }</td>
				<td>${std.address }</td>
				<td>${std.email }</td>
				<td><a href=<c:url value="deletestu.htm/${std.id }"/>>Delete</a>&nbsp;&nbsp;<a href=<c:url value="updatestu.htm/${std.id}"/>>Update</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>