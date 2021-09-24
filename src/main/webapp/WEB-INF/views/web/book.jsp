<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book</title>

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
						<h2>Book Library</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>Category</h4>
							<ul>
								<c:forEach items="${categories }" var="category">

									<li><a href="#">${category.name}</a></li>
								</c:forEach>
							</ul>
						</div>
						<div class="sidebar__item">
							<h4>View</h4>
							<div class="price-range-wrap">
								<div
									class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
									data-min="0" data-max="1000">
									<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
								</div>
								<div class="range-slider">
									<div class="price-input">
										<input type="text" id="minamount"> <input type="text"
											id="maxamount">
									</div>
								</div>
							</div>
						</div>
						<div class="sidebar__item">
							<div class="latest-product__text">
								<h4>Latest Products</h4>
								<div class="latest-product__slider owl-carousel">
									<div class="latest-prdouct__slider__item">
										<a href="/product" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="/templates/web/img/thumbnail/book01.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Am thanh cuong no</h6>
												<span>$30.00</span>
											</div>
										</a> <a href="/product" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="/templates/web/img/thumbnail/book03.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Dat rung phuong nam</h6>
												<span>$20.00</span>
											</div>
										</a> <a href="/product" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="/templates/web/img/thumbnail/book04.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Nhung nguoi khon kho</h6>
												<span>$22.00</span>
											</div>
										</a>
									</div>
									<div class="latest-prdouct__slider__item">
										<a href="/product" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="/templates/web/img/thumbnail/book05.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Harry Potter</h6>
												<span>$36.00</span>
											</div>
										</a> <a href="/product" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="/templates/web/img/thumbnail/book07.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Buc thu cua nguoi dan ba khong quen</h6>
												<span>$26.00</span>
											</div>
										</a> <a href="/product" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="/templates/web/img/thumbnail/book08.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>Tien goi noi hoang da</h6>
												<span>$29.00</span>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-7">
				<div class="product__discount">
					<div class="section-title product__discount__title">
						<h2>Most views</h2>
					</div>
					<div class="row">
						<div class="product__discount__slider owl-carousel">
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="templates/web/book/book06.png">
										<div class="product__discount__percent">-20%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<span> Action and adventure</span>
										<h5>
											<a href="product">Cho toi xin mot ve di tuoi tho</a>
										</h5>
										<div class="product__item__price">
											$30.00 <span>$36.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="templates/web/book/book07.jpg">
										<div class="product__discount__percent">-20%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<span>Autobiographies</span>
										<h5>
											<a href="product">Ong gia bien ca</a>
										</h5>
										<div class="product__item__price">
											$30.00 <span>$36.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="templates/web/book/book08.jpg">
										<div class="product__discount__percent">-20%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<span> Autobiographies</span>
										<h5>
											<a href="product">Nhung tam long cao ca</a>
										</h5>
										<div class="product__item__price">
											$30.00 <span>$36.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="templates/web/book/book09.jpg">
										<div class="product__discount__percent">-20%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<span> Autobiographies</span>
										<h5>
											<a href="product">Doi thay doi khi chung ta thay doi</a>
										</h5>
										<div class="product__item__price">
											$30.00 <span>$36.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="templates/web/book/book12.jpg">
										<div class="product__discount__percent">-20%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<span> Autobiographies</span>
										<h5>
											<a href="product">Nguoi ban hang vi dai nhat the gioi</a>
										</h5>
										<div class="product__item__price">
											$30.00 <span>$36.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="templates/web/book/book13.png">
										<div class="product__discount__percent">-20%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<span> Art</span>
										<h5>
											<a href="product">Cuon theo chieu gio</a>
										</h5>
										<div class="product__item__price">
											$30.00 <span>$36.00</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="filter__item">
						<div class="row">
							<div class="col-lg-4 col-md-5">
								<div class="filter__sort">
									<span>Sort By</span> <select>
										<option value="0">Default</option>
										<option value="1">Date time</option>
									</select>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div class="filter__found">
									<h6>
										<span>${fn:length(listMedia)}</span> Products found
									</h6>
								</div>
							</div>
							<div class="col-lg-4 col-md-3">
								<!-- <div class="filter__option">
									<span class="icon_grid-2x2"></span> <span class="icon_ul"></span>
								</div> -->
							</div>
						</div>
					</div>
					<div class="row">
					<c:forEach items="${listMedia}" var ="sanpham"  begin="8" end="28"  >
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="${sanpham.coverImage}">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="/details?id=${sanpham.id}">${sanpham.name}</a>
							</h6>
							<h8>${sanpham.likes} Downloads</h8>
						</div>
					</div>
				</div>
				</c:forEach>
					</div>
					<div class="product__pagination">
						<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
							class="fa fa-long-arrow-right"></i>.</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->
	<%@ include file="/WEB-INF/views/web/commons/footer.jsp"%>

	<%@ include file="/WEB-INF/views/web/commons/script.jsp"%>
</body>
</html>