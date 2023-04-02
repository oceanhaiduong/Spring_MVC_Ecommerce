<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết hóa đơn</title>
</head>
<body>
	<div>${bills_detail}</div>
	
	<c:forEach var="billsdetail" items="${bills_detail}">
		<div>${billsdetail.id}</div>
		<div>${billsdetail.totalQuanity}</div>
		<div>${billsdetail.totalPrice}</div>
	</c:forEach>
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
								Chi tiết hóa đơn
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
					<div class="text-black">kế thừa từ DataTables.net</div>
					<div>
						<c:if test="${not empty msg}">
							<p class="p-3 mb-2 bg-success text-white font-weight-bold">${msg}</p>
						</c:if>
					</div>
				</div>
				<div class="card-body">
					<c:choose>
						<c:when test="${bills_detail != null}">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>Id</th>
										<th>Tên sản phẩm</th>
										<th>Tổng số lượng</th>
										<th>Tổng tiền</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Id</th>
										<th>Tên sản phẩm</th>
										<th>Tổng số lượng</th>
										<th>Tổng tiền</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="billsdetail" items="${bills_detail}">
										<tr>
											<td>${billsdetail.id}</td>
											<td>${billsdetail.title}</td>
											<td>${billsdetail.totalQuanity}</td>
											<td>${billsdetail.totalPrice}</td>																			
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:when>
						<c:otherwise>
        					Không tìm thấy dữ liệu !
        				</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</main>
</body>
</html>