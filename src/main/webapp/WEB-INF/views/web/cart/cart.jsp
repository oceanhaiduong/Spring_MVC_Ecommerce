<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!-- Navbar Start -->
<div class="container-fluid mb-5">
	<div class="row border-top px-xl-5">
		<div class="col-lg-3 d-none d-lg-block">
			<a
				class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
				data-toggle="collapse" href="#navbar-vertical"
				style="height: 65px; margin-top: -1px; padding: 0 30px;">
				<h6 class="m-0">Loại sản phẩm</h6> <i
				class="fa fa-angle-down text-dark"></i>
			</a>
			<nav
				class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0"
				id="navbar-vertical">
				<div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link" data-toggle="dropdown">Danh mục
							Loại SP <i class="fa fa-angle-down float-right mt-1"></i>
						</a>
						<div
							class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
							<a href="" class="dropdown-item">Men's Dresses</a> <a href=""
								class="dropdown-item">Women's Dresses</a> <a href=""
								class="dropdown-item">Baby's Dresses</a>
						</div>
					</div>
					<c:choose>
						<c:when test="${Categories != null}">
							<c:forEach var="category" items="${Categories}">
								<a href="<%=request.getContextPath()%>/trang-chu/pro-duct/${category.id_type}" class="nav-item nav-link">${category.name_type}</a>
								<!-- 	<a href="" class="nav-item nav-link">Jeans</a>
								<a href="" class="nav-item nav-link">Swimwear</a>
								<a href="" class="nav-item nav-link">Sleepwear</a>
								<a href="" class="nav-item nav-link">Sportswear</a>
								<a href="" class="nav-item nav-link">Jumpsuits</a>
								<a href="" class="nav-item nav-link">Blazers</a>
								<a href="" class="nav-item nav-link">Jackets</a>
								<a href="" class="nav-item nav-link">Shoes</a> -->
							</c:forEach>
						</c:when>
						<c:otherwise>
							<a href="" class="nav-item nav-link text-primary">No
								Categories found in the DB!</a>
						</c:otherwise>
					</c:choose>
				</div>
			</nav>
		</div>
		<div class="col-lg-9">
			<nav
				class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
				<a href="" class="text-decoration-none d-block d-lg-none">
					<h1 class="m-0 display-5 font-weight-semi-bold">
						<span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper
					</h1>
				</a>
				<button type="button" class="navbar-toggler" data-toggle="collapse"
					data-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between"
					id="navbarCollapse">
					<div class="navbar-nav mr-auto py-0">
						<a href="index.html" class="nav-item nav-link active">Trang
							chủ</a> <a href="<%=request.getContextPath()%>/trang-chu/shop"
							class="nav-item nav-link">Cửa hàng</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-toggle="dropdown">Mục</a>
							<div class="dropdown-menu rounded-0 m-0">
								<a href="cart.html" class="dropdown-item">Giỏ hàng</a> <a
									href="checkout.html" class="dropdown-item">Kiểm tra giỏ
									hàng</a>
							</div>
						</div>
						<a href="contact.html" class="nav-item nav-link">Liên hệ</a>
					</div>
					<div class="navbar-nav ml-auto py-0">
						<%-- <c:if test="${pageContext.request.remoteUser != null}">
							<span class="nav-item nav-link">Welcome :
								${pageContext.request.userPrincipal.name}</span>
							<a class="nav-item nav-link btn btn-danger"
								style="width: 80px; height: 30px; padding: 0 0 0 0; line-height: 32px; margin-top: 16px;"
								href="<%=request.getContextPath()%>/logout">Logout</a>
						</c:if> --%>
						<c:if test="${User_name == ''}">
							<a href="<%=request.getContextPath()%>/login"
								class="nav-item nav-link">Đăng nhập</a>
							<a href="<%=request.getContextPath()%>/SignUp"
								class="nav-item nav-link">Đăng xuất</a>
						</c:if>
					</div>
				</div>
			</nav>
		</div>
	</div>
</div>
<!-- Navbar End -->

<!-- Cart Start -->
<div class="container-fluid pt-5">
	<div class="row px-xl-5">
		<div class="col-lg-8 table-responsive mb-5">
			<table class="table table-bordered text-center mb-0">
				<thead class="bg-secondary text-dark">
					<tr>
						<th>Sản phẩm</th>
						<th>Giá</th>
						<th>Hình</th>
						<th>Số lượng</th>
						<th>Tổng tiền</th>
						<th>Cập nhật</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody class="align-middle">
					<c:forEach var="cart" items="${Cart}">
						<tr>
							<td class="align-middle">${cart.value.product.title}</td>
							<td class="align-middle"><fmt:formatNumber type="number"
									maxFractionDigits="2"
									value="${cart.value.product.price_product}" /> VND</td>
							<td class="align-middle">
								<%-- <img width="120px" height="100px"
							src="<c:url value='/template/img/${product.img_path}'/>" alt=""> --%>
								<img
								src="<c:url value='/template/img/${cart.value.product.img_path}'/>"
								alt="" style="width: 50px;">
							</td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input type="text"
										id="quantity-cart-${cart.key}"
										class="form-control form-control-sm bg-secondary text-center"
										value="${cart.value.quanity}">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
							</td>
							<td class="align-middle"><fmt:formatNumber type="number"
									maxFractionDigits="2" value="${cart.value.totalPrice}" /> VND
							</td>
							<td class="align-middle">
							<button
								type="button"
								data-id="${cart.key}"
								class="btn btn-sm btn-primary edit-cart"> <i class="fas fa-edit"></i>
							</button></td>
							<td class="align-middle"><a
								href="<%=request.getContextPath()%>/trang-chu/deleteCart/${cart.key}"
								class="btn btn-sm btn-primary"> <i class="fa fa-times"></i>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-lg-4">
			<form class="mb-5" action="">
				<div class="input-group">
					<input type="text" class="form-control p-4"
						placeholder="Mã giảm giá">
					<div class="input-group-append">
						<button class="btn btn-primary">Áp dụng mã giảm giá</button>
					</div>
				</div>
			</form>
			<div class="card border-secondary mb-5">
				<div class="card-header bg-secondary border-0">
					<h4 class="font-weight-semi-bold m-0">Chi tiết hóa đơn</h4>
				</div>
				<div class="card-body">
					<div class="d-flex justify-content-between mb-3 pt-1">
						<h6 class="font-weight-medium">Tổng số lượng</h6>
						<h6 class="font-weight-medium">
							<fmt:formatNumber type="number" maxFractionDigits="2"
								value="${TotalQuanityCart}" />
							VND
						</h6>
					</div>
					<div class="d-flex justify-content-between mb-3 pt-1">
						<h6 class="font-weight-medium">Tổng tiền</h6>
						<h6 class="font-weight-medium">
							<fmt:formatNumber type="number" maxFractionDigits="2"
								value="${TotalPriceCart}" />
							VND
						</h6>
					</div>
					<div class="d-flex justify-content-between">
						<h6 class="font-weight-medium">Tiền ship</h6>
						<h6 class="font-weight-medium">10000VND</h6>
					</div>
				</div>
				<div class="card-footer border-secondary bg-transparent">
					<div class="d-flex justify-content-between mt-2">
						<h5 class="font-weight-bold">TỔNG</h5>
						<h5 class="font-weight-bold">
							<fmt:formatNumber type="number" maxFractionDigits="2"
								value="${TotalPriceCart * TotalQuanityCart}" />
							VND
						</h5>
					</div>
					<button class="btn btn-block btn-primary my-3 py-3">Thanh
						toán</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Cart End -->

<content tag="script">
	<script>
		$(".edit-cart").on("click", function(){
			var id = $(this).data("id");
			var quantity = $("#quantity-cart-"+id).val();
			/* alert(quantity); */
			window.location = "editCart/"+id+"/"+quantity;
		})
	</script>
</content>

