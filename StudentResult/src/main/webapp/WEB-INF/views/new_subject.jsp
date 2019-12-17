<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<form:form action="${pageContext.request.contextPath }/insert_sub.htm" method="POST" modelAttribute="subDto">
		<form:hidden path="id"/>
		<label>Name</label>
		<form:input path="name" class="form-control"></form:input>
		<label>Classes</label>
		<form:select path="classes_id" items="${classesList}" itemLabel="name" itemValue="id" class="form-control"></form:select>
		<input type="submit" value="Save"/>
	</form:form>
	</div>
	
</div>
<%@ include file="/WEB-INF/views/footer.jsp"%> 
</body>
</html>