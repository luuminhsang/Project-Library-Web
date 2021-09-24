<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Admin Dashboard</title>
<jsp:include page="commons/links.jsp"></jsp:include>
</head>

<body id="page-top">
<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<jsp:include page="commons/sidebar.jsp"></jsp:include>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<jsp:include page="commons/topbar.jsp"></jsp:include>

				<!-- Begin Page Content -->
				<jsp:include page="commons/content.jsp"></jsp:include>
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<jsp:include page="commons/footer.jsp"></jsp:include>
		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<jsp:include page="commons/logout.jsp"></jsp:include>

	<jsp:include page="commons/script.jsp"></jsp:include>
</body>
</html>