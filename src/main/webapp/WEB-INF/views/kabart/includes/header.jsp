<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!-- Header -->
<header>
	<div class="header lg">
		<div class="header_main">
			<div class="main_inner">
				<div class="header__logo">
					<a href="/home/"><img src="/resources/img/casamia_logo.png"
						alt="" /></a>
				</div>
				<div class="gnb_area">
					<nav class="gnb">
						<ul class="gnb_list">
							<li class="gnb_item">로그인</li>
							<li class="gnb_item">마이페이지</li>
							<li class="gnb_item">장바구니</li>
						</ul>
					</nav>
					<div class="search_btn_box">
						<a aria-label="검색" href="#" class="btn_search"> <img
							src="/resources/img/search.png"
							style="max-width: 20px; max-height: 20px;" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>

<!---->