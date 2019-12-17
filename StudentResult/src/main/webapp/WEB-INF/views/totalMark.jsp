<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ include file="/WEB-INF/views/menu.jsp"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="body">
<table class="table">
<thead>
<tr>
	<th>No.</th>
	<th>Student Name</th>
	<th>Subject Name</th>
	<!-- <th>401</th>
	<th>402</th>
	<th>403</th>
	<th>404</th>
	<th>405</th> -->
</tr>
</thead>
<tbody>
<c:forEach items="${ markList}" var="mark" varStatus="row">
	<tr>
		<td>${row.count }</td>
		<td>${mark.student.name}</td>
		<td>${mark.subject.name}
		<!-- <td>Moe Waddy Maung</td>
		<td>80</td>
		<td>80</td>
		<td>80</td>
		<td>80</td>
		<td>80</td> -->
	
	</tr>
</c:forEach>
</tbody>
</table>
</div>
 <%@ include file="/WEB-INF/views/footer.jsp"%>   
</body>
</html>