<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>



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
					<c:choose>
						<c:when test="${Cart != null}">
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
										<div class="input-group quantity mx-auto"
											style="width: 100px;">
											<!-- <div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus">
											<i class="fa fa-minus"></i>
										</button>
									</div> -->
											<input type="number" min="1" id="quantity-cart-${cart.key}"
												class="form-control form-control-sm bg-secondary text-center"
												value="${cart.value.quanity}">
											<!-- <div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus">
											<i class="fa fa-plus"></i>
										</button>
									</div> -->
										</div>
									</td>
									<td class="align-middle"><fmt:formatNumber type="number"
											maxFractionDigits="2" value="${cart.value.totalPrice}" />
										VND</td>
									<td class="align-middle">
										<button type="button" data-id="${cart.key}"
											class="btn btn-sm btn-primary edit-cart">
											<i class="fas fa-edit"></i>
										</button>
									</td>
									<td class="align-middle"><a
										href="<%=request.getContextPath()%>/trang-chu/deleteCart/${cart.key}"
										class="btn btn-sm btn-primary"> <i class="fa fa-times"></i>
									</a></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td><span class="align-middle text-primary">No Không
										có sản phẩm nào trong giỏ hàng</span></td>
							</tr>
						</c:otherwise>
					</c:choose>
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
						<h6 class="font-weight-medium">${TotalQuanityCart} Sảnphẩm</h6>
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
						<h6 class="font-weight-medium">0 VND</h6>
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
					<a href="<%=request.getContextPath()%>/trang-chu/checkout"
						class="btn btn-block btn-primary my-3 py-3">Thanh toán</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Cart End -->

<content tag="script"> <script>
	$(".edit-cart").on("click", function() {
		var id = $(this).data("id");
		var quantity = $("#quantity-cart-" + id).val();
		/* alert(quantity); */
		window.location = "editCart/" + id + "/" + quantity;
	})
</script> </content>

