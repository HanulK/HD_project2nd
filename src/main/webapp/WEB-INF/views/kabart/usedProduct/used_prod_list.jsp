<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@include file="/WEB-INF/views/style.jsp"%>
<title>Product List</title>
</head>
<body>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div tabindex="0" class="wrap win_os md" data-v-3007c576="">
				<jsp:include page="includes/header.jsp"></jsp:include>
				<!-- shorcut collection -->
				<div container-index="1" class="shortcut_collection">
					<!---->
					<div class="shortcut_item_wrap">
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic1.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">Second</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic2.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">침대</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic3.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">소파</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic4.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">식탁</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic5.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">의자</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic6.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">옷장</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic7.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">서랍장</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic8.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">책상</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic9.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">홈 인테리어</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic10.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">전체보기</p>
						</div>
					</div>
				</div>
				<!-- /.shorcut collection -->
				<!-- shorcut collection -->
				<div container-index="2" class="shortcut_collection">
					<!---->
					<div class="shortcut_item_wrap2">
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic1.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">럭키박스</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic2.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">남성 추천</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic3.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">여성 추천</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic4.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">셀럽픽</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap2">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic5.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">이번주 브랜드관</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic6.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">정가 아래</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic7.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">인기 럭셔리</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic8.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">연말 선물</p>
						</div>
						<div class="shortcut_item">
							<div class="shortcut_item_img_wrap">
								<picture class="picture shortcut_item_img_bg"> <img
									src="/resources/img/pic9.png" class="image"> </picture>
							</div>
							<p class="shortcut_item_title">겨울 코디</p>
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
						<div
							class="exhibition_item_product_header exhibition_item_section"
							data-v-6e9267c1="" data-v-4f87b95c="">
							<div class="product_header_wrapper" data-v-6e9267c1="">
								<h2 class="title" data-v-6e9267c1="">소파</h2>
								<p class="description" data-v-6e9267c1="">KABART에서 추천하는 인기 상품</p>
							</div>
						</div>
					</div>

					<!-- 상품 묶음 -->
					<div class="exhibition_item product_list" data-v-4f87b95c="">
						<div class="exhibition_item_products exhibition_item_section"
							data-v-81b68464="" data-v-4f87b95c="">

							<!-- 단일 상품 -->
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/products/83946" class="item_inner" data-v-19fda891=""><div
										class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
											<em data-v-09fbcf09="" class="stocked_status_mark"> PRIME </em>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												벨로씨 For casamiashop
												<!---->
											</p>
										</div>
									</div>
									<dd data-v-67511fc2="" class="price">
										<div data-v-67511fc2="" class="discount_amount">
											<em data-v-67511fc2="" class="discount_per">2%</em><span
												data-v-67511fc2="" class="num">179,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num">182,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							<!-- /.단일 상품 -->
							<!-- 단일 상품 -->
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/products/83946" class="item_inner" data-v-19fda891=""><div
										class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												벨로씨 For casamiashop
												<!---->
											</p>
										</div>
									</div>
									<dd data-v-67511fc2="" class="price">
										<div data-v-67511fc2="" class="discount_amount">
											<em data-v-67511fc2="" class="discount_per">2%</em><span
												data-v-67511fc2="" class="num">179,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num">182,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							<!-- /.단일 상품 -->
							<!-- 단일 상품 -->
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/products/83946" class="item_inner" data-v-19fda891=""><div
										class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												벨로씨 For casamiashop
												<!---->
											</p>
										</div>
									</div>
									<dd data-v-67511fc2="" class="price">
										<div data-v-67511fc2="" class="discount_amount">
											<em data-v-67511fc2="" class="discount_per">2%</em><span
												data-v-67511fc2="" class="num">179,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num">182,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							<!-- /.단일 상품 -->
							<!-- 단일 상품 -->
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/products/83946" class="item_inner" data-v-19fda891=""><div
										class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												벨로씨 For casamiashop
												<!---->
											</p>
										</div>
									</div>
									<dd data-v-67511fc2="" class="price">
										<div data-v-67511fc2="" class="discount_amount">
											<em data-v-67511fc2="" class="discount_per">2%</em><span
												data-v-67511fc2="" class="num">179,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num">182,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							<!-- /.단일 상품 -->
							<!-- 단일 상품 -->
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/products/83946" class="item_inner" data-v-19fda891=""><div
										class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
											<em data-v-09fbcf09="" class="stocked_status_mark"> PRIME </em>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												벨로씨 For casamiashop
												<!---->
											</p>
										</div>
									</div>
									<dd data-v-67511fc2="" class="price">
										<div data-v-67511fc2="" class="discount_amount">
											<em data-v-67511fc2="" class="discount_per">2%</em><span
												data-v-67511fc2="" class="num">179,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num">182,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							<!-- /.단일 상품 -->
							<!-- 단일 상품 -->
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/products/83946" class="item_inner" data-v-19fda891=""><div
										class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												벨로씨 For casamiashop
												<!---->
											</p>
										</div>
									</div>
									<dd data-v-67511fc2="" class="price">
										<div data-v-67511fc2="" class="discount_amount">
											<em data-v-67511fc2="" class="discount_per">2%</em><span
												data-v-67511fc2="" class="num">179,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num">182,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							<!-- /.단일 상품 -->
							<!-- 단일 상품 -->
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/products/83946" class="item_inner" data-v-19fda891=""><div
										class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												벨로씨 For casamiashop
												<!---->
											</p>
										</div>
									</div>
									<dd data-v-67511fc2="" class="price">
										<div data-v-67511fc2="" class="discount_amount">
											<em data-v-67511fc2="" class="discount_per">2%</em><span
												data-v-67511fc2="" class="num">179,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num">182,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							<!-- /.단일 상품 -->
							<!-- 단일 상품 -->
							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/products/83946" class="item_inner" data-v-19fda891=""><div
										class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												벨로씨 For casamiashop
												<!---->
											</p>
										</div>
									</div>
									<dd data-v-67511fc2="" class="price">
										<div data-v-67511fc2="" class="discount_amount">
											<em data-v-67511fc2="" class="discount_per">2%</em><span
												data-v-67511fc2="" class="num">179,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num">182,000</span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							<!-- /.단일 상품 -->

						</div>
					</div>
					<!-- /상품 그루핑 -->
				</div>
				<%@include file="includes/footer.jsp"%>
				<!---->
				<!---->
				<!---->
				<!---->
				<!---->
			</div>
		</div>
	</div>
</body>
</html>