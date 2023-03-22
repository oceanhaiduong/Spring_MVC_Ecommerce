<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC 5 - form handling</title>
<link href="<c:url value="/template/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/template/bootstrap/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/template/bootstrap/js/bootstrap.min.js" />"></script>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Spring MVC 5 Form Handling Example -Sign up Form</h2>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Đăng ký tài khoản mới</div>
				</div>
				<div class="panel-body">
					<form:form action="LoginSuccess" cssClass="form-horizontal"
						method="post" modelAttribute="UserForm">

						<div class="form-group">
							<label for="icode" class="col-md-3 control-label">Tên đăng nhập</label>
							<div class="col-md-9">
								<form:input path="userName" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Mật khẩu</label>
							<div class="col-md-9">
								<form:password path="password" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Nhập lại mật khẩu</label>
							<div class="col-md-9">
								<form:password path="password" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Đăng ký</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>