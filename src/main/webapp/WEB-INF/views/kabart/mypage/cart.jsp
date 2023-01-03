<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>장바구니</title>
<meta data-n-head="ssr" charset="utf-8">
</head>


<body style="">

	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div data-v-39b2348a="" tabindex="0" class="wrap win_os">
				<!---->
				<jsp:include page="../includes/header.jsp"></jsp:include>
				<div data-v-39b2348a="" class="wrap_inner"></div>
				<input type='hidden'
					value='<sec:authentication property="principal.username"/>'>
				<div data-v-39b2348a="" class="container my lg">
					<div data-v-39b2348a="">
						<div data-v-39b2348a="" class="snb_area">
							<a data-v-39b2348a="" href="/kabart/mypage/my"
								class="nuxt-link-exact-active nuxt-link-active"
								aria-current="page"><h2 data-v-39b2348a=""
									class="snb_main_title">마이 페이지</h2></a>
							<nav data-v-7bcac446="" data-v-39b2348a="" class="snb">
								<div data-v-7bcac446="" class="snb_list">
									<strong data-v-7bcac446="" class="snb_title">쇼핑 정보</strong>
									<ul data-v-4d11470e="" data-v-7bcac446="" class="snb_menu">
										<li data-v-4d11470e="" class="menu_item"><a
											data-v-4d11470e="" href="/kabart/mypage/buying"
											class="menu_link"> 구매 내역 </a></li>
										<li data-v-4d11470e="" class="menu_item"><a
											data-v-4d11470e="" href="/kabart/mypage/selling"
											class="menu_link"> 판매 내역 </a></li>

										<li data-v-4d11470e="" class="menu_item"><a
											data-v-4d11470e="" href="/kabart/mypage/cart"
											class="menu_link"> 장바구니 </a></li>
									</ul>
								</div>
								<div data-v-7bcac446="" class="snb_list">
									<strong data-v-7bcac446="" class="snb_title">내 정보</strong>
									<ul data-v-4d11470e="" data-v-7bcac446="" class="snb_menu">
										<li data-v-4d11470e="" class="menu_item"><a
											data-v-4d11470e="" href="/kabart/mypage/profile"
											class="menu_link"> 프로필 정보 </a></li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
					<div data-v-39b2348a="" class="content_area">
						<div class="my_interest">
							<div data-v-88eb18f6="" class="content_title border">
								<div data-v-88eb18f6="" class="title">
									<h3 data-v-88eb18f6="">장바구니</h3>
									<!---->
								</div>
								<!---->
							</div>
							<ul data-v-4faab390="" class="wish_list">
								<li data-v-4faab390="">
									<div data-v-4faab390="" class="wish_item">
										<div data-v-4faab390="" class="wish_product">
											<input type="checkbox" class="chk">
											<div data-v-4faab390="" class="product_box">



												<div data-v-09fbcf09="" data-v-4faab390="" class="product"
													style="background-color: rgb(244, 244, 244);">
													<picture data-v-321fc3b6="" data-v-09fbcf09=""
														class="picture product_img">
													<source data-v-321fc3b6="" type="image/webp"
														srcset="https://kream-phinf.pstatic.net/MjAyMjEwMDdfMjUy/MDAxNjY1MTIyOTA5ODc3.QE2gpcMai02v9hpWQRYPkh03Zd4CyeX4SVOy1yjht28g.QUfdZBeZe-EjVv7NgbrZzmNd0imP0jOmYOAOFDk2zJsg.JPEG/a_5dd8fc37dbf74510bb36d1c370fff93b.jpg?type=m_webp">
													<source data-v-321fc3b6=""
														srcset="https://kream-phinf.pstatic.net/MjAyMjEwMDdfMjUy/MDAxNjY1MTIyOTA5ODc3.QE2gpcMai02v9hpWQRYPkh03Zd4CyeX4SVOy1yjht28g.QUfdZBeZe-EjVv7NgbrZzmNd0imP0jOmYOAOFDk2zJsg.JPEG/a_5dd8fc37dbf74510bb36d1c370fff93b.jpg?type=m">
													<img data-v-321fc3b6="" alt="상품 이미지"
														src="https://kream-phinf.pstatic.net/MjAyMjEwMDdfMjUy/MDAxNjY1MTIyOTA5ODc3.QE2gpcMai02v9hpWQRYPkh03Zd4CyeX4SVOy1yjht28g.QUfdZBeZe-EjVv7NgbrZzmNd0imP0jOmYOAOFDk2zJsg.JPEG/a_5dd8fc37dbf74510bb36d1c370fff93b.jpg?type=m"
														loading="lazy" class="image"> </picture>
													<!---->
													<!---->
													<!---->
													<!---->
												</div>
											</div>




											<div data-v-4faab390="" class="product_detail">
												<div data-v-4faab390="">
													<a data-v-4faab390="" href="#" class="brand-text">상품이카테고리</a>
													<!---->
												</div>

												<p data-v-4faab390="" class="name">Apple AirPods Pro 2nd
													Gen (Korean Ver.)</p>

												<div data-v-4faab390="" class="size">
													<span data-v-4faab390="" class="size">수량</span> <span
														class="count" style="padding: 0px 10px;"> <a
														href="#" class="minus" style="padding: 0px 3px">-</a> <span
														data-v-4faab390="" class="size" style="padding: 0px 3px">0</span>
														<a href="#" class="plus">+</a>
													</span>

												</div>
											</div>



										</div>

										<div data-v-4faab390="" class="wish_buy">
											<div data-v-4faab390="">
												<div data-v-23bbaa82="" data-v-4faab390=""
													class="division_btn_box lg">
													<a data-v-23bbaa82=""
														href="http://localhost/kabart/order/order"
														class="btn_division buy"> <strong data-v-23bbaa82=""
														class="title"> 구매 </strong>
														<div data-v-23bbaa82="" class="price">
															<span data-v-23bbaa82="" class="amount"><em
																data-v-23bbaa82="" class="num">316,000</em><span
																data-v-23bbaa82="" class="won">원</span></span><span
																data-v-23bbaa82="" class="desc">즉시 구매가</span>
														</div>
													</a>
												</div>

											</div>
											<!---->
										</div>
									</div>
								</li>
							</ul>


							<div data-v-1f9de2f0="" class="pagination">
								<div data-v-1f9de2f0="" class="pagination_box first last">
									<div data-v-1f9de2f0="" class="prev_btn_box">
										<a data-v-1f9de2f0="" href="/my/wish?page=1" class="btn_arr"
											aria-label="첫 페이지"><svg data-v-1f9de2f0=""
												xmlns="http://www.w3.org/2000/svg"
												class="arr-page-first icon sprite-icons">
                        <use data-v-1f9de2f0=""
													href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-first"
													xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-first"></use>
                      </svg></a><a data-v-1f9de2f0="" href="/my/wish?page=0"
											class="btn_arr" aria-label="이전 페이지"><svg
												data-v-1f9de2f0="" xmlns="http://www.w3.org/2000/svg"
												class="arr-page-prev icon sprite-icons">
                        <use data-v-1f9de2f0=""
													href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-prev"
													xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-prev"></use>
                      </svg></a>
									</div>
									<div data-v-1f9de2f0="" class="page_bind">
										<a data-v-1f9de2f0="" href="/my/wish?page=1"
											class="btn_page active" aria-label="1페이지"> 1 </a>
									</div>
									<div data-v-1f9de2f0="" class="next_btn_box">
										<a data-v-1f9de2f0="" href="/my/wish?page=2" class="btn_arr"
											aria-label="다음 페이지"><svg data-v-1f9de2f0=""
												xmlns="http://www.w3.org/2000/svg"
												class="arr-page-next icon sprite-icons">
                        <use data-v-1f9de2f0=""
													href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-next"
													xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-next"></use>
                      </svg></a><a data-v-1f9de2f0="" href="/my/wish?page=1"
											class="btn_arr" aria-label="마지막 페이지"><svg
												data-v-1f9de2f0="" xmlns="http://www.w3.org/2000/svg"
												class="arr-page-last icon sprite-icons">
                        <use data-v-1f9de2f0=""
													href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-last"
													xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-last"></use>
                      </svg></a>
									</div>
								</div>
							</div>
							<!-- pagination -->
						</div>
					</div>
					<!-- select button -->
					<div data-v-23bbaa82="" data-v-3900a1a2=""
						class="division_btn_box1 md"
						style="height: 50px; max-width: 1280px; display: grid; grid-template-columns: repeat(9, minmax(0, 1fr)); grid-column-gap: 10px;">
						<div data-v-f40660fa="" data-v-77d20f30=""
							class="detail_stock_btn">

							<a id="cart" data-v-6e799857="" data-v-f40660fa=""
								href="/kabart/mypage/cart" class="btn solid full buy1 large"
								style="font-size: 14px; padding: 0; height: 40px;">전체 선택</a>

						</div>

						<div data-v-f40660fa="" data-v-77d20f30=""
							class="detail_stock_btn">
							<a data-v-6e799857="" data-v-f40660fa=""
								href="/kabart/usedProduct/used_prod_sell?prod_id=71007"
								class="btn solid full sell large"
								style="font-size: 14px; padding: 0; height: 40px;"> 선택 삭제</a>
						</div>
					</div>
					<!-- 총 가격 만들기 -->
					<div class="price_area">
						<div data-v-14995178="" data-v-877ed62a=""
							class="buy_total_confirm" is-instant="true"
							style="border-top: 0px; padding: 0px;">
							<div data-v-158ed304="" class="instant_group">
								<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
									<dl data-v-15aa5096="" class="price_now_box">
										<dt data-v-15aa5096="" class="price_now_title">전체 금액</dt>
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
										<dd data-v-3a2a7b6b="" class="price_text">무료</dd>
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
									style="display: none;"><em data-v-679d7250="">주의! </em></span>
							</div>
							<div class="submit"></div>

							<div data-v-14995178="" class="btn_confirm">
								<a data-v-6e799857="" data-v-14995178="" href="#"
									class="btn full solid false" style="background-color: #ef6253;">구매하기</a>
							</div>
						</div>
					</div>
					<!-- 총 가격 끝 -->
				</div>
				<div data-v-39b2348a=""></div>
				<!---->
				<div data-v-39b2348a="">
					<!---->
					<div data-v-66ae1b7c="" id="toast" class="toast lg">
						<div data-v-66ae1b7c="" class="wrap">
							<svg data-v-66ae1b7c="" xmlns="http://www.w3.org/2000/svg"
								class="icon sprite-icons toast-icon toast-success">
                <use data-v-66ae1b7c=""
									href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-toast-success"
									xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-toast-success"></use>
              </svg>
							<div data-v-66ae1b7c="" class="toast-content">
								<p data-v-66ae1b7c="">내용</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		
	</script>


	<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>

</html>