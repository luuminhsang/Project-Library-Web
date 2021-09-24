<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage</title>

<%@ include file="/WEB-INF/views/web/commons/links.jsp"%>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/manage.css'/>" type="text/css">
</head>

<body>
	<%@ include file="/WEB-INF/views/web/commons/header.jsp"%>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="/templates/web/img/background.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Manage account</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<h5 style="margin-bottom: 1%; text-align: center; color: green;">
			<b>${message}</b>
		</h5>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="shoping__checkout" style="margin-top: 0%">
						<h5>My information</h5>
						<ul>
							<li>Username <span>${infoAccount.username}</span></li>
							<li>Email <span>${infoAccount.email}</span></li>
							<li>Fullname <span>${infoAccount.fullName}</span></li>
							<li>Account role <span>${infoAccount.role}</span></li>
							<li>Remaining downloads <span>${infoAccount.remainingViews}</span></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="row">
						<div class="col-lg-12">
							<div class="shoping__cart__btns">
								<%@ include file="/WEB-INF/views/web/manage/change-password.jsp"%>
								<%@ include file="/WEB-INF/views/web/manage/activity-logs.jsp"%>
							</div>
						</div>
					</div>
					<div class="row" style="margin-top: 5%">
						<div class="col-lg-12">
							<div class="shoping__cart__btns">
								<sec:authorize access="hasRole('ROLE_VIEWER')">
									<%@ include file="/WEB-INF/views/web/manage/more-views.jsp"%>
									<%@ include file="/WEB-INF/views/web/manage/upgrade-poster.jsp"%>
								</sec:authorize>
								<sec:authorize access="hasRole('ROLE_POSTER')">
									<%@ include file="/WEB-INF/views/web/manage/upload-media.jsp"%>
									<%@ include file="/WEB-INF/views/web/manage/renew.jsp"%>
								</sec:authorize>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shoping Cart Section End -->
	<%@ include file="/WEB-INF/views/web/commons/footer.jsp"%>
	<%@ include file="/WEB-INF/views/web/commons/script.jsp"%>
	<script src="templates/admin/js/change-password.js"></script>
	<script src="templates/admin/js/upload-media.js"></script>
</body>
</html>