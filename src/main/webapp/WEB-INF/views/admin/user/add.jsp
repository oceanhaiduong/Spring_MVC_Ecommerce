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
	<h3>Add User</h3>
	<form method="POST" name="add_user"
		action="<%=request.getContextPath()%>/add/user">
		Name: <input name="fname" value="${firstName}" type="text" /> <br />
		<br /> Last Name: <input name="lname" value="${lastName}" type="text" />
		<br /> <br /> Email: <input name="email" value="${email}"
			type="text" /><br /> <br /> DOB: <input name="dob" value="${dob}"
			type="text" /><br /> <br /> <input value="Add User" type="submit" />
	</form>
</body>
</html>