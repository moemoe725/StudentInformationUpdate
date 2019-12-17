<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>
   <%@ include file="/WEB-INF/views/menu.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
</head>
<body>
<div id="body">
	<div class="form-group">
		<form:form action="${pageContext.request.contextPath}/insert_sem.htm" method="POST" modelAttribute="semDto">
			<label>Name</label>
			<form:input path="name" class="form-control"/>
			<%-- <label>Subject</label>
			<form:select path="sub_id" items="${subjectList}" itemLabel="name" itemValue="id" class="form-control"></form:select> --%>
			<input type="submit" value="Save"/>
		
		</form:form>
	</div>
</div>
 <%@ include file="/WEB-INF/views/footer.jsp"%>   
</body>
</html>