<%@ include file="/WEB-INF/views/web/commons/taglib.jsp"%>
<c:set var="users" scope="session"
	value="${pageContext.request.userPrincipal.name}" />
<c:set var="request" value="${pageContext.request}" />
<c:set var="baseURL"
	value="${request.scheme}://${request.serverName}:${request.serverPort}${request.contextPath}" />
<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>
<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<ul>
							<li><i class="fa fa-envelope"></i> stlibrary@gmail.com</li>

						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<a href="https://www.facebook.com/Thuviendhnltphcm/"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<div class="header__top__right__language">
							<img src="/templates/web/img/language.png" alt="">
							<div>English</div>
							<span class="arrow_carrot-down"></span>
							<ul>
								<li><a href="#">Vietnamese</a></li>
								<li><a href="#">English</a></li>
							</ul>
						</div>
						<div class="header__top__right__language">
							<c:choose>
								<c:when test="${empty users}">
									<a href="/login" style="color: black"><i class="fa fa-user"></i>
										Login</a>
								</c:when>
								<c:otherwise>
									<div>Welcome ${users}</div>
									<span class="arrow_carrot-down"></span>
									<ul style="width: 100%">
										<li><a href="/manage">Manage account</a></li>
										<li><a href="/log-out">Logout</a></li>
									</ul>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="/home"><img src="/templates/web/img/logo.jpg" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
					<ul>
						<li class="${home}"><a href="/home">Home</a></li>
						<li class="${book}"><a href="/book">Book</a></li>
					 <li class="${video}"><a href="/video">Sale</a></li>
<%-- 						<li class="${blog}"><a href="/blog">Blog</a></li> --%>
						<li class="${manage}"><a href="/manage">Manage</a></li>
						<li class="${contact}"><a href="/contact">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->
