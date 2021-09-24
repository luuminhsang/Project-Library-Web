<button type="button" class="primary-btn cart-btn btn-size"
	data-toggle="modal" data-target="#moreViews" style="border: none;">More
	downloads</button>
<!-- Modal -->
<div class="modal fade" id="moreViews" role="dialog">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">More downloads</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<form action="https://www.sandbox.paypal.com/cgi-bin/webscr"
					method="POST">
					<div class="form-group">
						<h6>Do you want 20 downloads for 2$?</h6>
						<!-- Enter seller's email address -->
						<input type="hidden" name="business" value="st-library@gmail.com">
						<!-- Variable cmd shows PayPal that this is a payment button -->
						<input type="hidden" name="cmd" value="_xclick">
						<!-- Bill information -->
						<input type="hidden" name="item_name" value="Buy views"> <input
							type="hidden" name="amount" value="2">
						<!--Type of Currency-->
						<input type="hidden" name="currency_code" value="USD">
						<!--Redirect to this link if payment is successfully transfered-->
						<input type="hidden" name="return" value="" id="moreViewsReturn">
						<!--Redirect to this link if fail-->
						<input type="hidden" name="cancel_return"
							value="${baseURL}/moreViews?error=true">
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
								<button type="submit" class="site-btn" id="moreViewsSubmit">Yes</button>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group" align="right">
								<button type="button" class="site-btn" data-dismiss="modal">No</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>