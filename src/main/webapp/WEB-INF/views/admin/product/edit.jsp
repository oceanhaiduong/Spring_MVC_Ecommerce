<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin - Cập nhật sản phẩm</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/litepicker/dist/css/litepicker.css"
	rel="stylesheet" />

<!-- Option 1: Include in HTML -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link href="<c:url value='/template/admin/css/styles2.css'/>"
	rel="stylesheet">

<link href="<c:url value='/template/web/img/favicon.ico'/>" rel="icon">

<script data-search-pseudo-elements="" defer=""
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous">
	
</script>
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
								Trang cập nhật sản phẩm
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
							<form method="POST" name="update_product"
								action="<%=request.getContextPath()%>/admin/editPro"
								enctype="multipart/form-data">
								<!-- Form Row-->
								<div class="row gx-3 mb-3">
									<!-- Form Group (first name)-->
									<div class="col-md-6">
										<label class="small mb-1" for="inputUsername">Tiêu đề</label>
										<input name="title" value="${productDetail.title}"
											class="form-control" type="text"
											placeholder="Vui lòng nhập tiêu đề" />
									</div>
									<!-- Form Group (last name)-->
									<div class="col-md-4">
										<label for="files">Chọn file</label> <input name="myFile"
											value="${productDetail.img_path}" class="form-control"
											style="margin-top: 5px;" id="files" type="file" />
									</div>
									<div class="col-md-2">
										<input hidden="hidden" class="form-control" name="id"
											value="${id}" type="text" />
									</div>
								</div>
								<!-- Form Group (username)-->
								<div class="mb-3">
									<label for="exampleFormControlTextarea1">Nội dung</label>
									<textarea name="content"
										class="form-control form-control-solid"
										id="exampleFormControlTextarea1" rows="6">${productDetail.content}"</textarea>
								</div>

								<!-- Form Row        -->
								<div class="row gx-3 mb-3">
									<!-- Form Group (organization name)-->
									<div class="col-md-6">
										<label class="small mb-1" for="inputOrgName">Giá sản
											phẩm</label> <input name="price_product" class="form-control"
											id="inputOrgName" type="text"
											value="${productDetail.price_product}"
											placeholder="Enter your organization name" />
									</div>
									<!-- Form Group (location)-->
									<div class="col-md-6">
										<label for="exampleFormControlSelect1">Chọn loại sản
											phẩm</label>
										<c:choose>
											<c:when test="${categories != null}">
												<select name="category_id" style="margin-top: 5px;"
													class="form-control" id="exampleFormControlSelect1">
													<option value="" selected="selected">Nhấn vào để
														chọn một loại</option>
													<c:forEach var="category" items="${categories}">
														<option value="${category.id_type}"
															${category.id_type == productDetail.category_id ? 'selected' : ''}>${category.name_type}</option>
													</c:forEach>
												</select>
											</c:when>
											<c:otherwise>
        										No Categories found in the DB!
        									</c:otherwise>
										</c:choose>
									</div>
								</div>
								<button class="btn btn-success" type="submit">Cập nhật</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous">
		
	</script>
	<script src="<c:url value='/template/admin/js/scripts.js'/>"></script>
	<script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js"
		crossorigin="anonymous"></script>
	<script
		src="<c:url value='/template/admin/js/datatables/datatables-simple-demo.js'/>"></script>
	<script src="<c:url value='/template/admin/js/litepicker.js'/>"></script>
	<script src="https://assets.startbootstrap.com/js/sb-customizer.js"></script>
	<sb-customizer project="sb-admin-pro"></sb-customizer>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon='{"rayId":"7a5032ac9e9210a0","token":"6e2c2575ac8f44ed824cef7899ba8463","version":"2023.2.0","si":100}'
		crossorigin="anonymous"></script>

</body>
</html>