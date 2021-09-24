<button type="button"
	class="primary-btn cart-btn cart-btn-right btn-size"
	data-toggle="modal" data-target="#renewPoster"
	style="border: none; color: green;">Upgraded</button>
<!-- Modal -->
<div class="modal fade" id="renewPoster" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Upgraded</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<div class="shoping__checkout" style="margin-top: 0%">
					<ul>
						<li>Expiration date: <span>${expirationDate}</span></li>
						<li>Do you want to renew your permission poster?</li>
						<li>Upgrade fee 5$.</li>
					</ul>
				</div>
				<form action="https://www.sandbox.paypal.com/cgi-bin/webscr"
					method="POST">
					<!-- Enter seller's email address -->
					<input type="hidden" name="business" value="st-library@gmail.com">
					<!-- Variable cmd shows PayPal that this is a payment button -->
					<input type="hidden" name="cmd" value="_xclick">
					<!-- Bill information -->
					<input type="hidden" name="item_name" value="Buy views"> <input
						type="hidden" name="amount" value="5">
					<!--Type of Currency-->
					<input type="hidden" name="currency_code" value="USD">
					<!--Redirect to this link if payment is successfully transfered-->
					<input type="hidden" name="return" value="" id="renewReturn">
					<!--Redirect to this link if fail-->
					<input type="hidden" name="cancel_return"
						value="${baseURL}/upgradePoster?error=true">
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
								<button type="submit" class="site-btn" id="renewSubmit">Yes</button>
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