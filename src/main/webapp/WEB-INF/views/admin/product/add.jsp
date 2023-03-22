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
								Trang tạo sản phẩm
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
				<a class="nav-link active ms-0">Tạo mới</a>
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
							<form action="<%=request.getContextPath()%>/admin/addPro"
								method="POST" enctype="multipart/form-data">
								<!-- Form Row-->
								<div class="row gx-3 mb-3">
									<!-- Form Group (first name)-->
									<div class="col-md-6">
										<label class="small mb-1" for="inputUsername">Tiêu đề</label>
										<input name="title" value="${title}" Class="form-control"
											type="text" placeholder="Vui lòng nhập tiêu đề" />
									</div>
									<!-- Form Group (last name)-->
									<div class="col-md-6">
										<label for="files">Chọn file</label> <input name="myFile"
											value="${myFile}" class="form-control"
											style="margin-top: 5px;" id="files" type="file" />
									</div>
								</div>
								<!-- Form Group (username)-->
								<div class="mb-3">
									<label for="exampleFormControlTextarea1">Nội dung</label>
									<textarea name="content" value="${content}"
										class="form-control form-control-solid"
										id="exampleFormControlTextarea1" rows="6"></textarea>
								</div>

								<!-- Form Row        -->
								<div class="row gx-3 mb-3">
									<!-- Form Group (organization name)-->
									<div class="col-md-6">
										<label class="small mb-1" for="inputOrgName">Giá sản
											phẩm</label> <input name="price_product" class="form-control"
											id="inputOrgName" type="text" value="${price_product}"
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
														<option value="${category.id_type}">${category.name_type}</option>												
													</c:forEach>
												</select>
											</c:when>
											<c:otherwise>
        										No Categories found in the DB!
        									</c:otherwise>
										</c:choose>
									</div>
								</div>
								<button class="btn btn-success" type="submit">Tạo</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>