<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/taglib.jsp"%>





<!-- Shop Detail Start -->
<div class="container-fluid py-5">
	<div class="row px-xl-5">
		<div class="col-lg-5 pb-5">
			<div id="product-carousel" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner border">
					<div class="carousel-item active">
						<img class="w-100 h-100"
							src=" <c:url value='/template/web/img/lotion.png'/> " alt="Image">
					</div>
					<div class="carousel-item">
						<img class="w-100 h-100"
							src="<c:url value='/template/web/img/cosmetics.png'/>"
							alt="Image">
					</div>
					<div class="carousel-item">
						<img class="w-100 h-100"
							src="<c:url value='/template/web/img/cosmetics_2.png'/>"
							alt="Image">
					</div>
				</div>
				<a class="carousel-control-prev" href="#product-carousel"
					data-slide="prev"> <i class="fa fa-2x fa-angle-left text-dark"></i>
				</a> <a class="carousel-control-next" href="#product-carousel"
					data-slide="next"> <i class="fa fa-2x fa-angle-right text-dark"></i>
				</a>
			</div>
		</div>

		<div class="col-lg-7 pb-5">
			<h3 class="font-weight-semi-bold">${productDetail.title}</h3>
			<div class="d-flex mb-3">
				<div class="text-primary mr-2">
					<small class="fas fa-star"></small> <small class="fas fa-star"></small>
					<small class="fas fa-star"></small> <small
						class="fas fa-star-half-alt"></small> <small class="far fa-star"></small>
				</div>
				<small class="pt-1">(50 Đánh giá)</small>
			</div>
			<h3 class="font-weight-semi-bold mb-4">${productDetail.price_product}
				VND</h3>
			<p class="mb-4"></p>
			<form
				action="<%=request.getContextPath()%>/trang-chu/cart/${productDetail.id}"
				method="get">
				<div class="d-flex align-items-center mb-4 pt-2">
					<div class="input-group quantity mr-3" style="width: 130px;">
						<input type="number" min="1" name="quantity" value="1"
							class="form-control bg-secondary text-center">
					</div>

					<button class="btn btn-primary px-3">
						<i class="fa fa-shopping-cart mr-1"></i> Thêm vào giỏ hàng
					</button>
				</div>
			</form>
			<div class="d-flex pt-2">
				<p class="text-dark font-weight-medium mb-0 mr-2">Chia sẻ:</p>
				<div class="d-inline-flex">
					<a class="text-dark px-2" href=""> <i class="fab fa-facebook-f"></i>
					</a> <a class="text-dark px-2" href=""> <i class="fab fa-twitter"></i>
					</a> <a class="text-dark px-2" href=""> <i
						class="fab fa-linkedin-in"></i>
					</a> <a class="text-dark px-2" href=""> <i class="fab fa-pinterest"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="row px-xl-5">
		<div class="col">
			<div
				class="nav nav-tabs justify-content-center border-secondary mb-4">
				<a class="nav-item nav-link active" data-toggle="tab"
					href="#tab-pane-1">Thông tin</a> <a class="nav-item nav-link"
					data-toggle="tab" href="#tab-pane-3">Đánh giá (0)</a>
			</div>
			<div class="tab-content">
				<div class="tab-pane fade show active" id="tab-pane-1">
					<h4 class="mb-3">Chi tiết sản phẩm</h4>
					<p>${productDetail.content}</p>

				</div>
				<div class="tab-pane fade" id="tab-pane-3">
					<div class="row">
						<div class="col-md-6">
							<h4 class="mb-4">1 Đánh giá cho Sản phẩm
								'${productDetail.title}'</h4>
							<div class="media mb-4">
								<img src="<c:url value='template/web/img/user.jpg'/>"
									alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;">
								<div class="media-body">
									<h6>
										Quoc Dung<small> - <i>Tháng 1 - 01 - 2045</i></small>
									</h6>
									<div class="text-primary mb-2">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star-half-alt"></i>
										<i class="far fa-star"></i>
									</div>
									<p>Sản phẩm tốt, lần sau tôi sẽ mua nó</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<h4 class="mb-4">Để lại đánh giá</h4>
							<small>Địa chỉ email sẽ không công khai. Các trường bắt
								buộc nhập *</small>
							<div class="d-flex my-3">
								<p class="mb-0 mr-2">Xếp loại * :</p>
								<div class="text-primary">
									<i class="far fa-star"></i> <i class="far fa-star"></i> <i
										class="far fa-star"></i> <i class="far fa-star"></i> <i
										class="far fa-star"></i>
								</div>
							</div>
							<form>
								<div class="form-group">
									<label for="message">Đánh giá *</label>
									<textarea id="message" cols="30" rows="5" class="form-control"></textarea>
								</div>
								<div class="form-group">
									<label for="name">Tên *</label> <input type="text"
										class="form-control" id="name">
								</div>
								<div class="form-group">
									<label for="email">Email *</label> <input type="email"
										class="form-control" id="email">
								</div>
								<div class="form-group mb-0">
									<input type="submit" value="Leave Your Review"
										class="btn btn-primary px-3">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Shop Detail End -->


<!-- Products Start -->
<div class="container-fluid py-5">
	<div class="text-center mb-4">
		<h2 class="section-title px-5">
			<span class="px-2">Các sản phẩm tương tự</span>
		</h2>
	</div>
	<div class="row px-xl-5">
		<div class="col">
			<div class="owl-carousel related-carousel">
				<div class="card product-item border-0">
					<div
						class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
						<img class="img-fluid w-100" src="img/product-1.jpg" alt="">
					</div>
					<div
						class="card-body border-left border-right text-center p-0 pt-4 pb-3">
						<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
						<div class="d-flex justify-content-center">
							<h6>$123.00</h6>
							<h6 class="text-muted ml-2">
								<del>$123.00</del>
							</h6>
						</div>
					</div>
					<div
						class="card-footer d-flex justify-content-between bg-light border">
						<a href="" class="btn btn-sm text-dark p-0"><i
							class="fas fa-eye text-primary mr-1"></i>Chi tiết </a> <a href=""
							class="btn btn-sm text-dark p-0"><i
							class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ</a>
					</div>
				</div>
				<div class="card product-item border-0">
					<div
						class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
						<img class="img-fluid w-100" src="img/product-2.jpg" alt="">
					</div>
					<div
						class="card-body border-left border-right text-center p-0 pt-4 pb-3">
						<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
						<div class="d-flex justify-content-center">
							<h6>$123.00</h6>
							<h6 class="text-muted ml-2">
								<del>$123.00</del>
							</h6>
						</div>
					</div>
					<div
						class="card-footer d-flex justify-content-between bg-light border">
						<a href="" class="btn btn-sm text-dark p-0"><i
							class="fas fa-eye text-primary mr-1"></i>View Detail</a> <a href=""
							class="btn btn-sm text-dark p-0"><i
							class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
					</div>
				</div>
				<div class="card product-item border-0">
					<div
						class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
						<img class="img-fluid w-100" src="img/product-3.jpg" alt="">
					</div>
					<div
						class="card-body border-left border-right text-center p-0 pt-4 pb-3">
						<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
						<div class="d-flex justify-content-center">
							<h6>$123.00</h6>
							<h6 class="text-muted ml-2">
								<del>$123.00</del>
							</h6>
						</div>
					</div>
					<div
						class="card-footer d-flex justify-content-between bg-light border">
						<a href="" class="btn btn-sm text-dark p-0"><i
							class="fas fa-eye text-primary mr-1"></i>View Detail</a> <a href=""
							class="btn btn-sm text-dark p-0"><i
							class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
					</div>
				</div>
				<div class="card product-item border-0">
					<div
						class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
						<img class="img-fluid w-100" src="img/product-4.jpg" alt="">
					</div>
					<div
						class="card-body border-left border-right text-center p-0 pt-4 pb-3">
						<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
						<div class="d-flex justify-content-center">
							<h6>$123.00</h6>
							<h6 class="text-muted ml-2">
								<del>$123.00</del>
							</h6>
						</div>
					</div>
					<div
						class="card-footer d-flex justify-content-between bg-light border">
						<a href="" class="btn btn-sm text-dark p-0"><i
							class="fas fa-eye text-primary mr-1"></i>View Detail</a> <a href=""
							class="btn btn-sm text-dark p-0"><i
							class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
					</div>
				</div>
				<div class="card product-item border-0">
					<div
						class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
						<img class="img-fluid w-100" src="img/product-5.jpg" alt="">
					</div>
					<div
						class="card-body border-left border-right text-center p-0 pt-4 pb-3">
						<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
						<div class="d-flex justify-content-center">
							<h6>$123.00</h6>
							<h6 class="text-muted ml-2">
								<del>$123.00</del>
							</h6>
						</div>
					</div>
					<div
						class="card-footer d-flex justify-content-between bg-light border">
						<a href="" class="btn btn-sm text-dark p-0"><i
							class="fas fa-eye text-primary mr-1"></i>View Detail</a> <a href=""
							class="btn btn-sm text-dark p-0"><i
							class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Products End -->

<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i
	class="fa fa-angle-double-up"></i></a>
