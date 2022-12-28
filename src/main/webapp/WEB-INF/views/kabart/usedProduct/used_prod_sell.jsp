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
<title>Product List</title>
</head>
<body>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div tabindex="0" class="wrap win_os md" data-v-3007c576="">
				<jsp:include page="../includes/header.jsp"></jsp:include>

				<div data-v-b36cb8c4="" data-v-34b11929=""
					class="container sell md step-1">
					<!---->
					<div data-v-b36cb8c4="" class="content">
						<div data-v-877ed62a="" data-v-b36cb8c4="" class="buy_immediate">
							<div data-v-19e1c5dc="" class="center">
								<h2 data-v-34b11929="" data-v-19e1c5dc="" class="title">
									<span data-v-34b11929="" data-v-19e1c5dc="" class="title_txt">판매하기</span>
								</h2>
							</div>
							<div data-v-2b95d831="" data-v-877ed62a=""
								class="product_info_area">
								<div data-v-2b95d831="" class="product_info">
									<div data-v-09fbcf09="" data-v-2b95d831="" class="product">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="/resources/img/prod1.png" style="overflow: auto;"></picture>
										<!---->
										<!---->
										<!---->
										<!---->
									</div>
									<div data-v-6e865099="" data-v-3900a1a2=""
										class="detail_main_title md">
										<div data-v-6e865099="" class="main_title_box1">
											<p data-v-6e865099="" class="title">Arc'teryx Heliad 15
												Backpack Black</p>
										</div>
									</div>
								</div>
							</div>

							<div data-v-158ed304="" data-v-877ed62a=""
								class="price_descision_box">
								<ul data-v-638c1354="" data-v-158ed304="" class="price_list">
									<li data-v-638c1354="" class="list_item"><p
											data-v-638c1354="" class="title">정가</p> <span
										data-v-638c1354="" class="price">752,000</span><span
										data-v-638c1354="" class="unit">원</span></li>
									<li data-v-638c1354="" class="list_item"><p
											data-v-638c1354="" class="title">검수 등급</p> <span
										data-v-315a3e4a="">A</span></li>
								</ul>

							</div>
							<!---->
							<div class="used_info">
								<h3 data-v-824856a2="" class="review_title">제품 설명</h3>
								<div class="info_write">

									<input type="text">
								</div>
							</div>
							<div data-v-14995178="" data-v-877ed62a=""
								class="buy_total_confirm" is-instant="true">
								<div data-v-158ed304="" class="instant_group">
									<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
										<dl data-v-15aa5096="" class="price_now_box">
											<dt data-v-15aa5096="" class="price_now_title">판매가</dt>
											<dd data-v-15aa5096="" class="price">
												<span data-v-15aa5096="" class="amount">712,000</span><span
													data-v-15aa5096="" class="unit">원</span>
											</dd>
										</dl>
										<div data-v-15aa5096="" class="price_warning"
											style="display: none;">
											<!---->
										</div>
									</div>
									<div data-v-158ed304="" class="price_bind">
										<dl data-v-3a2a7b6b="" data-v-158ed304=""
											class="price_addition">
											<dt data-v-3a2a7b6b="" class="price_title">
												<span data-v-3a2a7b6b="">검수비</span>
												<!---->
											</dt>
											<dd data-v-3a2a7b6b="" class="price_text">무료</dd>
										</dl>
										<dl data-v-3a2a7b6b="" data-v-158ed304=""
											class="price_addition __web-inspector-hide-shortcut__">
											<dt data-v-3a2a7b6b="" class="price_title">
												<span data-v-3a2a7b6b="">등급 산정 가격</span>
											</dt>
											<dd data-v-3a2a7b6b="" class="price_text">-7,100원</dd>
										</dl>
										<dl data-v-3a2a7b6b="" data-v-158ed304=""
											class="price_addition">
											<dt data-v-3a2a7b6b="" class="price_title">
												<span data-v-3a2a7b6b="">배송비</span>
												<!---->
											</dt>
											<dd data-v-3a2a7b6b="" class="price_text">선불 ・ 판매자 부담</dd>
										</dl>
									</div>
								</div>
								<div data-v-679d7250="" data-v-14995178="" class="price_total">
									<dl data-v-679d7250="" class="price_box">
										<dt data-v-679d7250="" class="price_title">정산금액</dt>
										<dd data-v-679d7250="" class="price">
											<span data-v-679d7250="" class="amount">704,900</span><span
												data-v-679d7250="" class="unit">원</span>
										</dd>
									</dl>
									<span data-v-679d7250="" class="price_warning"
										style="display: none;"><em data-v-679d7250="">주의!
									</em></span>
								</div>
								<div data-v-14995178="" class="btn_confirm">
									<a data-v-6e799857="" data-v-14995178="" href="#"
										class="btn full solid false"> 판매하기</a>
								</div>
							</div>
						</div>
						<!---->
						<!---->
					</div>
					<!---->
					<!---->
				</div>
				<%@include file="../includes/footer.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>