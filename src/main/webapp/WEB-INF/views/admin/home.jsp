<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main>
		<header
			class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
			<div class="container-xl px-4">
				<div class="page-header-content pt-4">
					<div class="row align-items-center justify-content-between">
						<div class="col-auto mt-4">
							<h1 class="page-header-title">
								<div class="page-header-icon">
									<i data-feather="activity"></i>
								</div>
								Bảng điền khiển
							</h1>

						</div>
						<div class="col-12 col-xl-auto mt-4">
							<div class="input-group input-group-joined border-0"
								style="width: 16.5rem">
								<span class="input-group-text"><i class="text-primary"
									data-feather="calendar"></i></span> <input
									class="form-control ps-0 pointer" id="litepickerRangePlugin"
									placeholder="Select date range..." />
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Main page content-->
		<div class="container-xl px-4 mt-n10">
			<!-- Example Colored Cards for Dashboard Demo-->
			<div class="row">
				<div class="col-lg-6 col-xl-3 mb-4">
					<div class="card bg-dark text-white h-100">
						<div class="card-body">
							<div class="d-flex justify-content-between align-items-center">
								<div class="me-3">
									<div class="text-white-75 small">Tổng người dùng</div>
									<div class="text-lg fw-bold">${users.size()}</div>
								</div>
								<i class="feather-xl text-white-50" data-feather="calendar"></i>
							</div>
						</div>
						<div
							class="card-footer d-flex align-items-center justify-content-between small">
							<a class="text-white stretched-link" href="#!">Xem dữ liệu</a>
							<div class="text-white">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-xl-3 mb-4">
					<div class="card bg-warning text-white h-100">
						<div class="card-body">
							<div class="d-flex justify-content-between align-items-center">
								<div class="me-3">
									<div class="text-white-75 small">Tổng sản phẩm</div>
									<div class="text-lg fw-bold">${products.size()}</div>
								</div>
								<i class="feather-xl text-white-50" data-feather="dollar-sign"></i>
							</div>
						</div>
						<div
							class="card-footer d-flex align-items-center justify-content-between small">
							<a class="text-white stretched-link" href="#!">Xem dữ liệu</a>
							<div class="text-white">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-xl-3 mb-4">
					<div class="card bg-success text-white h-100">
						<div class="card-body">
							<div class="d-flex justify-content-between align-items-center">
								<div class="me-3">
									<div class="text-white-75 small">Tổng hóa đơn</div>
									<div class="text-lg fw-bold">${bills.size()}</div>
								</div>
								<i class="feather-xl text-white-50" data-feather="check-square"></i>
							</div>
						</div>
						<div
							class="card-footer d-flex align-items-center justify-content-between small">
							<a class="text-white stretched-link" href="#!">Xem dữ liệu</a>
							<div class="text-white">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-xl-3 mb-4">
					<div class="card bg-danger text-white h-100">
						<div class="card-body">
							<div class="d-flex justify-content-between align-items-center">
								<div class="me-3">
									<div class="text-white-75 small">Tổng doanh thu</div>
									<div class="text-lg fw-bold">17</div>
								</div>
								<i class="feather-xl text-white-50"
									data-feather="message-circle"></i>
							</div>
						</div>
						<div
							class="card-footer d-flex align-items-center justify-content-between small">
							<a class="text-white stretched-link" href="#!">Xem dữ liệu</a>
							<div class="text-white">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Example Charts for Dashboard Demo-->
			<div class="row">
				<div class="col-xl-6 mb-4">
					<div class="card card-header-actions h-100">
						<div class="card-header">
							Phân tích thu nhập
							<div class="dropdown no-caret">
								<button
									class="btn btn-transparent-dark btn-icon dropdown-toggle"
									id="areaChartDropdownExample" type="button"
									data-bs-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">
									<i class="text-gray-500" data-feather="more-vertical"></i>
								</button>
								<div
									class="dropdown-menu dropdown-menu-end animated--fade-in-up"
									aria-labelledby="areaChartDropdownExample">
									<a class="dropdown-item" href="#!">Last 12 Months</a> <a
										class="dropdown-item" href="#!">Last 30 Days</a> <a
										class="dropdown-item" href="#!">Last 7 Days</a> <a
										class="dropdown-item" href="#!">This Month</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#!">Custom Range</a>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="chart-area">
								<canvas id="myAreaChart" width="100%" height="30"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 mb-4">
					<div class="card card-header-actions h-100">
						<div class="card-header">
							Doanh thu hằng tháng
							<div class="dropdown no-caret">
								<button
									class="btn btn-transparent-dark btn-icon dropdown-toggle"
									id="areaChartDropdownExample" type="button"
									data-bs-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">
									<i class="text-gray-500" data-feather="more-vertical"></i>
								</button>
								<div
									class="dropdown-menu dropdown-menu-end animated--fade-in-up"
									aria-labelledby="areaChartDropdownExample">
									<a class="dropdown-item" href="#!">Last 12 Months</a> <a
										class="dropdown-item" href="#!">Last 30 Days</a> <a
										class="dropdown-item" href="#!">Last 7 Days</a> <a
										class="dropdown-item" href="#!">This Month</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#!">Custom Range</a>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="chart-bar">
								<canvas id="myBarChart" width="100%" height="30"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>

