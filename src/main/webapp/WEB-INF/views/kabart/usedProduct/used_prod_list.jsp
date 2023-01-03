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
<%@include file="/WEB-INF/views/kabart/includes/style.jsp"%>
<title>USED PRODUCTS</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		let actionForm = $("#actionForm");

		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='prod_category']");
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
	});
</script>
</head>
<body>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div tabindex="0" class="wrap win_os md" data-v-3007c576="">
				<jsp:include page="../includes/header.jsp"></jsp:include>
				<!-- shorcut collection -->
				<div container-index="1" class="shortcut_collection">
					<!---->
					<div class="shortcut_item_wrap">
						<div class="shortcut_item">
							<a href="/kabart/product/prod_list?prod_category=all">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic1.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">신상품</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a href="/kabart/usedProduct/used_prod_list?prod_category=bed">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic2.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 침대</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a href="/kabart/usedProduct/used_prod_list?prod_category=sofa">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic3.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 소파</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a href="/kabart/usedProduct/used_prod_list?prod_category=table">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic4.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 식탁</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a href="/kabart/usedProduct/used_prod_list?prod_category=chair">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic5.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 의자</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a href="/kabart/usedProduct/used_prod_list?prod_category=closet">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic6.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 옷장</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a
								href="/kabart/usedProduct/used_prod_list?prod_category=drawers">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic7.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 서랍장</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a href="/kabart/usedProduct/used_prod_list?prod_category=desk">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic8.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 책상</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a
								href="/kabart/usedProduct/used_prod_list?prod_category=homeinterior">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic9.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 홈인테리어</p>
							</a>
						</div>
						<div class="shortcut_item">
							<a href="/kabart/usedProduct/used_prod_list?prod_category=all">
								<div class="shortcut_item_img_wrap">
									<picture class="picture shortcut_item_img_bg"> <img
										src="/resources/img/pic10.png" class="image"> </picture>
								</div>
								<p class="shortcut_item_title">중고 전체보기</p>
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
						<div
							class="exhibition_item_product_header exhibition_item_section"
							data-v-6e9267c1="" data-v-4f87b95c="">
							<div class="product_header_wrapper" data-v-6e9267c1="">
								<h2 class="title" data-v-6e9267c1=""
									style="text-transform: uppercase;">
									<c:out value="${usedProductList[0].prod_category}" />
								</h2>
								<p class="description" data-v-6e9267c1="">KABART에서 추천하는 명품
									중고 상품</p>
							</div>
						</div>
					</div>

					<!-- 상품 묶음 -->
					<div class="exhibition_item product_list" data-v-4f87b95c="">
						<div class="exhibition_item_products exhibition_item_section"
							data-v-81b68464="" data-v-4f87b95c="">

							<!-- 단일 상품 -->
							<c:forEach items="${usedProductList}" var="products">
								<div class="product_card exhibition_product" data-v-19fda891=""
									data-v-81b68464="">
									<a
										href="/kabart/usedProduct/used_prod_detail?up_id=<c:out value="${products.up_id }"/>"
										class="item_inner" data-v-19fda891=""><div class="product"
											style="background-color: #f4f4f4;" data-v-09fbcf09="">
											<picture data-v-321fc3b6="" data-v-09fbcf09=""
												class="picture product_img"> <img alt=""
												src="${products.img_srcs}" style="overflow: auto;"></picture>
											<em data-v-09fbcf09="" class="stocked_status_mark"> <c:out
													value="${products.grade}" />
											</em>
											<c:if test="${products.sale_date ne null}">
												<div class="soldout !important"></div>
												<div class="soldout_title">SOLD OUT</div>
											</c:if>
										</div>
										<div class="product_info_area" data-v-c90cb1da="">
											<div class="title" data-v-c90cb1da="">
												<p class="product_info_brand brand" data-v-878934fe=""
													data-v-c90cb1da="">
													<c:out value="${products.prod_name}" />
													<!---->
												</p>
											</div>
										</div>
										<dd data-v-67511fc2="" class="price">
											<div data-v-67511fc2="" class="discount_amount">
												<em data-v-67511fc2="" class="discount_per"><c:out
														value="${products.discount_rate}" /> % </em><span
													data-v-67511fc2="" class="num"><fmt:formatNumber
														value="${products.discount_price }" pattern="#,###" /></span><span
													data-v-67511fc2="" class="won">원</span>
											</div>
										<div data-v-67511fc2="" class="origin_amount">
											<span data-v-67511fc2="" class="num" style="text-decoration: line-through;""><fmt:formatNumber value="${products.prod_price }" pattern="#,###" /></span><span
												data-v-67511fc2="" class="won">원</span>
										</div>
									</dd></a>
							</div>
							</c:forEach>
							<!-- /.단일 상품 -->

						</div>
					</div>
					<div class='pull-right'>
						<ul id="min" class="pagination"
							style="display: flex; justify-content: center;">
							<c:if test="${pageMaker.prev}">
								<li class="paginate_button previous"><a
									href="${pageMaker.startPage - 1 } ">이전</a></li>
							</c:if>

							<c:forEach var="num" begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}">
								<li class="paginate_button ${pageMaker.cri.pageNum == num ? "
									active" : "" }"
												style="margin: 0 5px;"><a
									href="${num}">${num}</a></li>
							</c:forEach>

							<c:if test="${pageMaker.next}">
								<li class="paginate_button next"><a
									href="${pageMaker.endPage + 1}">다음</a></li>
							</c:if>
						</ul>
					</div>
					<!-- 페이징 처리 끝-->
					<div class="soo">
						<form id='actionForm' action='/kabart/usedProduct/used_prod_list'
							method="get">
							<input type='hidden' name="prod_category"
								value="${productList[0].prod_category}"> <input
								type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							<input type="hidden" name="amount"
								value="${pageMaker.cri.amount}">
						</form>
					</div>
					<!-- /상품 그루핑 -->
				</div>
				<%@include file="../includes/footer.jsp"%>
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