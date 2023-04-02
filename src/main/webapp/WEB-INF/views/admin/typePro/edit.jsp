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
								Trang Cập nhật Loại sản phẩm
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
							<form:form servletRelativeAction="/admin/editTypeCate" method="POST"
								modelAttribute="category_detail">
								<!-- Form Row-->
								<div class="row gx-3 mb-3">
									<!-- Form Group (first name)-->
									<div class="col-md-10">
										<label class="small mb-1" for="inputUsername">Tên
											loại(*)</label>
										<form:input path="name_type"
											value="${category_detail.name_type}" cssClass="form-control"
											type="text" placeholder="Vui lòng nhập tên loại sản phẩm" />
										<form:errors path="name_type" cssClass="error" />
									</div>
									<div class="col-md-2">
										<input hidden="hidden" class="form-control" name="id"
											value="${category_detail.id_type}" type="text" />
									</div>
									<div class="col-md-2">
										<input hidden="hidden" class="form-control" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
									</div>
								</div>
								<button class="btn btn-success" type="submit">Tạo</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>