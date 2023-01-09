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

<style>
.bigPictureWrapper {
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top: 0%;
	width: 100%;
	height: 100%;
	background-color: gray;
	z-index: 100;
	background: rgba(255, 255, 255, 0.5);
}

.bigPicture {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}

.bigPicture img {
	width: 600px;
}


</style>
</head>

<body>

	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div tabindex="0" class="wrap win_os md" data-v-3007c576="">
				<!---->
				<jsp:include page="../includes/header.jsp"></jsp:include>
				<form role="form" action="/kabartUsedPerchase" method="post">
					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }" />
					<div data-v-cf786f84="" data-v-3007c576=""
						class="container detail md">
						<div data-v-cf786f84="" class="content">
							<h2 data-v-cf786f84="" class="blind">상품 상세</h2>
							<div data-v-cf786f84="" class="column_bind">
								<div data-v-cf786f84="" class="column">
									<div data-v-cf786f84="" class="spread"></div>
									<div data-v-cf786f84="" class="column_box" id="plz">
										<div data-v-2998063a="" data-v-cf786f84=""
											class="detail_banner_area md">
											<div data-v-2998063a="" data-v-e4caeaf8="" class="item_inner">
												<div data-v-09fbcf09="" data-v-2998063a="" class="product"
													data-v-e4caeaf8="">
													<picture data-v-321fc3b6="" data-v-09fbcf09=""
														class="picture product_img">
														<img alt=""
															src="${read.img_srcs}" style="overflow: auto;"/>
													</picture>
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
											<li class="gnb_item"><c:choose>

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
															href="/kabart/order/list?prod_id=<c:out value=" ${read.prod_id}" />&up_id=
																		<c:out value="${read.up_id}" />"
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
															${read.prod_width} mm</dd>
													</div>
													<div data-v-b809b0a6="" class="detail_box">
														<dt data-v-b809b0a6="" class="product_title">높이</dt>
														<dd data-v-b809b0a6="" class="product_info">
															${read.prod_height} mm</dd>
													</div>
													<div data-v-b809b0a6="" class="detail_box">
														<dt data-v-b809b0a6="" class="product_title">깊이</dt>
														<dd data-v-b809b0a6="" class="product_info">
															${read.prod_depth} mm</dd>
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
										<div class="bigPictureWrapper">
											<div class="bigPicture"></div>
										</div>
										<div data-v-2e0c1d1d="" data-v-824856a2=""
											class="review_section plain">
											<p data-v-2e0c1d1d="" class="title" style="margin-top: 17px;">상세
												사진</p>
											<div data-v-73da1ab5="" data-v-2e0c1d1d=""
												class="review_item">
												<ul data-v-73da1ab5="" class="stock_images">

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
												<p data-v-97275b18="" class="review_date">
													등록일
													<fmt:formatDate value="${read.up_regdate}" />
												</p>
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

						(function() {
							let up_id = '<c:out value="${read.up_id}"/>';

							$
									.getJSON(
											"/kabart/usedProduct/getAttachList",
											{
												up_id : up_id
											},
											function(arr) {
												console.log(arr);

												let str = "";

												$(arr)
														.each(
																function(i,
																		attach) {
																	
																	
																	let fileCallPath = encodeURIComponent(attach.uploadPath
																			+ "/s_"
																			+ attach.file_uuid
																			+ "_"
																			+ attach.fileName);

																	str += "<li data-v-73da1ab5='' data-path='"+attach.uploadPath+"' data-uuid='"+attach.file_uuid+"' data-fileName='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
																	str += "<img data-v-73da1ab5='' src='/kabart/usedProduct/display?fileName="
																			+ fileCallPath
																			+ "' class='stock_95_image'>";
																	str += "</div>";
																	str += "</li>";
																});

												$(".review_item ul").html(str);
											});
						})();

						$(".review_item").on(
								"click",
								"li",
								function(e) {
									console.log("view image");

									let liObj = $(this);

									let path = encodeURIComponent(liObj
											.data("path")
											+ "/"
											+ liObj.data("uuid")
											+ "_"
											+ liObj.data("filename"));

									showImage(path.replace(new RegExp(/\\/g),
											"/"));
								});

						function showImage(fileCallPath) {

							$(".bigPictureWrapper").css("display", "flex")
									.show();

							$(".bigPicture").html(
									"<img src='/kabart/usedProduct/display?fileName="
											+ fileCallPath + "'>").animate({
								width : '100%',
								height : '100%'
							}, 1000);
						}

						$(".bigPictureWrapper").on("click", function(e) {
							$(".bigPicture").animate({
								width : '0%',
								height : '0%'
							}, 1000);
							setTimeout(function() {
								$('.bigPictureWrapper').hide();
							}, 1000);
						});
					});
</script>

</html>
