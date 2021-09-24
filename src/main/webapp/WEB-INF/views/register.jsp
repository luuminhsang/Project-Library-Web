<%@ include file="/WEB-INF/views/web/commons/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Register</title>
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
										<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
									</div>
									<form:form method="POST" modelAttribute="formRegister"
										id="formRegister" class="user">
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">
												<form:input type="text" name="fullName" id="fullName"
													class="form-control form-control-user" placeholder="Name"
													path="fullName" autocomplete="off" required="required"/>
												<h6 style="color: #E13D3D; padding-left: 10px"
													id="error_firstname"></h6>
											</div>
											<div class="col-sm-6">
												<form:input type="email" id="email" name="email"
													class="form-control form-control-user" placeholder="Email"
													path="email" autocomplete="off" required="required"/>
												<h6 style="color: #E13D3D; padding-left: 10px"
													id="error_email"></h6>
												<h6 style="color: #E13D3D; padding-left: 10px"
													id="error_exist_email"></h6>
											</div>
										</div>
										<div class="form-group">
											<form:input type="text" id="userName" name="userName"
												class="form-control form-control-user"
												placeholder="Username" path="userName" autofocus="true"
												autocomplete="off" required="required"/>
											<h6 style="color: #E13D3D; padding-left: 10px"
												id="error_username"></h6>
											<h6 style="color: #E13D3D; padding-left: 10px"
												id="error_exist_userName"></h6>
										</div>
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">
												<form:input type="password" id="password" name="password"
													class="form-control form-control-user"
													placeholder="Password" path="password" required="required"/>

											</div>
											<div class="col-sm-6">
												<form:input type="password" id="confirmPassword"
													name="confirmPassword"
													class="form-control form-control-user"
													placeholder="Confirm Password" path="confirmPassword" required="required"/>

											</div>
										</div>
										<div class="form-group row">
											<h6 style="color: #E13D3D; padding-left: 10px"
												id="error_password"></h6>
											<h6 style="color: #E13D3D; padding-left: 10px"
												id="error_confirm_password"></h6>
										</div>
										<div class="form-group row">
											<button class="btn btn-primary btn-user btn-block"
												type="submit" id="btnSubmit">Register Account</button>
										</div>
									</form:form>
									<hr>
									<div class="text-center">
										<a class="small" href="/forgot-password">Forgot Password?</a>
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
	<script src="templates/admin/js/register.js"></script>

</body>

</html>