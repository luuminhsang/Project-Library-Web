<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>

<%@ include file="/WEB-INF/views/web/commons/links.jsp"%>

</head>

<body>
	<%@ include file="/WEB-INF/views/web/commons/header.jsp"%>
	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All category</span>
						</div>
						<ul>
							<c:forEach items="${categories }" var="category">

								<li><a href="#">${category.name}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<input type="text" placeholder="What do you need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
						<div class="header__cart">
							<ul>
								<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
<!-- 								<li><a href="/cart"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li> -->
							</ul>
							<div class="header__cart__price">
								Downloads: <span>0</span>
							</div>
						</div>
					</div>
					<div class="hero__item set-bg"
						data-setbg="/templates/web/img/welcome.jpg">
						<div class="hero__text">
							<span>BOOKS LIBRARY</span>
							<h2>
						<font color="white">		Welcome to <br />our library </font>
							</h2>
							<a href="/blog" class="primary-btn">MORE</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Categories Section Begin -->
	<section class="categories">
		<div class="container">
			<div class="row">
				<div class="categories__slider owl-carousel">
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="templates/web/book/book01.jpg"></div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="templates/web/book/book02.jpeg"></div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="templates/web/book/book03.jpg"></div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="templates/web/book/book04.jpg"></div>
					</div>
					<div class="col-lg-3">
						<div class="categories__item set-bg"
							data-setbg="templates/web/book/book05.jpg"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Categories Section End -->

	<!-- Featured Section Begin -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Featured Product</h2>
					</div>
					<div class="featured__controls">
						<ul>
							<li class="active" data-filter="*">All</li>
							<li data-filter=".oranges">Best-Seller</li>
<!-- 							<li data-filter=".fresh-meat">Art</li> -->
							<li data-filter=".vegetables">Big Sale</li>
<!-- 							<li data-filter=".fastfood">Biographies</li> -->
						</ul>
					</div>
				</div>
			</div>
			<div class="row featured__filter">
			<c:forEach items="${listMedia}" var ="sanpham"  begin="10" end="13">
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
				<c:forEach items="${listMedia}" var ="sanpham"  begin="14" end="17">
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood "> 
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="${sanpham.coverImage}">
<!-- 								data-setbg="templates/web/book/book06.png"> -->
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
			</div>
		
	</section>
			
	
	<!-- Featured Section End -->

	<!-- Latest Product Section Begin -->
	<section class="latest-product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Latest Products</h4>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book01.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Am thanh cuon no</h6>
										<span>30 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book02.jpeg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Noi ve cai dau toi</h6>
										<span>26 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book03.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Dat rung phuong nam</h6>
										<span>20 Downloads</span>
									</div>
								</a>
							</div>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book04.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Nhung nguoi khon kho</h6>
										<span>40 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book05.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Harry Potter</h6>
										<span>30 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book06.png" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Toi thay hoa vang tren co xanh</h6>
										<span>27 Downloads</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Top Rated Products</h4>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book07.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Buc thu cua nguoi dan ba khong quen</h6>
										<span>22 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book08.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Tieng goi noi hoang da</h6>
										<span>29 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book09.jpg">
									</div>
									<div class="latest-product__item__text">
										<h6>Nanh trang</h6>
										<span>31 Downloads</span>
									</div>
								</a>
							</div>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book10.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Khong gia dinh</h6>
										<span>27 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book11.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Lao Goriot</h6>
										<span>26 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book12.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Nguoi tang hinh</h6>
										<span>33 Downloads</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Review Products</h4>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<a href="/details" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book13.png" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Cuon theo chieu gio</h6>
										<span>22 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book14.png" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Ong gia va bien ca</h6>
										<span>22 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book15.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Lao Goriot</h6>
										<span>26 Downloads</span>
									</div>
								</a>
							</div>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book16.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Don Quixote</h6>
										<span>33 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book01.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Am thanh cuong no</h6>
										<span>30 Downloads</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="templates/web/img/thumbnail/book02.jpeg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Noi ve cai dau toi</h6>
										<span>26 Downloads</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Latest Product Section End -->

	<%@ include file="/WEB-INF/views/web/commons/footer.jsp"%>

	<%@ include file="/WEB-INF/views/web/commons/script.jsp"%>

</body>
</html>