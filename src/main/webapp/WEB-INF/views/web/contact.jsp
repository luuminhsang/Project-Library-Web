<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact</title>

<%@ include file="/WEB-INF/views/web/commons/links.jsp"%>

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
						<h2>Contact Us</h2>
						<!-- <div class="breadcrumb__option">
							<span>Contact Us</span>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Contact Section Begin -->
	<section class="contact spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_phone"></span>
						<h4>Phone</h4>
						<p>028 3896 3351</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_pin_alt"></span>
						<h4>Address</h4>
						<p>Nong Lam University</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_clock_alt"></span>
						<h4>Open time</h4>
						<p>09:00 am to 23:00 pm</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 text-center">
					<div class="contact__widget">
						<span class="icon_mail_alt"></span>
						<h4>Email</h4>
						<p>stlibrary@gmail.com</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact Section End -->

	<!-- Map Begin -->
	<div class="map">
		<iframe
			src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Nong%20Lam%20university+(My%20Business%20Name)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"
			height="500" style="border: 0;" allowfullscreen=""
			aria-hidden="false" tabindex="0"></iframe>
		<div class="map-inside" style="top: 10px !important;">
			<i class="icon_pin"></i>
			<div class="inside-widget">
				<h4>Nong Lam University - ST Library</h4>
				<ul>
					<li>Phone: 028 3896 3351</li>
					<li>Add: Linh Trung - Thu Duc</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Map End -->

	<!-- Contact Form Begin -->
	<div class="contact-form spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="contact__form__title">
						<h2>Leave Message</h2>
					</div>
				</div>
			</div>
			<form action="#">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<input type="text" placeholder="Your name">
					</div>
					<div class="col-lg-6 col-md-6">
						<input type="text" placeholder="Your Email">
					</div>
					<div class="col-lg-12 text-center">
						<textarea placeholder="Your message"></textarea>
						<button type="submit" class="site-btn">SEND MESSAGE</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Contact Form End -->
	<%@ include file="/WEB-INF/views/web/commons/footer.jsp"%>

	<%@ include file="/WEB-INF/views/web/commons/script.jsp"%>

</body>
</html>