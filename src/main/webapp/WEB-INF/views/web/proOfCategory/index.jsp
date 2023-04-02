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

<!-- Shop Start -->
<div class="container-fluid pt-5">
	<div class="row px-xl-5">
		<!-- Shop Sidebar Start -->
		<div class="col-lg-3 col-md-12">
			<!-- Price Start -->
			<div class="border-bottom mb-4 pb-4">
				<h5 class="font-weight-semi-bold mb-4">Filter by price</h5>
				<form>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" checked
							id="price-all"> <label class="custom-control-label"
							for="price-all">All Price</label> <span
							class="badge border font-weight-normal">1000</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="price-1">
						<label class="custom-control-label" for="price-1">$0 -
							$100</label> <span class="badge border font-weight-normal">150</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="price-2">
						<label class="custom-control-label" for="price-2">$100 -
							$200</label> <span class="badge border font-weight-normal">295</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="price-3">
						<label class="custom-control-label" for="price-3">$200 -
							$300</label> <span class="badge border font-weight-normal">246</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="price-4">
						<label class="custom-control-label" for="price-4">$300 -
							$400</label> <span class="badge border font-weight-normal">145</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
						<input type="checkbox" class="custom-control-input" id="price-5">
						<label class="custom-control-label" for="price-5">$400 -
							$500</label> <span class="badge border font-weight-normal">168</span>
					</div>
				</form>
			</div>
			<!-- Price End -->

			<!-- Color Start -->
			<div class="border-bottom mb-4 pb-4">
				<h5 class="font-weight-semi-bold mb-4">Filter by color</h5>
				<form>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" checked
							id="color-all"> <label class="custom-control-label"
							for="price-all">All Color</label> <span
							class="badge border font-weight-normal">1000</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="color-1">
						<label class="custom-control-label" for="color-1">Black</label> <span
							class="badge border font-weight-normal">150</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="color-2">
						<label class="custom-control-label" for="color-2">White</label> <span
							class="badge border font-weight-normal">295</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="color-3">
						<label class="custom-control-label" for="color-3">Red</label> <span
							class="badge border font-weight-normal">246</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="color-4">
						<label class="custom-control-label" for="color-4">Blue</label> <span
							class="badge border font-weight-normal">145</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
						<input type="checkbox" class="custom-control-input" id="color-5">
						<label class="custom-control-label" for="color-5">Green</label> <span
							class="badge border font-weight-normal">168</span>
					</div>
				</form>
			</div>
			<!-- Color End -->

			<!-- Size Start -->
			<div class="mb-5">
				<h5 class="font-weight-semi-bold mb-4">Filter by size</h5>
				<form>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" checked
							id="size-all"> <label class="custom-control-label"
							for="size-all">All Size</label> <span
							class="badge border font-weight-normal">1000</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="size-1">
						<label class="custom-control-label" for="size-1">XS</label> <span
							class="badge border font-weight-normal">150</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="size-2">
						<label class="custom-control-label" for="size-2">S</label> <span
							class="badge border font-weight-normal">295</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="size-3">
						<label class="custom-control-label" for="size-3">M</label> <span
							class="badge border font-weight-normal">246</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="size-4">
						<label class="custom-control-label" for="size-4">L</label> <span
							class="badge border font-weight-normal">145</span>
					</div>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
						<input type="checkbox" class="custom-control-input" id="size-5">
						<label class="custom-control-label" for="size-5">XL</label> <span
							class="badge border font-weight-normal">168</span>
					</div>
				</form>
			</div>
			<!-- Size End -->
		</div>
		<!-- Shop Sidebar End -->


		<!-- Shop Product Start -->
		<div class="col-lg-9 col-md-12">
			<div class="row pb-3">
				<div class="col-12 pb-1">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<form action="">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Search by name">
								<div class="input-group-append">
									<span class="input-group-text bg-transparent text-primary">
										<i class="fa fa-search"></i>
									</span>
								</div>
							</div>
						</form>
						<div class="dropdown ml-4">
							<button class="btn border dropdown-toggle" type="button"
								id="triggerId" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Sort by</button>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="triggerId">
								<a class="dropdown-item" href="#">Latest</a> <a
									class="dropdown-item" href="#">Popularity</a> <a
									class="dropdown-item" href="#">Best Rating</a>
							</div>
						</div>
					</div>
				</div>

				<c:if test="${ productsPaginate.size() > 0 }">
					<div class="col-lg-4 col-md-6 col-sm-12 pb-1">
						<c:forEach var="item" items="${ productsPaginate }"
							varStatus="loop">
							<div class="card product-item border-0 mb-4">
								<div
									class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
									<img style="height: 215px" class="img-fluid w-100"
										src="<c:url value='/template/img/${item.img_path}'/>" alt="">
								</div>
								<div
									class="card-body border-left border-right text-center p-0 pt-4 pb-3">
									<h6 style="padding: 0 30px 0 30px" class="text-truncate mb-3">${item.title}</h6>
									<div class="d-flex justify-content-center">
										<h6>
											<fmt:formatNumber type="number" maxFractionDigits="2"
												value="${item.price_product}" />
											VND
										</h6>
										<h6 class="text-muted ml-2">
											<del>
												<fmt:formatNumber type="number" maxFractionDigits="2"
													value="${item.price_product + 100000}" />
												VND
											</del>
										</h6>
									</div>
								</div>
								<div
									class="card-footer d-flex justify-content-between bg-light border">
									<a
										href="<%=request.getContextPath()%>/trang-chu/product/${item.id}"
										class="btn btn-sm text-dark p-0"><i
										class="fas fa-eye text-primary mr-1"></i>View Detail</a>
									<form
										action="<%=request.getContextPath()%>/trang-chu/cart/${item.id}"
										method="get">
										<button class="btn btn-sm text-dark p-0">
											<i class="fas fa-shopping-cart text-primary mr-1"></i>Add To
											Cart
										</button>
									</form>
								</div>
							</div>

							<c:if
								test="${ (loop.index + 1) % 1 == 0 || (loop.index + 1)  == productsPaginate.size() }">
					</div>
					<c:if test="${ (loop.index + 1) < productsPaginate.size() }">
						<div class="col-lg-4 col-md-6 col-sm-12 pb-1">
					</c:if>
				</c:if>
				</c:forEach>
				</c:if>

				<div class="col-12 pb-1">
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center mb-3">
							<!-- <li class="page-item disabled">
							<a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a>
							</li> -->
							<c:forEach var="item" begin="1" end="${ paginateInfo.totalPage }"
								varStatus="loop">
								<c:if test="${ (loop.index) == paginateInfo.currentPage }">
									<li class="page-item active"><a class="page-link"
										href="<c:url value="/trang-chu/pro-duct/${ idCategory }/${ loop.index }"/>">${ loop.index }</a></li>
								</c:if>
								<c:if test="${ (loop.index) != paginateInfo.currentPage }">
									<li class="page-item"><a class="page-link"
										href="<c:url value="/trang-chu/pro-duct/${ idCategory }/${ loop.index }"/>">${ loop.index }</a></li>
								</c:if>
							</c:forEach>
							<!-- <li class="page-item"><a class="page-link" href="#"aria-label="Next"> 
								<span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
							</a>
							</li> -->
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- Shop Product End -->
	</div>
</div>
<!-- Shop End -->