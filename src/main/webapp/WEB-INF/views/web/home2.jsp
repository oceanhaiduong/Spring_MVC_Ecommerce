<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/taglib.jsp"%>

<div class="container-fluid pt-5">
	<c:if test="${lastName != ''}">
		<h6 class="font-weight-semi-bold m-0">${lastName}</h6>
		<%-- <h6 class="font-weight-semi-bold m-0">${userAuth.phone}</h6>
		<h6 class="font-weight-semi-bold m-0">${userAuth.email}</h6> --%>
	</c:if>
</div>

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
									<input hidden="hidden" type="number" min="1" name="quantity"
										value="1" class="form-control bg-secondary text-center">
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
									<input hidden="hidden" type="number" min="1" name="quantity"
										value="1" class="form-control bg-secondary text-center">
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

<div class="container-fluid py-5">
	<iframe
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1200245192977!2d106.73879891458937!3d10.802118392304111!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317526115902d29d%3A0xb17fa2961150c212!2sVincom%20Mega%20Mall!5e0!3m2!1svi!2s!4v1680273559003!5m2!1svi!2s"
		width="100%" height="450" style="border: 0;" allowfullscreen=""
		loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>


<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i
	class="fa fa-angle-double-up"></i></a>


<div class="container-fluid py-5">
	<section class="mobile_chat hidden-md hidden-lg">
		<div class="container">
			<div class="row">
				<div class="col-xs-3 chat-item">
					<a href="tel:0944438009 " class="chat-item-url">
						<div class="chat-item-image">
							<img
								src="//theme.hstatic.net/1000391295/1000499396/14/icon_phone.png?v=406"
								class="img-responsive" alt="goi-dien">
						</div>
						<div class="chat-item-text">Gọi điện</div>
					</a>
				</div>
				<div class="col-xs-3 chat-item">
					<a href="http://zalo.me/0944438009" class="chat-item-url">
						<div class="chat-item-image">
							<img
								src="//theme.hstatic.net/1000391295/1000499396/14/icon_zalo.png?v=406"
								class="img-responsive" alt="chat-zalo">
						</div>
						<div class="chat-item-text">Chat Zalo</div>
					</a>
				</div>
				<div class="col-xs-3 chat-item">
					<a
						href="https://www.messenger.com/t/https://www.facebook.com/vntisgroup/">
						<div class="chat-item-image">
							<img
								src="//theme.hstatic.net/1000391295/1000499396/14/icon_fb.png?v=406"
								class="img-responsive" alt="facebook">
						</div>
						<div class="chat-item-text">Facebook</div>
					</a>
				</div>
			</div>
		</div>
	</section>
</div>


