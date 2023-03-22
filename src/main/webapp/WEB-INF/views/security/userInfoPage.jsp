<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <h2>User Info Page</h2>

    <h3>Welcome : ${pageContext.request.userPrincipal.name}</h3>

    <b>This is protected page!</b>  
</body>
</html>