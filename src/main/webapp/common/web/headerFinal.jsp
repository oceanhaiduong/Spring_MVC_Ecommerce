<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!-- TopBar Start -->
<div class="container-fluid">
	<div class="row bg-secondary py-2 px-xl-5">
		<div class="col-lg-6 d-none d-lg-block">
			<div class="d-inline-flex align-items-center">
				<a class="text-dark" href="">Câu Hỏi Thường Gặp</a> <span
					class="text-muted px-2">|</span> <a class="text-dark" href="">Trợ
					Giúp</a> <span class="text-muted px-2">|</span> <a class="text-dark"
					href="">Hỗ Trợ</a>
			</div>
		</div>
		<div class="col-lg-6 text-center text-lg-right">
			<div class="d-inline-flex align-items-center">
				<a class="text-dark px-2" href=""> <i class="fab fa-facebook-f"></i>
				</a> <a class="text-dark px-2" href=""> <i class="fab fa-twitter"></i>
				</a> <a class="text-dark px-2" href=""> <i
					class="fab fa-linkedin-in"></i>
				</a> <a class="text-dark px-2" href=""> <i class="fab fa-instagram"></i>
				</a> <a class="text-dark pl-2" href=""> <i class="fab fa-youtube"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="row align-items-center py-3 px-xl-5">
		<div class="col-lg-3 d-none d-lg-block">
			<a href="<%=request.getContextPath()%>/trang-chu"
				class="text-decoration-none">
				<h1 class="m-0 display-5 font-weight-semi-bold">
					<span class="text-primary font-weight-bold border px-3 mr-1">3</span>Group
				</h1>
			</a>
		</div>
		<div class="col-lg-6 col-6 text-left">
			<form action="">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Tìm kiếm sản phẩm">
					<div class="input-group-append">
						<span class="input-group-text bg-transparent text-primary">
							<i class="fa fa-search"></i>
						</span>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-3 col-6 text-right">
			<a href="<%=request.getContextPath()%>/trang-chu/cart"
				class="btn border"> <i class="fas fa-shopping-cart"></i> <span
				class="badge">${TotalQuanityCart} Sản Phẩm
			</span>
			</a>
			<c:choose>
				<c:when test="${not empty User_name}">
					<a href="" class="btn border"> <i class="fas fa-user"></i> <span
						class="badge">${User_name}</span>
					</a>
					<a id="logout_btn" class="btn border bg-transparent text-primary"
						href="<%=request.getContextPath()%>/logout"><i
						class="fas fa-sign-out-alt" style="color: #b41818;"></i></a>
				</c:when>
				<c:otherwise>

				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<!-- TopBar End -->

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
				class="collapse navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0"
				id="navbar-vertical">
				<div class="navbar-nav w-100 overflow-hidden" style="height: 410px">				
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
						<a href="<%=request.getContextPath()%>/trang-chu"
							class="nav-item nav-link active">Trang chủ</a> <a
							href="<%=request.getContextPath()%>/trang-chu/shop"
							class="nav-item nav-link">Cửa hàng</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-toggle="dropdown">Mục</a>
							<div class="dropdown-menu rounded-0 m-0">
								<a href="<%=request.getContextPath()%>/trang-chu/cart"
									class="dropdown-item">Giỏ hàng</a> <a
									href="<%=request.getContextPath()%>/trang-chu/checkout"
									class="dropdown-item">Kiểm tra giỏ hàng</a>
							</div>
						</div>
						<a href="<%=request.getContextPath()%>/trang-chu/contact"
							class="nav-item nav-link">Liên hệ</a>
					</div>
					<div class="navbar-nav ml-auto py-0">
						<c:if test="${empty User_name}">
							<a href="<%=request.getContextPath()%>/login"
								class="nav-item nav-link">Đăng nhập</a>
							<a href="<%=request.getContextPath()%>/SignUp"
								class="nav-item nav-link">Đăng Ký</a>
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

