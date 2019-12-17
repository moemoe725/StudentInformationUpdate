<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <%@ page isELIgnored="false" %>
   <%@ include file="/WEB-INF/views/menu.jsp"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
<div id="body">
	<div class="form-group">
	<form:form action="${pageContext.request.contextPath}/new_student.htm" method="POST" modelAttribute="student" enctype="multipart/form-data">
		<form:hidden path="id" />
		<label>Name</label>
		<form:input path="name" class="form-control"/>
		<label>Class</label>
		<form:select path="classes_id" items="${ClassesList}" itemLabel="name" itemValue="id" class="form-control"></form:select>
		<label>Student Profile</label> 
		<form:input type="file" path="file" class="form-control"/>
		<label>Phone Number</label>
		<form:input path="phNo" class="form-control"/>
		<label>Address</label>
		<form:input path="address" class="form-control"/>
		<label>Email</label>
		<form:input path="email" class="form-control"/>
		<input type="submit" value="Save"/>
	</form:form>
	</div>
		</div>
   <%@ include file="/WEB-INF/views/footer.jsp"%>   
</body>
</html>
