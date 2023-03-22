<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin tài khoản</title>
<link href="<c:url value="/template/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<script
	src="<c:url value="/template/bootstrap/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/template/bootstrap/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h1>${message}</h1>
			<hr/>
			<table class="table table-striped table-bordered">
				<tr>
					<td><b>UserName:</b>: ${userD.userName}</td>
				</tr>
				<tr>
					<td><b>Email:</b>: ${userD.email}</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>