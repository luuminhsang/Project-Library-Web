<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Details</title>

<%@ include file="/WEB-INF/views/web/commons/links.jsp"%>
<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/detail.css'/>" type="text/css">
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
						<h2>Detail</h2>
						<div class="breadcrumb__option">
							<!-- <span>Vegetableâs Package</span> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item main-detail">
							<img class="product__details__pic__item--large img-main"
								src="${media.coverImage }" alt="" style="background-size: cover;">
						</div>
					
					
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<h3>${media.name}</h3>
						<div class="product__details__rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i> <span>${media.likes} Downloads</span>
						</div>
					
					
						<ul>
							<li><b>Author:</b> <span>${media.author}</span></li>
							<li><b>Media type:</b> <span>${media.mediaType}</span></li>
							<!-- <li><b>Media type:</b> <span>01 day shipping. <samp>Free
										pickup today</samp></span></li> -->
							<!-- <li><b>Weight</b> <span>0.5 kg</span></li> -->
							<li><b>Share on</b>
								<div class="share">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-pinterest"></i></a>
								</div></li>
						</ul>
						<div style="padding-top: 30px">
						<a href="/download?mediaId=${media.id}" class="primary-btn btn-design">Download</a>
						<a href="#" class="primary-btn btn-design">Preview</a>
						<a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Description</a>
							</li>
							
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Products Infomation</h6>
									<p>${media.description}</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Products Infomation</h6>
									<p>Vestibulum ac diam sit amet quam vehicula elementum sed
										sit amet dui. Pellentesque in ipsum id orci porta dapibus.
										Proin eget tortor risus. Vivamus suscipit tortor eget felis
										porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
										elementum sed sit amet dui. Donec rutrum congue leo eget
										malesuada. Vivamus suscipit tortor eget felis porttitor
										volutpat. Curabitur arcu erat, accumsan id imperdiet et,
										porttitor at sem. Praesent sapien massa, convallis a
										pellentesque nec, egestas non nisi. Vestibulum ac diam sit
										amet quam vehicula elementum sed sit amet dui. Vestibulum ante
										ipsum primis in faucibus orci luctus et ultrices posuere
										cubilia Curae; Donec velit neque, auctor sit amet aliquam vel,
										ullamcorper sit amet ligula. Proin eget tortor risus.</p>
									<p>Praesent sapien massa, convallis a pellentesque nec,
										egestas non nisi. Lorem ipsum dolor sit amet, consectetur
										adipiscing elit. Mauris blandit aliquet elit, eget tincidunt
										nibh pulvinar a. Cras ultricies ligula sed magna dictum porta.
										Cras ultricies ligula sed magna dictum porta. Sed porttitor
										lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh
										pulvinar a.</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="product__details__tab__desc">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Details Section End -->

	<!-- Related Product Section Begin -->
	<section class="related-product">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title related__product__title">
						<h2>Related Product</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="templates/web/book/book01.jpg">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Dac nhan tam</a>
							</h6>
							<h5>$22</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="templates/web/book/book03.jpg">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">The GodFather</a>
							</h6>
							<h5>$41</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="templates/web/book/book04.jpg">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Dung bao gio di an mot minh</a>
							</h6>
							<h5>$22</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="templates/web/book/book05.jpg">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Tuoi tre dang gia bao nhieu</a>
							</h6>
							<h5>$16</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Related Product Section End -->
	<%@ include file="/WEB-INF/views/web/commons/footer.jsp"%>

	<%@ include file="/WEB-INF/views/web/commons/script.jsp"%>
</body>
</html>