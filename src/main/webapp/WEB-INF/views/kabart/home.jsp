<!-- Author : 이세아  -->

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Home</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div class="home lg">
		<div class="home_card_list">
			<jsp:include page="includes/banner.jsp"></jsp:include>
			<div class="pagedown">
				<img class="downbtn" src="/resources/img/down.png">
			</div>
			<script>
			$(".pagedown").click(function(){
			    $("html, body").animate({ scrollTop: 855}, 500);
			});
			</script>
			<!-- shorcut collection -->
			<div container-index="1" class="shortcut_collection">
				<!---->
				<div class="shortcut_item_wrap1">
					<div class="shortcut_item">
						<a href="/kabart/usedProduct/used_prod_list?prod_category=all">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/010.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=bed">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/002.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=sofa">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/001.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=table">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/004.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=chair">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/005.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=closet">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/006.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=drawers">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/007.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=desk">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/003.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=homeinterior">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/008.png" class="image"> </picture>
							</div>
						</a>
					</div>
					<div class="shortcut_item">
						<a href="/kabart/product/prod_list?prod_category=all">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/009.png" class="image"> </picture>
							</div>
						</a>
					</div>
				</div>
			</div>
			<!-- /.shorcut collection -->
			<div class="exhibition_items" data-v-4f87b95c="" data-v-352cdc90=""
				data-v-3007c576="">
				<div class="exhibition_item image" data-v-4f87b95c="">
					<div class="exhibition_item_image exhibition_item_section"
						style="background-color: #ffffff;" data-v-99828118=""
						data-v-4f87b95c="">
						<figure class="image_container aspect_fit" data-v-99828118="">
							<div class="image_link" style="padding-top: 0.2%;"
								data-v-99828118=""></div>
							<img
								src="https://kream-phinf.pstatic.net/MjAyMjA2MTZfMTU2/MDAxNjU1Mzc0MzgwOTM2.w3x6D_mG4tWzXCSgK3sbCXvZ8WIR943IWy7SA8lMBqMg.YW47TiKmd77nzphGGDG8rFDLY1M20fcCEhsp5WoZMQog.JPEG/a_e69ec7dcfc044aca8365ec9058a6f258.jpeg"
								loading="lazy" fetchpriority="high" class="image fit"
								data-v-99828118="">
						</figure>
					</div>
				</div>
				<div class="exhibition_item product_header" data-v-4f87b95c="">
					<div class="exhibition_item_product_header exhibition_item_section"
						data-v-6e9267c1="" data-v-4f87b95c="">
						<div class="product_header_wrapper" data-v-6e9267c1="">
							<h2 class="title" data-v-6e9267c1="">BEST ITEM</h2>
							<p class="description" data-v-6e9267c1="">KABART에서 추천하는 인기 상품</p>
						</div>
					</div>
				</div>

				<!-- 상품 묶음 -->
				<div class="exhibition_item product_list" data-v-4f87b95c="">
					<div class="exhibition_item_products exhibition_item_section"
						data-v-81b68464="" data-v-4f87b95c="">



						<!-- 단일 상품 -->
						<c:forEach items="${best}" var="best">
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a
									href="/kabart/product/prod_detail?prod_id=<c:out value="${best.prod_id }" />"
									class="item_inner" data-v-19fda891=""><div class="product"
										style="background-color: #f4f4f4;" data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="${best.img_srcs}" style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												${best.prod_name}
												<!---->
											</p>
										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<fmt:formatNumber value="${best.prod_price}" pattern="#,###" />
											원
										</p>
									</div></a>
							</div>
						</c:forEach>
						<!-- /.단일 상품 -->
					</div>
				</div>
				<!-- /상품 그루핑 -->
			</div>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
	<div id="goto-top">
		<div class="material-icons">arrow_upward</div>
	</div>
	<script>
		const gotoTopEl = document.querySelector('#goto-top')
		window.addEventListener('scroll', function() {
			if (window.scrollY > 500) {
				gsap.to(gotoTopEl, .2, {
					x : 0
				})
			} else {
				gsap.to(gotoTopEl, .2, {
					x : 100
				})
			}
		}, 300)
		gotoTopEl.addEventListener('click', function() {
			gsap.to(window, .7, {
				scrollTo : 0
			})
		})
	</script>
</body>
</html>