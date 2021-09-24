<%@ include file="/WEB-INF/views/web/commons/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Login</title>
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
										<h1 class="h4 text-gray-900 mb-4">Welcome!</h1>
									</div>
									<form class="user" method="POST" action="login" id="formLogin">
										<div class="form-group">
											<input path="userName" type="text"
												class="form-control form-control-user" id="userName"
												autocomplete="off" placeholder="Username" name="userName"
												required="required" />
										</div>
										<div class="form-group">
											<input path="password" type="password"
												class="form-control form-control-user"
												placeholder="Password" name="password" required="required"
												id="password">
										</div>
										<div class="form-group">
											<h6 style="color: #11F205; padding-left: 10px" id= "message">${message}</h6>
											<h6 style="color: #E13D3D; padding-left: 10px"
												id="error_security">${error}</h6>
											<h6 style="color: #E13D3D; padding-left: 10px"
												id="error_login"></h6>
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck" /> <label class="custom-control-label"
													for="customCheck">Remember Me</label>
											</div>
										</div>
										<button class="btn btn-primary btn-user btn-block"
											id="btnSubmit" type="submit">Login</button>
										<hr>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="/forgot-password">Forgot Password?</a>
									</div>
									<div class="text-center">
										<a class="small" href="/register">Create an Account!</a>
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
	<script src="templates/admin/js/login.js"></script>
</body>
</html>