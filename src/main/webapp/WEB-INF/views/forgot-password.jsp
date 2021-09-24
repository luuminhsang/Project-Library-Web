<%@ include file="/WEB-INF/views/web/commons/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<jsp:include page="admin/commons/links.jsp"></jsp:include>
<title>Forgot Password</title>
<jsp:include page="admin/commons/links.jsp"></jsp:include>
</head>

<body
	style="background-image: url('templates/admin/img/bg.jpg'); background-size: cover;">
	<div class="container">
		<!-- Outer Row -->
		<div class="row justify-content-center">
			<div class="col-xl-6 col-lg-12 col-md-9">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-12">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
									</div>
									<form:form class="user" method="POST" id="formForgotPassword"
										modelAttribute="formForgotPassword">
										<spring:bind path="email">
											<div class="form-group">
												<form:input type="email" id="email"
													class="form-control form-control-user"
													aria-describedby="emailHelp"
													placeholder="Enter Email Address..." path="email" />
											</div>
											<div style="color: #E62020;"
												${status.error ? 'has-error' : ''}>
												<form:errors path="email"></form:errors>
												<h6 style="color: #11F205; padding-left: 10px">${message}</h6>
												<h6 style="color: #E62020; padding-left: 10px" id="error_exist_email"></h6>
											</div>
										</spring:bind>
										<button class="btn btn-primary btn-user btn-block" type="submit" id="btnSubmit">
											Submit </button>
									</form:form>
									<hr>
									<div class="text-center">
										<a class="small" href="/register">Create an Account!</a>
									</div>
									<div class="text-center">
										<a class="small" href="/login">Already have an account?
											Login!</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="admin/commons/script.jsp"></jsp:include>
	<script src="templates/admin/js/forgot-password.js"></script>
</body>
</html>
