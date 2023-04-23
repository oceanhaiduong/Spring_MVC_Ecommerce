<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/taglib.jsp"%>



<!-- Shop Start -->
<div class="container-fluid pt-5">
	<div class="row px-xl-5">
		<!-- Shop Sidebar Start -->
		<div class="col-lg-3 col-md-12">
			<!-- Price Start -->
			<div class="border-bottom mb-4 pb-4">
				<h5 class="font-weight-semi-bold mb-4">Lọc theo giá</h5>
				<form>
					<div
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" checked
							id="price-all"> <label class="custom-control-label"
							for="price-all">Tất cả giá</label> <span
							class="badge border font-weight-normal">1000</span>
					</div>
					<div hidden="hidden"
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="price-1">
						<label class="custom-control-label" for="price-1">$0 -
							$100</label> <span class="badge border font-weight-normal">150</span>
					</div>
					<div hidden="hidden"
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="price-2">
						<label class="custom-control-label" for="price-2">$100 -
							$200</label> <span class="badge border font-weight-normal">295</span>
					</div>
					<div hidden="hidden"
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="price-3">
						<label class="custom-control-label" for="price-3">$200 -
							$300</label> <span class="badge border font-weight-normal">246</span>
					</div>
					<div hidden="hidden"
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
						<input type="checkbox" class="custom-control-input" id="price-4">
						<label class="custom-control-label" for="price-4">$300 -
							$400</label> <span class="badge border font-weight-normal">145</span>
					</div>
					<div hidden="hidden"
						class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
						<input type="checkbox" class="custom-control-input" id="price-5">
						<label class="custom-control-label" for="price-5">$400 -
							$500</label> <span class="badge border font-weight-normal">168</span>
					</div>
				</form>
			</div>
			<!-- Price End -->

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
								aria-expanded="false">Lọc theo</button>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="triggerId">
								<a class="dropdown-item" href="#">Mới nhất</a> <a
									class="dropdown-item" href="#">Mua nhiều</a> <a
									class="dropdown-item" href="#">Đánh giá tốt</a>
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
										class="fas fa-eye text-primary mr-1"></i>Chi tiết</a>
									<form
										action="<%=request.getContextPath()%>/trang-chu/cart/${item.id}"
										method="get">
										<input hidden="hidden" type="number" min="1" name="quantity"
										value="1" class="form-control bg-secondary text-center">
										<button class="btn btn-sm text-dark p-0">
											<i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm
											vào giỏ hàng
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