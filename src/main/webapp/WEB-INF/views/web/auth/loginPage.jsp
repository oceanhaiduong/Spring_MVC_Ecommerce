<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="<c:url value="/template/admin/css/login.css" />"
	rel="stylesheet">
<link href="<c:url value="/template/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<style type="text/css">
.divider:after, .divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}
</style>
</head>
<body>

	<section class="vh-100">
		<div class="container py-5 h-100">
			<div
				class="row d-flex align-items-center justify-content-center h-100">
				<div class="col-md-8 col-lg-7 col-xl-6">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
						class="img-fluid" alt="Phone image">
				</div>
				<div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
					<div class="mb-4 mt-4">
						<span class="text-primary font-weight-bold">login</span>
					</div>
					<!-- /login?error=true -->
					<c:if test="${param.error == 'true'}">
						<div style="color: red; margin: 10px 0px;">

							Login Failed!!!<br /> Reason :
							${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

						</div>
					</c:if>
					<form name='f'
						action="${pageContext.request.contextPath}/j_spring_security_check"
						method='POST'>
						<!-- Email input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form1Example13">Username</label> <input
								type="text" id="form1Example13" name='username'
								class="form-control form-control-lg" />
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form1Example23">Password</label> <input
								type="password" id="form1Example23" name='password'
								class="form-control form-control-lg" />
						</div>

						<div class="d-flex justify-content-around align-items-center mb-4">
							<!-- Checkbox -->
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
									id="form1Example3" checked /> <label class="form-check-label"
									for="form1Example3"> Remember me </label>
							</div>
							<a href="#!">Forgot password?</a>
						</div>

						<!-- Submit button -->
						<button name="submit" type="submit" value="submit"
							class="btn btn-primary btn-lg btn-block">Sign in</button>

						<div class="divider d-flex align-items-center my-4">
							<p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
						</div>

						<a class="btn btn-primary btn-lg btn-block"
							style="background-color: #3b5998" href="#!" role="button"> <i
							class="fab fa-facebook-f me-2"></i>Continue with Facebook
						</a> <a class="btn btn-primary btn-lg btn-block"
							style="background-color: #55acee" href="#!" role="button"> <i
							class="fab fa-twitter me-2"></i>Continue with Twitter
						</a>

					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>