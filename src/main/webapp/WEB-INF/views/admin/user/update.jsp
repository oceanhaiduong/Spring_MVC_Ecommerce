<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Spring MVC and JDBC CRUD Example</h2>
	<c:if test="${not empty msg}">
        ${msg}
    </c:if>
	<h3>Update User</h3>
	<form 
		method="POST" 
		name="update_user"
		action="<%=request.getContextPath()%>/update/user">
		<input hidden="hidden" name="id" value="${id}" type="text" /> 
		First Name: <input name="fname" value="${userDetail.firstName}" type="text" />
		<br /> <br /> 
		Last Name: <input name="lname" value="${userDetail.lastName}" type="text" /> 
		<br /> <br /> 
		Email: <input name="email" value="${userDetail.email}" type="text" /><br />
		<br /> 
		DOB: <input name="dob" value="${userDetail.dob}" type="text" /><br />
		<br /> 
		<input value="Update User" type="submit" />
	</form>
</body>
</html>