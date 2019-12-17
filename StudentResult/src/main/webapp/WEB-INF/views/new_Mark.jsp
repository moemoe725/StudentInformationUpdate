<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ include file="/WEB-INF/views/menu.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
.error{
color:red;
}
</style>
<script>
$(document).ready(function(){
	
	$("#classes_id").change(function(){
		var classesId=this.value;
		$.get("http://localhost:8080/StudentResult/getStudentListByClasses/"+classesId,function(data,status){
		$("#std_id").empty();
	    $.each(data,function(value,k){
	    	$("#std_id").append("<option value="+k.id+">" +k.name+"</option>");
	    });
	  });
	});
});
</script>
<script>
$(document).ready(function(){
	$("#classes_id").change(function(){
		var classesId=this.value;
		$.get("http://localhost:8080/StudentResult/getSubjectListByClasses/"+classesId,function(data,status){
			$("#sub_id").empty();
			$.each(data,function(value,k){
				$("#sub_id").append("<option value="+k.id+">"+k.name+"</option>")
			})
		});
	});
})
</script>
</head>
<body>
<div id="body">
	<div class="jumbotron">
	<form:form action="${pageContext.request.contextPath}/newMark.htm" method="POST" modelAttribute="markDto" class="form-group">
		<form:hidden path="id"/>
		<label>Name<span class="error">*</span></label>
		<form:input path="name" class="form-control" /><form:errors path="name" cssClass="error"/><br>
		<label>Classes_id</label>
		<form:select path="classes_id" items="${classesList}" itemLabel="name" itemValue="id" class="form-control"></form:select>
		<label>Student_id<span class="error">*</span></label>
		<form:select path="std_id"  items="${studentList}" itemLabel="name" itemValue="id" class="form-control"/><form:errors path="std_id"  cssClass="error"/><br>
		<label>Subject_id</label>
		<form:select path="sub_id"  items="${subjectList}" itemLabel="name" itemValue="id" class="form-control"></form:select>
		<label>Semister_id<span class="error">*</span></label>
		<form:select path="sem_id" items="${semisterList}" itemLabel="name" itemValue="id" class="form-control"/><form:errors path="sem_id" cssClass="error"/><br>
		<label>GiveMark</label>
		<form:input path="giveMark" class="form-control"/><br>
		<label>GetMark</label>
		<form:input path="getMark" class="form-control"/>
		<input type="submit" value="Save" class="btn btn-primary"/>
	</form:form>
	</div>
	</div>
	   <%@ include file="/WEB-INF/views/footer.jsp"%>   
</body>
</html>

<%-- <form:input path="classes_id" class="form-control"/><br> --%>
<%-- <form:select path="sub_id" items="${SubjectList}" itemLabel="name" itemValue="id" class="form-control"></form:select> --%>