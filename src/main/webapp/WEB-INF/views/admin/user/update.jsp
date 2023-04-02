<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật người dùng</title>
</head>
<body>
	<main>
		<header
			class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
			<div class="container-xl px-4">
				<div class="page-header-content">
					<div class="row align-items-center justify-content-between pt-3">
						<div class="col-auto mb-3">
							<h1 class="page-header-title">
								<div class="page-header-icon">
									<i data-feather="user"></i>
								</div>
								Trang cập nhật thông tin người dùng
							</h1>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Main page content-->
		<div class="container-xl px-4 mt-4">
			<!-- Account page navigation-->
			<nav class="nav nav-borders">
				<a class="nav-link active ms-0">Cập nhật</a>
			</nav>
			<nav class="nav nav-borders">
				<c:if test="${not empty msg}">
					<p style="margin-top: 5px"
						class="p-3 mb-2 bg-success text-white font-weight-bold">${msg}</p>
				</c:if>
			</nav>
			<hr class="mt-0 mb-4" />
			<div class="row">
				<div class="col-xl-12">
					<!-- Account details card-->
					<div class="card mb-4">
						<div class="card-header"></div>
						<div class="card-body">
							<form:form servletRelativeAction="/admin/editUser" method="POST"
								modelAttribute="user_detail">

								<div hidden="hidden" class="row gx-3 mb-3">
									<!-- Form Group (first name)-->
									<div hidden="hidden" class="col-md-6">
										<label class="small mb-1" for="inputUsername">Tên đăng
											nhập(*):</label>
										<form:input id="inputUsername" path="username"
											value="${user_detail.username}" cssClass="form-control"
											type="text" placeholder="Vui lòng nhập tên đăng nhập" />
										<form:errors path="username" cssClass="error text-danger" />
									</div>
									<div hidden="hidden" class="col-md-6">
										<label class="small mb-1" for="inputPassword"> Mật
											khẩu(*):</label>
										<form:input id="inputPassword" path="password"
											value="${user_detail.password}" cssClass="form-control"
											type="password" placeholder="*************" />
										<form:errors path="password" cssClass="error text-danger" />
									</div>
								</div>
								<!-- Form Row-->
								<div class="row gx-3 mb-3">
									<div class="col-md-6">
										<label class="small mb-1" for="inputlastname">Tên
											người dùng(Tên đệm + Tên)(*):</label>
										<form:input value="${user_detail.lastname}" id="inputlastname"
											path="lastname" cssClass="form-control" type="text"
											placeholder="Tên người dùng(Tên đệm + Tên)" />
										<form:errors path="lastname" cssClass="error text-danger" />
									</div>
									<div class="col-md-6">
										<label class="small mb-1" for="inputRole">Quyền:</label>
										<form:select id="inputRole" path="user_role"
											cssClass="form-control">

											<option value="${user_detail.user_role}"
												${user_detail.user_role == 'USER' ? 'selected="true"' : ""}>USER</option>
											<option value="${user_detail.user_role}"
												${user_detail.user_role == 'ADMIN' ? 'selected="true"' : ""}>ADMIN</option>

										</form:select>
										<form:errors path="user_role" cssClass="error text-danger" />
									</div>
								</div>

								<div class="row gx-3 mb-3">
									<div class="col-md-6">
										<label class="small mb-1" for="inputEmail"> Email(*):</label>
										<form:input value="${user_detail.email}" id="inputEmail"
											path="email" cssClass="form-control" type="email"
											placeholder="Vui lòng nhập email" />
										<form:errors path="email" cssClass="error text-danger" />
									</div>
									<div class="col-md-6">
										<label class="small mb-1" for="inputRole">Số điện
											thoại(*):</label>
										<form:input value="${user_detail.phone}" id="inputPassword"
											path="phone" cssClass="form-control" type="text"
											placeholder="(VD: 840933338007)" />
										<form:errors path="phone" cssClass="error text-danger" />
									</div>
								</div>

								<div hidden="hidden" class="row gx-3 mb-3">
									<div class="col-md-12">
										<form:input id="inputPassword" value="1" path="enabled"
											cssClass="form-control" type="text" />
									</div>
								</div>

								<div hidden="hidden" class="row gx-3 mb-3">
									<div class="col-md-12">
										<input id="inputPassword" value="${id}" name="id"
											Class="form-control" type="text" />
									</div>
								</div>

								<div hidden="hidden" class="row gx-3 mb-3">
									<input hidden="hidden" class="form-control"
										name="${_csrf.parameterName}" value="${_csrf.token}" />
								</div>

								<button class="btn btn-success" type="submit">Cập nhật</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>