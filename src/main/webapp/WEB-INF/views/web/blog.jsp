<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog</title>

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
					<h2>About</h2>
					<div class="breadcrumb__option">
						<span>About</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Blog Section Begin -->
	<div class="container" style="margin-top: 3%">
		<div class="row">
			<div class="col-lg-4 col-md-5">
				<div class="blog__sidebar">
					<div class="blog__sidebar__search">
						<form action="#">
							<input type="text" placeholder="Search...">
							<button type="submit">
								<span class="icon_search"></span>
							</button>
						</form>
					</div>
					<div class="blog__sidebar__item">
						<h4>Categories</h4>
						<ul>
							<li><a href="#">Literary</a></li>
							<li><a href="#">Economy</a></li>
							<li><a href="#">Education</a></li>
							<li><a href="#">Sword hero</a></li>
							<li><a href="#">Comic</a></li>
							<li><a href="#">Cultural</a></li>
							<li><a href="#">Novel</a></li>
							<li><a href="#">Children</a></li>
							<li><a href="#">Politic</a></li>
							<li><a href="#">Romantics</a></li>
						</ul>
					</div>
					<div class="blog__sidebar__item">
						<h4>Recent News</h4>
						<div class="blog__sidebar__recent">
							<a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="/templates/web/img/blog/sidebar/sr-1.jpg" alt="">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<h6>
Which Premier League player is <br />  the most avid reader?
									</h6>
									<span>MAR 05, 2021</span>
								</div>
							</a> <a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="/templates/web/img/blog/sidebar/sr-2.jpg" alt="">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<h6>
										The spirit of compassion and love for<br /> the environment from the Lost Sandal
									</h6>
									<span>MAY 31, 2021</span>
								</div>
							</a> <a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="/templates/web/img/blog/sidebar/sr-3.jpg" alt="">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<h6>
										Ngo Duc Hung's books are the most purchased <br /> at the National Online Book Fair
									</h6>
									<span>MAY 31, 2021</span>
								</div>
							</a>
						</div>
					</div>
					<div class="blog__sidebar__item">
						<h4>Search By</h4>
						<div class="blog__sidebar__item__tags">
							<a href="#">Literary</a> <a href="#">Cultural</a> <a href="#">Education</a>
							<a href="#">Comic</a> <a href="#">Romantics</a> <a href="#">Lifestyle</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-8 col-md-7">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="/templates/web/img/thumbnail/book01.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
									<li><i class="fa fa-comment-o"></i> 5</li>
								</ul>
								<h5>
									<a href="#">6 ways to prepare breakfast for 30</a>
								</h5>
								<p>Sed quia non numquam modi tempora indunt ut labore et
									dolore magnam aliquam quaerat</p>
								<a href="#" class="blog__btn">READ MORE <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="/templates/web/img/thumbnail/book04.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
									<li><i class="fa fa-comment-o"></i> 5</li>
								</ul>
								<h5>
									<a href="#">Visit the clean farm in the US</a>
								</h5>
								<p>Sed quia non numquam modi tempora indunt ut labore et
									dolore magnam aliquam quaerat</p>
								<a href="#" class="blog__btn">READ MORE <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="/templates/web/img/thumbnail/book07.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
									<li><i class="fa fa-comment-o"></i> 5</li>
								</ul>
								<h5>
									<a href="#">Cooking tips make cooking simple</a>
								</h5>
								<p>Sed quia non numquam modi tempora indunt ut labore et
									dolore magnam aliquam quaerat</p>
								<a href="#" class="blog__btn">READ MORE <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="/templates/web/img/thumbnail/book10.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
									<li><i class="fa fa-comment-o"></i> 5</li>
								</ul>
								<h5>
									<a href="#">Cooking tips make cooking simple</a>
								</h5>
								<p>Sed quia non numquam modi tempora indunt ut labore et
									dolore magnam aliquam quaerat</p>
								<a href="#" class="blog__btn">READ MORE <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="/templates/web/img/thumbnail/book12.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
									<li><i class="fa fa-comment-o"></i> 5</li>
								</ul>
								<h5>
									<a href="#">The Moment You Need To Remove Garlic From The
										Menu</a>
								</h5>
								<p>Sed quia non numquam modi tempora indunt ut labore et
									dolore magnam aliquam quaerat</p>
								<a href="#" class="blog__btn">READ MORE <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="/templates/web/img/thumbnail/book16.jpg" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
									<li><i class="fa fa-comment-o"></i> 5</li>
								</ul>
								<h5>
									<a href="#">Cooking tips make cooking simple</a>
								</h5>
								<p>Sed quia non numquam modi tempora indunt ut labore et
									dolore magnam aliquam quaerat</p>
								<a href="#" class="blog__btn">READ MORE <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="product__pagination blog__pagination">
							<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
								class="fa fa-long-arrow-right"></i>.</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Blog Section End -->
	
	<%@ include file="/WEB-INF/views/web/commons/footer.jsp"%>
	
	<%@ include file="/WEB-INF/views/web/commons/script.jsp"%>

</body>
</html>