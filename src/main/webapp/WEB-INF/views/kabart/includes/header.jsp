<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!-- Header -->
<header>
	<jsp:include page="style.jsp"></jsp:include>
	<div class="header lg">
		<div class="header_main">
			<div class="main_inner">
				<div class="header__logo">
					<a href="/kabart/home"><img src="/resources/img/casamia_logo.png"
						alt="" /></a>
				</div>
				<div class="gnb_area">
					<nav class="gnb">
						<ul class="gnb_list">
						<sec:authorize access="isAnonymous()" >
							<li class="gnb_item"><a href="/kabart/login">로그인</a></li>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
							<li class="gnb_item"><a href="/kabart/logout">로그아웃</a></li>
						</sec:authorize>
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