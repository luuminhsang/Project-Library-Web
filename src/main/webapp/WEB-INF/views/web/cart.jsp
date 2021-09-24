<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shoping</title>

<%@ include file="/WEB-INF/views/web/commons/links.jsp"%>

</head>

<body>
	<%@ include file="/WEB-INF/views/web/commons/header.jsp"%>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="templates/web/img/breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>Shopping Cart</h2>
					<div class="breadcrumb__option">
						<span>Shopping Cart</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__table">
					<table>
						<thead>
							<tr>
								<th class="shoping__product">Products</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="shoping__cart__item"><img
									src="templates/web/book/book01.jpg" alt="">
									<h5>DAC NHAN TAM</h5></td>
								<td class="shoping__cart__price">$22</td>
								<td class="shoping__cart__quantity">
									<div class="quantity">
										<div class="pro-qty">
											<input type="text" value="1">
										</div>
									</div>
								</td>
								<td class="shoping__cart__total">$22</td>
								<td class="shoping__cart__item__close"><span
									class="icon_close"></span></td>
							</tr>
							<tr>
								<td class="shoping__cart__item"><img
									src="templates/web/book/book08.jpg" alt="">
									<h5>NHUNG TAM LONG CAO CA</h5></td>
								<td class="shoping__cart__price">$20</td>
								<td class="shoping__cart__quantity">
									<div class="quantity">
										<div class="pro-qty">
											<input type="text" value="1">
										</div>
									</div>
								</td>
								<td class="shoping__cart__total">$20</td>
								<td class="shoping__cart__item__close"><span
									class="icon_close"></span></td>
							</tr>
							<tr>
								<td class="shoping__cart__item"><img
									src="templates/web/book/book05.jpg" alt="">
									<h5>TUOI TRE DANG GIA BAO NHIEU</h5></td>
								<td class="shoping__cart__price">$16</td>
								<td class="shoping__cart__quantity">
									<div class="quantity">
										<div class="pro-qty">
											<input type="text" value="1">
										</div>
									</div>
								</td>
								<td class="shoping__cart__total">$16</td>
								<td class="shoping__cart__item__close"><span
									class="icon_close"></span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__btns">
					<a href="/book" class="primary-btn cart-btn">CONTINUE SHOPPING</a> <a
						href="#" class="primary-btn cart-btn cart-btn-right"><span
						class="icon_loading"></span> Upadate Cart</a>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="shoping__continue">
					<div class="shoping__discount">
						<h5>Discount Codes</h5>
						<form action="#">
							<input type="text" placeholder="Enter your coupon code">
							<button type="submit" class="site-btn">APPLY COUPON</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="shoping__checkout">
					<h5>Cart Total</h5>
					<ul>
						<li>Subtotal <span>$454.98</span></li>
						<li>Total <span>$454.98</span></li>
					</ul>
					<a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Shoping Cart Section End -->
	<%@ include file="/WEB-INF/views/web/commons/footer.jsp"%>
	
	<%@ include file="/WEB-INF/views/web/commons/script.jsp"%>

</body>
</html>