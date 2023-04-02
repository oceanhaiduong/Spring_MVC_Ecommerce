<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!-- Checkout Start -->
<div class="container-fluid pt-5">
	<form:form action="checkout" modelAttribute="bills" method="post"
		class="">
		<div class="row px-xl-5">
			<div class="col-lg-8">
				<div class="mb-4">
					<h4 class="font-weight-semi-bold mb-4">Hóa đơn thanh toán</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>Tên khách hàng(*)</label>
							<form:input path="customer_Name" class="form-control" type="text"
								placeholder="Tên khách hàng" />
						</div>
						<div class="col-md-6 form-group">
							<label>E-mail</label>
							<form:input path="customer_Email" class="form-control"
								type="text" placeholder="example@email.com" />
						</div>
						<div class="col-md-6 form-group">
							<label>Số điện thoại</label>
							<form:input path="customer_Phone" class="form-control"
								type="text" placeholder="+123 456 789" />
						</div>
						<div class="col-md-6 form-group">
							<label>Địa chỉ(*)</label>
							<form:input path="customer_Address" class="form-control"
								type="text" />
						</div>
						<div class="col-md-12 form-group">
							<label>Ghi chú</label>
							<form:input path="customer_Note" class="form-control" type="text" />
						</div>

						<div hidden="hidden" class="col-md-12 form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="shipto">
								<label class="custom-control-label" for="shipto"
									data-toggle="collapse" data-target="#shipping-address">Ship
									đến địa chỉ khác</label>
							</div>
						</div>
					</div>
				</div>
				<div class="collapse mb-4" id="shipping-address">
					<h4 class="font-weight-semi-bold mb-4">Địa chỉ thanh toán</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>Tên khách hàng(*)</label> <input class="form-control"
								type="text" placeholder="John">
						</div>
						<div class="col-md-6 form-group">
							<label>Địa chỉ(*)</label> <input class="form-control" type="text"
								placeholder="Doe">
						</div>
						<div class="col-md-6 form-group">
							<label>E-mail</label> <input class="form-control" type="text"
								placeholder="example@email.com">
						</div>
						<div class="col-md-6 form-group">
							<label>Số điện thoại</label> <input class="form-control"
								type="text" placeholder="+123 456 789">
						</div>
						<div class="col-md-12 form-group">
							<label>Ghi chú</label> <input class="form-control" type="text"
								placeholder="123 Street">
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Tổng số đơn đặt hàng</h4>
					</div>
					<div class="card-body">
						<h5 class="font-weight-medium mb-3">Các sản phẩm</h5>
						<c:forEach var="cart" items="${Cart}">
							<div class="d-flex justify-content-between">
								<p>${fn:substring(cart.value.product.title, 0, 20)}</p>
								<p>
									<fmt:formatNumber type="number" maxFractionDigits="2"
										value="${cart.value.product.price_product}" />
									VND
								</p>
							</div>
						</c:forEach>
						<hr class="mt-0">
						<div class="d-flex justify-content-between mb-3 pt-1">
							<h6 class="font-weight-medium">Tổng số lượng sản phẩm</h6>
							<h6 class="font-weight-medium">${TotalQuanityCart}</h6>
						</div>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<div class="d-flex justify-content-between mt-2">
							<h5 class="font-weight-bold">Tổng</h5>
							<h5 class="font-weight-bold">
								<fmt:formatNumber type="number" maxFractionDigits="2"
									value="${TotalPriceCart * TotalQuanityCart}" />
								VND
							</h5>
						</div>
					</div>
				</div>
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Thanh toán online</h4>
					</div>
					<div class="card-body">
						<div class="form-group">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="paypal"> <label class="custom-control-label"
									for="paypal">Paypal</label>
							</div>
						</div>
						<div hidden="hidden" class="form-group">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="directcheck"> <label class="custom-control-label"
									for="directcheck">Direct Check</label>
							</div>
						</div>
						<div hidden="hidden" class="">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="banktransfer"> <label class="custom-control-label"
									for="banktransfer">Bank Transfer</label>
							</div>
						</div>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<button
							class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">Hoàn
							thành đơn</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>
</div>
<!-- Checkout End -->
