<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Product detail</title>
</head>

<body>
	
		<div id="__nuxt">
			<!---->
			<div id="__layout">
				<div tabindex="0" class="wrap win_os md" data-v-3007c576="">
					<!---->
					<jsp:include page="../includes/header.jsp"></jsp:include>
					<form role="form" action="/kabartUsedPerchase" method="post">
					<div data-v-cf786f84="" data-v-3007c576=""
						class="container detail md">
						<div data-v-cf786f84="" class="content">
							<h2 data-v-cf786f84="" class="blind">상품 상세</h2>
							<div data-v-cf786f84="" class="column_bind">
								<div data-v-cf786f84="" class="column">
									<div data-v-cf786f84="" class="spread"></div>
									<div data-v-cf786f84="" class="column_box">
										<div data-v-2998063a="" data-v-cf786f84=""
											class="detail_banner_area md">
											<div data-v-2998063a="" data-v-e4caeaf8="" class="item_inner">
												<div data-v-09fbcf09="" data-v-2998063a="" class="product"
													data-v-e4caeaf8="">
													<picture data-v-321fc3b6="" data-v-09fbcf09=""
														class="picture product_img"> <img alt=""
														src="${read.img_srcs}" style="overflow: auto;"></picture>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div data-v-77d20f30="" class="column">
									<div data-v-67511fc2="" data-v-77d20f30=""
										class="detail_info_wrap md">
										<div data-v-67511fc2="" class="detail_info">
											<p data-v-67511fc2="" class="size">
												<em data-v-67511fc2="" class="mark_95">${read.grade}</em><span
													data-v-67511fc2="" class="size_text">${read.prod_name}</span>
											</p>
										</div>
										<dl data-v-67511fc2="" class="detail_price">
											<dt data-v-67511fc2="" class="title">
												<span data-v-67511fc2="" class="title_txt">구매가</span>
											</dt>
											<dd data-v-67511fc2="" class="price1">
												<div data-v-67511fc2="" class="discount_amount">
													<em data-v-67511fc2="" class="discount_per">${read.discount_rate}%</em><span
														data-v-67511fc2="" class="num"> <fmt:formatNumber
															value="${read.used_price}" pattern="#,###" />
													</span><span data-v-67511fc2="" class="won">원</span>
												</div>
												<div data-v-67511fc2="" class="origin_amount">
													<span data-v-67511fc2="" class="num"> <fmt:formatNumber
															value="${read.prod_price}" pattern="#,###" />
													</span><span data-v-67511fc2="" class="won">원</span>
												</div>
											</dd>
										</dl>
									</div>
									<!-- 판매완료 구분 -->
									<sec:authorize access="isAnonymous()">
										<div data-v-77d20f30="" class="btn_wrap">
											<c:if test="${read.sale_date eq null}">
												<div data-v-f40660fa="" data-v-77d20f30=""
													class="detail_stock_btn">
													<a data-v-6e799857="" data-v-f40660fa="" href="#"
														class="btn solid full buy1 large"> 구매 불가 </a>
												</div>
											</c:if>
											<c:if test="${read.sale_date ne null}">
												<div data-v-f40660fa="" data-v-77d20f30=""
													class="detail_stock_btn1">
													<a data-v-6e799857="" data-v-f40660fa=""
														class="btn solid full buy1 large"> 판매 완료 </a>
												</div>
											</c:if>
										</div>
									</sec:authorize>
									<!-- /판매완료 구분 -->
									<!-- 멤버아이디 구분 -->
									<sec:authorize access="isAuthenticated()">
										<sec:authentication property="principal.username"
											var="user_id" />
										<c:if test="${read.mem_id eq user_id}">
											<li class="gnb_item">
											<c:choose>
											
													<c:when test="${empty read.sale_date }">
														<div data-v-23bbaa82="" data-v-3900a1a2=""
															class="division_btn_box1 md">
															<div data-v-f40660fa="" data-v-77d20f30=""
																class="detail_stock_btn">

																<a id="cart" data-v-6e799857="" data-v-f40660fa=""
																	href="/kabart/usedProduct/used_prod_detail_modify?up_id=${read.up_id }"
																	class="btn solid full buy1 large"> 수정 </a>

															</div>

															<div data-v-f40660fa="" data-v-77d20f30=""
																class="detail_stock_btn">
																<button type="submit" data-oper='remove'
																	style="width: 100%;">

																	<a data-v-6e799857="" data-v-f40660fa="" href="#"
																		class="btn solid full sell large">삭제 </a>
																</button>
															</div>
														</div>
													</c:when>
													<c:otherwise>
														<div data-v-f40660fa="" data-v-77d20f30=""
															class="detail_stock_btn1">
															<a data-v-6e799857="" data-v-f40660fa=""
																class="btn solid full buy1 large"> 판매 완료 </a>
														</div>
													</c:otherwise>
												</c:choose></li>
										</c:if>
										<c:if test="${read.mem_id ne user_id}">
											<div data-v-77d20f30="" class="btn_wrap">
												<c:if test="${read.sale_date eq null}">
													<div data-v-f40660fa="" data-v-77d20f30=""
														class="detail_stock_btn">
														<a data-v-6e799857="" data-v-f40660fa=""
															href="/kabart/order/list?prod_id=<c:out value="${read.prod_id}"/>&up_id=<c:out value="${read.up_id}"/>"
															class="btn solid full buy large"> 바로 구매 </a>

													</div>
												</c:if>
												<c:if test="${read.sale_date ne null}">
													<div data-v-f40660fa="" data-v-77d20f30=""
														class="detail_stock_btn1">
														<a data-v-6e799857="" data-v-f40660fa=""
															class="btn solid full buy1 large"> 판매 완료 </a>
													</div>
												</c:if>
											</div>
										</c:if>
									</sec:authorize>
									<!-- /멤버아이디 구분 -->
									<div data-v-824856a2="" data-v-77d20f30=""
										class="checked_review" style="padding: 20px 0;">
										<div data-v-3900a1a2="" class="product_info_wrap">
											<h3 data-v-52dd777b="" data-v-3900a1a2=""
												class="detail_title info_title md" style="padding-top: 0px;">상품
												정보</h3>
											<div data-v-b809b0a6="" data-v-3900a1a2=""
												class="detail_product_wrap">
												<dl data-v-b809b0a6="" class="detail_product">
													<div data-v-b809b0a6="" class="detail_box model_num">
														<dt data-v-b809b0a6="" class="product_title">너비</dt>
														<dd data-v-b809b0a6="" class="product_info">
															${read.prod_width}</dd>
													</div>
													<div data-v-b809b0a6="" class="detail_box">
														<dt data-v-b809b0a6="" class="product_title">높이</dt>
														<dd data-v-b809b0a6="" class="product_info">
															${read.prod_height}</dd>
													</div>
													<div data-v-b809b0a6="" class="detail_box">
														<dt data-v-b809b0a6="" class="product_title">깊이</dt>
														<dd data-v-b809b0a6="" class="product_info">
															${read.prod_depth}</dd>
													</div>
													<div data-v-b809b0a6="" class="detail_box">
														<dt data-v-b809b0a6="" class="product_title">발매가</dt>
														<dd data-v-b809b0a6="" class="product_info">
															${read.prod_price}</dd>
													</div>
												</dl>
											</div>
										</div>
										<!---->
										<div data-v-2e0c1d1d="" data-v-824856a2=""
											class="review_section plain top">
											<p data-v-2e0c1d1d="" class="title">검수 결과</p>
											<div data-v-315a3e4a="" data-v-2e0c1d1d=""
												class="review_item">
												<div data-v-315a3e4a="" class="title">
													<span data-v-315a3e4a="">${read.grade}</span>
												</div>
											</div>
										</div>
										<!---->
										<div data-v-2e0c1d1d="" data-v-824856a2=""
											class="review_section plain">
											<p data-v-2e0c1d1d="" class="title">설명</p>
											<div data-v-47ba7f78="" data-v-2e0c1d1d=""
												class="review_item">
												<p data-v-47ba7f78="">${read.up_comment}</p>
											</div>
										</div>
										<!---->
										<!---->
										<div data-v-2e0c1d1d="" data-v-824856a2=""
											class="review_section plain">
											<p data-v-2e0c1d1d="" class="title">상세 사진</p>
											<div data-v-73da1ab5="" data-v-2e0c1d1d=""
												class="review_item">
												<ul data-v-73da1ab5="" class="stock_images">
													<li data-v-73da1ab5=""><img data-v-73da1ab5=""
														src="https://kream-phinf.pstatic.net/MjAyMjEwMDFfMTE3/MDAxNjY0NTkzMzQxOTc4.ljgJB0IlimE8oWHG2oMZWeM1NZD-4YcTk0lXv9ofwOsg.uplNkEywWZgN9iVEw65L2BZFI8U-CKXec9rlgxdSPW4g.JPEG/a_81877b6f0f05443ba66c430382d171a5.jpeg?type=s"
														class="stock_95_image"></li>
													<li data-v-73da1ab5=""><img data-v-73da1ab5=""
														src="https://kream-phinf.pstatic.net/MjAyMjEwMDFfMjg4/MDAxNjY0NTkzMzQyNDYz.T1kXXMZdbmUJ4foeEI65Hhqw8Y9vU-4wa7dQ2m6oUM0g.kY-zziGgOHJWp0Ow0i0T9uq_JqLXqoyax3TAgoRLcHcg.JPEG/a_6e6653106f6345e4a41cb8d70c9c4ccd.jpeg?type=s"
														class="stock_95_image"></li>
												</ul>
											</div>
										</div>
										<!---->
										<div data-v-2e0c1d1d="" data-v-824856a2=""
											class="review_section empty_header">
											<p data-v-2e0c1d1d="" class="title"></p>
											<div data-v-9027bcb8="" data-v-2e0c1d1d=""
												class="review_item">
												<p data-v-9027bcb8="" class="desc">촬영 환경 광선, 배경 등 외적인
													요소의 영향으로 실물 색상과 사진이 다를 수 있습니다.</p>
											</div>
											<!---->
										</div>
										<div data-v-2e0c1d1d="" data-v-824856a2=""
											class="review_section empty_header top">
											<p data-v-2e0c1d1d="" class="title"></p>
											<div data-v-97275b18="" data-v-2e0c1d1d=""
												class="review_item">
												<p data-v-97275b18="" class="review_date">등록일
													  <fmt:formatDate value="${read.up_regdate}"/></p>
											</div>
											<!---->
										</div>


										<!---->
									</div>
								</div>
							</div>

							<!---->
						</div>
						<!--content-->
					</div>
				</div>
				<%@include file="../includes/footer.jsp"%>
			</div>
		</div>
	</form>
</body>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						let formObj = $("form");

						$('button')
								.on(
										"click",
										function(e) {
											e.preventDefault();

											let operation = $(this)
													.data("oper");

											console.log(operation);

											if (operation === 'remove') {
												formObj
														.attr("action",
																"/kabart/usedProduct/used_prod_detail_remove?up_id=${read.up_id}");
											}
											formObj.submit();
										});
					});
</script>

</html>