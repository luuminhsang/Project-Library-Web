<button type="button" class="primary-btn cart-btn btn-size"
	data-toggle="modal" data-target="#uploadMedia" style="border: none;">Upload
	media</button>
<!-- Modal -->
<div class="modal fade" id="uploadMedia" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Upload media</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<form:form action="/uploadMedia" method="POST"
					modelAttribute="uploadMedia" enctype="multipart/form-data">
					<div class="row">
						<div class="form-group col-sm-12">
							<label>Category: </label><br>
							<form:select path="category">
								<c:forEach items="${categories}" var="cat">
									<option value="${cat.name}">${cat.name}</option>
								</c:forEach>
							</form:select>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="nameMedia">Name:</label>
							<form:input type="text" class="form-control" required="required"
								path="name"/>
						</div>
						<div class="form-group col-sm-6">
							<label for="author">Author:</label>
							<form:input type="text" class="form-control" required="required"
								path="author" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<label>Image: </label>
							<form:input type="file" class="form-control" required="required"
								path="images" accept="image/*" multiple="multiple" />
						</div>
						<div class="form-group col-sm-6">
							<label>File: </label>
							<form:input type="file" class="form-control" required="required"
								path="file" accept="application/pdf, .docx" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<label>Description: </label><br>
							<form:textarea rows="3" path="description"
								style="width: 100%; -webkit-box-sizing: border-box;" minlength="20" id="description" required="required"/>
						</div>
					</div>
					<div class="form-group"></div>
					<div class="form-group" align="center">
						<button type="submit" class="site-btn" id="btnSubmit">Submit</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>