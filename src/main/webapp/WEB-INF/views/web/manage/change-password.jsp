<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<button type="button" class="primary-btn cart-btn btn-size"
									data-toggle="modal" data-target="#changePassword"
									style="border: none;">Change password</button>
								<!-- Modal -->
								<div class="modal fade" id="changePassword" role="dialog">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title">Change password</h4>
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>
											<div class="modal-body">
												<form:form action="change-password" method="POST"
													id="formChangePassword" modelAttribute="formChangePassword">
													<div class="form-group">
														<label for="oldPassword">Old password: <span
															style="color: red;">*</span></label>
														<form:input type="password" class="form-control"
															id="oldPassword" required="required" path="oldPassword" />
														<h6 style="color: #E13D3D; padding-left: 10px"
															id="error_oldPassword"></h6>
													</div>
													<div class="form-group">
														<label for="newPassword">New password: <span
															style="color: red;">*</span></label>
														<form:input type="password" class="form-control"
															id="newPassword" required="required" path="newPassword" />
														<h6 style="color: #E13D3D; padding-left: 10px"
															id="error_new_password"></h6>
													</div>
													<div class="form-group">
														<label for="confirmPassword">Confirm password: <span
															style="color: red;">*</span></label>
														<form:input type="password" class="form-control"
															id="confirmPassword" path="confirmPassword"
															required="required" />
														<h6 style="color: #E13D3D; padding-left: 10px"
															id="error_confirm_password"></h6>
													</div>
													<div class="form-group" align="center">
														<button type="submit" class="site-btn" id="btnSubmit">Submit</button>
													</div>
												</form:form>
											</div>
										</div>
									</div>
								</div>