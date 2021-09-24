<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Admin Page</title>
<jsp:include page="commons/links.jsp"></jsp:include>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="commons/sidebar.jsp"></jsp:include>

		<!-- commons Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main commons -->
			<div id="content">

				<!-- Topbar -->
				<jsp:include page="commons/topbar.jsp"></jsp:include>

				<!-- Begin Page commons -->
				<div class="container-fluid">

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Account Manager</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Id</th>
											<th>Name </th>
											<th>Price</th>

											
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${listMedia }" var="sanpham">
											<tr>
												<td>${sanpham.id}</td>
												<td>${sanpham.name}</td>
												<td>$${sanpham.likes}</td>
												
											</tr>
										</c:forEach>

									</tbody>
								</table>
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
