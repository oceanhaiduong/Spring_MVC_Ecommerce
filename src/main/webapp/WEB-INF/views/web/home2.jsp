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
								<a
									href="<%=request.getContextPath()%>/trang-chu/pro-duct/${category.id_type}"
									class="nav-item nav-link">${category.name_type}</a>
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
			<div id="header-carousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" style="height: 410px;">
						<img class="img-fluid"
							src="<c:url value='/template/web/img/carousel-3.jpg' />"
							alt="Image">
						<div
							class="carousel-caption d-flex flex-column align-items-center justify-content-center">
							<div class="p-3" style="max-width: 700px;">
								<h4 class="text-light text-uppercase font-weight-medium mb-3">Giảm
									10% cho đơn đầu tiên</h4>
								<h3 class="display-4 text-white font-weight-semi-bold mb-4">Chăm
									sóc da mặt</h3>
								<a href="" class="btn btn-light py-2 px-3">Mua Ngay</a>
							</div>
						</div>
					</div>
					<div class="carousel-item" style="height: 410px;">
						<img class="img-fluid"
							src="<c:url value='/template/web/img/carousel-4.jpg' />"
							alt="Image">
						<div
							class="carousel-caption d-flex flex-column align-items-center justify-content-center">
							<div class="p-3" style="max-width: 700px;">
								<h4 class="text-light text-uppercase font-weight-medium mb-3">Giảm
									10% cho đơn đầu tiên</h4>
								<h3 class="display-4 text-white font-weight-semi-bold mb-4">Chăm
									sóc da mặt</h3>
								<a href="" class="btn btn-light py-2 px-3">Mua Ngay</a>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#header-carousel"
					data-slide="prev">
					<div class="btn btn-dark" style="width: 45px; height: 45px;">
						<span class="carousel-control-prev-icon mb-n2"></span>
					</div>
				</a> <a class="carousel-control-next" href="#header-carousel"
					data-slide="next">
					<div class="btn btn-dark" style="width: 45px; height: 45px;">
						<span class="carousel-control-next-icon mb-n2"></span>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>
<!-- Navbar End -->

<!-- Featured Start -->
<div class="container-fluid pt-5">
	<div class="row px-xl-5 pb-3">
		<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
			<div class="d-flex align-items-center border mb-4"
				style="padding: 30px;">
				<h1 class="fa fa-check text-primary m-0 mr-3"></h1>
				<h6 class="font-weight-semi-bold m-0">Sản phẩm chất lượng</h6>
			</div>
		</div>
		<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
			<div class="d-flex align-items-center border mb-4"
				style="padding: 30px;">
				<h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
				<h6 class="font-weight-semi-bold m-0">Giao hàng miễn phí</h6>
			</div>
		</div>
		<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
			<div class="d-flex align-items-center border mb-4"
				style="padding: 30px;">
				<h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
				<h6 class="font-weight-semi-bold m-0">Hoàn trả 14 ngày</h6>
			</div>
		</div>
		<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
			<div class="d-flex align-items-center border mb-4"
				style="padding: 30px;">
				<h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
				<h6 class="font-weight-semi-bold m-0">Hỗ trợ 24/7</h6>
			</div>
		</div>
	</div>
</div>
<!-- Featured End -->

<!-- Offer Start -->
<div class="container-fluid offer pt-5">
	<div class="row px-xl-5">
		<div class="col-md-6 pb-4">
			<div
				class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
				<img src="<c:url value='/template/web/img/offer-3.png'/>" alt="">
				<div class="position-relative" style="z-index: 1;">
					<h5 class="text-uppercase text-primary mb-3">Giảm 20% cho tất
						cả đơn hàng</h5>
					<h1 class="mb-4 font-weight-semi-bold">Bộ sưu tập son</h1>
					<a href="" class="btn btn-outline-primary py-md-2 px-md-3">Mua
						ngay</a>
				</div>
			</div>
		</div>
		<div class="col-md-6 pb-4">
			<div
				class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
				<img src="<c:url value='/template/web/img/offer-4.png'/>" alt="">
				<div class="position-relative" style="z-index: 1;">
					<h5 class="text-uppercase text-primary mb-3">Giảm 20% cho tất
						cả đơn hàng</h5>
					<h1 class="mb-4 font-weight-semi-bold">Bộ sưu tập da</h1>
					<a href="" class="btn btn-outline-primary py-md-2 px-md-3">Mua
						ngay</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Offer End -->


<!-- Products Start -->
<div class="container-fluid pt-5">
	<div class="text-center mb-4">
		<h2 class="section-title px-5">
			<span class="px-2">Sản phẩm mua nhiều</span>
		</h2>
	</div>
	<div class="row px-xl-5 pb-3">
		<c:choose>
			<c:when test="${productPop != null}">
				<c:forEach var="productpop" items="${productPop}">
					<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
						<div class="card product-item border-2 border-primary mb-4">
							<div
								class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
								<img style="width: 320px; height: 215px" class="img-fluid"
									src="<c:url value='/template/img/${productpop.img_path}'/>"
									alt="">
							</div>
							<div
								class="card-body border-left border-right text-center p-0 pt-4 pb-3">
								<h6 style="padding: 0 30px 0 30px" class="text-truncate mb-3">${productpop.title}</h6>
								<div class="d-flex justify-content-center">
									<%-- <h6>${productpop.price_product}</h6> --%>
									<h6>
										<fmt:formatNumber type="number" maxFractionDigits="2"
											value="${productpop.price_product}" />
										VND
									</h6>
									<h6 class="text-muted ml-2">
										<del>
											<fmt:formatNumber type="number" maxFractionDigits="2"
												value="${productpop.price_product + 100000}" />
											VND
										</del>
									</h6>
								</div>
							</div>
							<div
								class="card-footer d-flex justify-content-between bg-light border">
								<a
									href="<%=request.getContextPath()%>/trang-chu/product/${productpop.id}"
									class="btn btn-sm text-dark p-0"><i
									class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
								<form
									action="<%=request.getContextPath()%>/trang-chu/cart/${productpop.id}"
									method="get">
									<button class="btn btn-sm text-dark p-0">
										<i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào
										giỏ hàng
									</button>
								</form>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<a href="" class="nav-item nav-link text-primary">No Product
					Popular found in the DB!</a>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<!-- Products End -->


<!-- Subscribe Start -->
<div class="container-fluid bg-secondary my-5">
	<div class="row justify-content-md-center py-5 px-xl-5">
		<div class="col-md-6 col-12 py-5">
			<div class="text-center mb-2 pb-2">
				<h2 class="section-title px-5 mb-3">
					<span class="bg-secondary px-2">Vẫn tiếp tục cập nhật</span>
				</h2>
				<p>Chúng tôi vẫn làm và đang tiến hành cải thiện website cửa
					hàng của mình</p>
			</div>
			<form action="">
				<div class="input-group">
					<input type="text" class="form-control border-white p-4"
						placeholder="Điền mail vào đây">
					<div class="input-group-append">
						<button class="btn btn-primary px-4">Gửi đi</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- Subscribe End -->


<!-- Products Start -->
<div class="container-fluid pt-5">
	<div class="text-center mb-4">
		<h2 class="section-title px-5">
			<span class="px-2">Vừa mới cập nhật</span>
		</h2>
	</div>
	<div class="row px-xl-5 pb-3">
		<c:choose>
			<c:when test="${productNew != null}">
				<c:forEach var="productnew" items="${productNew}">
					<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
						<div class="card product-item border-2 border-primary mb-4">
							<div
								class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
								<img style="width: 320px; height: 215px" class="img-fluid"
									src="<c:url value='/template/img/${productnew.img_path}'/>"
									alt="">
							</div>
							<div
								class="card-body border-left border-right text-center p-0 pt-4 pb-3">
								<h6 class="text-truncate mb-3">${productnew.title}</h6>
								<div class="d-flex justify-content-center">
									<h6>
										<fmt:formatNumber type="number" maxFractionDigits="2"
											value="${productnew.price_product}" />
										VND
									</h6>
									<h6 class="text-muted ml-2">
										<del>
											<fmt:formatNumber type="number" maxFractionDigits="2"
												value="${productnew.price_product + 125000}" />
											VND
										</del>
									</h6>
								</div>
							</div>
							<div
								class="card-footer d-flex justify-content-between bg-light border">
								<a
									href="<%=request.getContextPath()%>/trang-chu/product/${productnew.id}"
									class="btn btn-sm text-dark p-0"><i
									class="fas fa-eye text-primary mr-1"></i>Chi tiết</a>
								<form
									action="<%=request.getContextPath()%>/trang-chu/cart/${productnew.id}"
									method="get">
									<button class="btn btn-sm text-dark p-0">
										<i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào
										giỏ hàng
									</button>
								</form>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<a href="" class="nav-item nav-link text-primary">No Product
					Popular found in the DB!</a>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<!-- Products End -->


<!-- Vendor Start -->
<div class="container-fluid py-5">
	<div class="row px-xl-5">
		<div class="col">
			<div class="owl-carousel vendor-carousel">
				<div class="vendor-item border p-4">
					<img src=" <c:url value='/template/web/img/vendor-1.jpg' />"
						alt="img">
				</div>
				<div class="vendor-item border p-4">
					<img src=" <c:url value='/template/web/img/vendor-2.jpg' />"
						alt="img">
				</div>
				<div class="vendor-item border p-4">
					<img src=" <c:url value='/template/web/img/vendor-3.jpg' />"
						alt="img">
				</div>
				<div class="vendor-item border p-4">
					<img src=" <c:url value='/template/web/img/vendor-4.jpg' />"
						alt="img">
				</div>
				<div class="vendor-item border p-4">
					<img src=" <c:url value='/template/web/img/vendor-5.jpg' />"
						alt="img">
				</div>
				<div class="vendor-item border p-4">
					<img src=" <c:url value='/template/web/img/vendor-6.jpg' />"
						alt="img">
				</div>
				<div class="vendor-item border p-4">
					<img src=" <c:url value='/template/web/img/vendor-7.jpg' />"
						alt="img">
				</div>
				<div class="vendor-item border p-4">
					<img src=" <c:url value='/template/web/img/vendor-8.jpg' />"
						alt="img">
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Vendor End -->



<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i
	class="fa fa-angle-double-up"></i></a>
