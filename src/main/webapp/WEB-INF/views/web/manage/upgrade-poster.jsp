<button type="button"
	class="primary-btn cart-btn cart-btn-right btn-size"
	data-toggle="modal" data-target="#upgradePoster" style="border: none;">Upgrade
	poster</button>
<!-- Modal -->
<div class="modal fade" id="upgradePoster" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Upgrade poster</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<div class="shoping__checkout" style="margin-top: 0%">
					<ul>
						<li>1. You will be able to download unlimited media on website</li>
						<li>2. Having permission to post the media on website and
							receive bonuses through downloads</li>
						<li>3. Bonus 1 $ for 1 downloads</li>
						<li>4. Account is valid for 30 days from time of upgrade.
							Upgrade fee 10$.</li>
						<li>5. If you agree, fill out information in the form</li>
					</ul>
				</div>
				<form action="https://www.sandbox.paypal.com/cgi-bin/webscr"
					method="POST">
					<div class="form-group">
						<label for="accountNumber">Account Number: <span
							style="color: red;">*</span></label> <input type="text"
							class="form-control" id="accountNumber" required="required"
							name="accountNumber" minlength="10">
						<!-- Enter seller's email address -->
						<input type="hidden" name="business" value="st-library@gmail.com">
						<!-- Variable cmd shows PayPal that this is a payment button -->
						<input type="hidden" name="cmd" value="_xclick">
						<!-- Bill information -->
						<input type="hidden" name="item_name" value="Buy views"> <input
							type="hidden" name="amount" value="10">
						<!--Type of Currency-->
						<input type="hidden" name="currency_code" value="USD">
						<!--Redirect to this link if payment is successfully transfered-->
						<input type="hidden" name="return" value="" id="upgradeReturn">
						<!--Redirect to this link if fail-->
						<input type="hidden" name="cancel_return"
							value="${baseURL}/upgradePoster?error=true">
					</div>
					<div class="form-group" align="center">
						<button type="submit" class="site-btn" id="ugradeSubmit">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>