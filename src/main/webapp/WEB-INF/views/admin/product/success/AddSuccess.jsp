<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<p style="margin-top: 5px; margin-bottom: 20px;" class="p-3 mb-2 bg-success text-white font-weight-bold">${msg}</p>
		<a class="btn btn-primary btn-sm font-weight-bold"
							style="font-size: 14px; font-weight: initial;" href="<%=request.getContextPath()%>/admin/product"
							role="button">Trở về danh sách</a>
	</div>
</body>
</html>