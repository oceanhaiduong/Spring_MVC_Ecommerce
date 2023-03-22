<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<div id="layoutSidenav_nav">
    <nav class="sidenav shadow-right sidenav-dark">
        <div class="sidenav-menu">
            <div class="nav accordion" id="accordionSidenav">
                <!-- Sidenav Heading (Posts)-->
                <div class="sidenav-menu-heading">Mục</div>
                <!-- Sidenav Link (Charts)-->
                <a class="nav-link" href="<%=request.getContextPath()%>/admin">
                    <div class="nav-link-icon"><i data-feather="bookmark"></i></div>
                    DashBoard
                </a>
                <a class="nav-link" href="<%=request.getContextPath()%>/admin/product">
                    <div class="nav-link-icon"><i data-feather="book"></i></div>
                    Sản Phẩm
                </a>
                <a class="nav-link" href="/admin/tag">
                    <div class="nav-link-icon"><i data-feather="tag"></i></div>
                     Hóa đơn
                </a>
                <!-- Sidenav Link (Tables)-->
                <a class="nav-link" href="<%=request.getContextPath()%>/admin/catePro">
                    <div class="nav-link-icon"><i data-feather="book-open"></i></div>
                    Loại sản phẩm
                </a>
                <!-- Sidenav Link (Tables)-->
                <a class="nav-link" href="/admin/user">
                    <div class="nav-link-icon"><i data-feather="users"></i></div>
                    Người Dùng	
                </a>
            </div>
        </div>
        <!-- Sidenav Footer-->
        <div class="sidenav-footer">
            <div class="sidenav-footer-content">
                <div class="sidenav-footer-subtitle">Logged in as:</div>              
                    <div class="sidenav-footer-title">
                        Admin name
                    </div>
                            
            </div>
        </div>
    </nav>
</div>
    