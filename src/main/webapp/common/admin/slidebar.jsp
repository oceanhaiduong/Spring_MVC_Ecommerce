<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<div id="layoutSidenav_nav">
	<nav class="sidenav shadow-right sidenav-dark">
		<div class="sidenav-menu">
			<div class="nav accordion" id="accordionSidenav">
				<!-- Sidenav Heading (Posts)-->
				<div class="sidenav-menu-heading">Mục</div>
				<!-- Sidenav Link (Charts)-->
				<a class="nav-link" href="<%=request.getContextPath()%>/admin/">
					<div class="nav-link-icon">
						<i data-feather="bookmark"></i>
					</div> Bảng điều khiển
				</a> <a class="nav-link"
					href="<%=request.getContextPath()%>/admin/product">
					<div class="nav-link-icon">
						<i data-feather="book"></i>
					</div> Sản Phẩm
				</a> 
				<a class="nav-link" href="<%=request.getContextPath()%>/admin/Order">
					<div class="nav-link-icon">
						<i data-feather="tag"></i>
					</div> Hóa đơn
				</a>
				<!-- Sidenav Link (Tables)-->
				<a class="nav-link"
					href="<%=request.getContextPath()%>/admin/catePro">
					<div class="nav-link-icon">
						<i data-feather="book-open"></i>
					</div> Loại sản phẩm
				</a>
				<!-- Sidenav Link (Tables)-->
				<a class="nav-link" href="<%=request.getContextPath()%>/admin/Users">
					<div class="nav-link-icon">
						<i data-feather="users"></i>
					</div> Người Dùng
				</a>
			</div>
		</div>
		<!-- Sidenav Footer-->
		<div class="sidenav-footer">
			<div class="sidenav-footer-content">
				<div class="sidenav-footer-subtitle">Đăng nhập với:</div>
				<div class="sidenav-footer-title">
					<c:if test="${User_name != ''}">
                        ${User_name}
                    </c:if>

				</div>

			</div>
		</div>
	</nav>
</div>
