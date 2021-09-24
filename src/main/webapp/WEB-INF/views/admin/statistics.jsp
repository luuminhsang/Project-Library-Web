<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin</title>
	<jsp:include page="commons/links.jsp"></jsp:include>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="commons/sidebar.jsp"></jsp:include>

		<!-- commons Wrapper -->
		<div id="commons-wrapper" class="d-flex flex-column">

			<!-- Main commons -->
			<div id="commons">

				<!-- Topbar -->
				<jsp:include page="commons/topbar.jsp"></jsp:include>

				<!-- Begin Page commons -->
				<div class="container-fluid">

					<!-- commons Row -->
					<div class="row">

						<div class="col-xl-8 col-lg-7">

							<!-- Area Chart -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">Area Chart</h6>
								</div>
								<div class="card-body">
									<div class="chart-area">
										<canvas id="myAreaChart"></canvas>
									</div>
									<hr>
								</div>
							</div>
						</div>
						
						<!-- Donut Chart -->
						<div class="col-xl-4 col-lg-5">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">Donut Chart</h6>
								</div>
								<!-- Card Body -->
								<div class="card-body">
									<div class="chart-pie pt-4">
										<canvas id="myPieChart"></canvas>
									</div>
									<hr>
									Styling for the donut chart can be found in the									
									file.
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main commons -->

			<!-- Footer -->
			<jsp:include page="commons/footer.jsp"></jsp:include>
		</div>
		<!-- End of commons Wrapper -->

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