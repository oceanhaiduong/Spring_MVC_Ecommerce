<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tables - SB Admin Pro</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/litepicker/dist/css/litepicker.css"
	rel="stylesheet" />

<!-- Option 1: Include in HTML -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link href="<c:url value='/template/admin/css/styles2.css'/>"
	rel="stylesheet">

<link href="<c:url value='/template/web/img/favicon.ico'/>" rel="icon">

<script data-search-pseudo-elements="" defer=""
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous">
	
</script>
</head>

<body class="nav-fixed">
	<!-- header -->
	<%@ include file="/common/admin/headerFinal.jsp"%>

	<div id="layoutSidenav">
		<!-- sliderbar -->
		<%@ include file="/common/admin/slidebar.jsp"%>
		<div id="layoutSidenav_content">

			<dec:body />

			<%@ include file="/common/admin/footer.jsp"%>
		</div>
	</div>


	<script data-cfasync="false"
		src="<c:url value='/template/admin/js/email-decode.min.js'/>"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/template/admin/js/scripts.js'/>"></script>
	<script src="<c:url value='/template/admin/demo/chart-area-demo.js'/>"></script>
	<script src="<c:url value='/template/admin/demo/chart-bar-demo.js'/>"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js"
		crossorigin="anonymous"></script>
	<script
		src="<c:url value='/template/admin/js/datatables/datatables-simple-demo.js'/>"></script>
	<script src="<c:url value='/template/admin/js/litepicker.js'/>"></script>
	<script src="https://assets.startbootstrap.com/js/sb-customizer.js"></script>
	<sb-customizer project="sb-admin-pro"></sb-customizer>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon='{"rayId":"7a5032ac9e9210a0","token":"6e2c2575ac8f44ed824cef7899ba8463","version":"2023.2.0","si":100}'
		crossorigin="anonymous"></script>
</body>

</html>
