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
			class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
			<div class="container-xl px-4">
				<div class="page-header-content pt-4">
					<div class="row align-items-center justify-content-between">
						<div class="col-auto mt-4">
							<h1 class="page-header-title">
								<div class="page-header-icon">
									<i data-feather="filter"></i>
								</div>
								Tất cả loại sản phẩm
							</h1>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Main page content-->
		<div class="container-xl px-4 mt-n10">
			<div class="card mb-4">
				<div class="card-header d-flex justify-content-between bg-light">
					<div class="text-black">Extended DataTables</div>
					<div>
						<c:if test="${not empty msg}">
							<p class="p-3 mb-2 bg-success text-white font-weight-bold">${msg}</p>
						</c:if>
					</div>
					<div>
						<a class="btn btn-success btn-sm font-weight-bold"
							style="font-size: 14px; font-weight: initial;" href="<%=request.getContextPath()%>/admin/newType"
							role="button">Tạo loại sản phảm</a>
					</div>
				</div>
				<div class="card-body">
					<c:choose>
						<c:when test="${categories != null}">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>Id</th>
										<th>Tên loại</th>
										
										<!-- <th>Salary</th>
								<th>Status</th> -->
										<th>Chức năng</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Id</th>
										<th>Tên loại</th>
									
										<!-- <th>Salary</th>
								<th>Status</th> -->
										<th>Chức năng</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="category" items="${categories}">
										<tr>
											<td>${category.id_type}</td>
											<td>${category.name_type}</td>
											<td>					
												<a class="btn btn-datatable btn-icon btn-warning me-2"
													href="<%=request.getContextPath()%>/admin/editType/${category.id_type}"
													> <i style="width: 25px; height: 25px; padding: 5px"
														class="bi bi-box-arrow-in-down-left"></i></a>																							
												<a class="btn btn-datatable btn-icon btn-danger"
												href="<%=request.getContextPath()%>/admin/deleteType/${category.id_type}"
												onclick="return confirm('Do you really want to delete?')"><i
													style="width: 25px; height: 25px; padding: 5px"
													class="bi bi-trash"></i> </a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:when>
						<c:otherwise>
        					No Categories found in the DB!
        				</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</main>
</body>
</html>