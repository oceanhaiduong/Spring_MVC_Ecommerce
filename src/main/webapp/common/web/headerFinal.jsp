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
					<span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper
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
				class="badge"> <%-- 	<c:if
						test="${not pageContext.session['Cart']}">
						0
					</c:if> <c:if test="${pageContext.session['Cart']}">
						${Cart.size()}
					</c:if> --%> ${TotalQuanityCart} Sản Phẩm
			</span>
			</a>
			<c:if test="${User_name != ''}">
				<a href="" class="btn border"> <i class="fas fa-user"></i> <span
					class="badge">${User_name}</span>
				</a>
				<a id="logout_btn" class="btn border bg-transparent text-primary"
					href="<%=request.getContextPath()%>/logout"><i
					class="fas fa-sign-out-alt" style="color: #b41818;"></i></a>
				<p class="logout__description">This image looks super neat.</p>
			</c:if>
		</div>
	</div>
</div>
<!-- TopBar End -->

<style>
#logout_btn {
	position: relative;
}

.logout__description {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(29, 106, 154, 0.72);
	color: #fff;
	visibility: hidden;
	opacity: 0;
	/* transition effect. not necessary */
	transition: opacity .2s, visibility .2s;
}

#logout_btn:hover .logout__description {
	visibility: visible;
	opacity: 1;
}
</style>
