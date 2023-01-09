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
				<input id='mem_id' type='hidden'
					value='<sec:authentication property="principal.username"/>'>
				<div data-v-39b2348a="" class="container my lg">
					<div data-v-39b2348a="">
						<div data-v-39b2348a="" class="snb_area" style="height: 1000px;">
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
								<div data-v-e2f6767a="" class="empty_area">
									<p data-v-e2f6767a="" class="desc">추가하신 관심 상품이 없습니다.</p>
									<a data-v-575aff82="" data-v-e2f6767a="" href="/kabart/home"
										class="btn outlinegrey small"> SHOP 바로가기 </a>
								</div>
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
							<a id="cartDel" data-v-6e799857="" data-v-f40660fa=""
								href="/kabart/usedProduct/used_prod_sell?prod_id=71007"
								class="btn solid full sell large"
								style="font-size: 14px; padding: 0; height: 40px;"> 선택 삭제</a>
						</div>
					</div>
					<!-- 총 가격 만들기 -->
					<div class="price_area1">
						<div data-v-14995178="" data-v-877ed62a=""
							class="buy_total_confirm" is-instant="true"
							style="border-top: 0px; padding: 0px;">
							<div data-v-158ed304="" class="instant_group">
								<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
									<dl data-v-15aa5096="" class="price_now_box">
										<dt data-v-15aa5096="" class="price_now_title">전체 금액</dt>
										<dd data-v-15aa5096="" class="price">
											<span data-v-15aa5096="" class="amount">0</span><span
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
										<span data-v-679d7250="" class="amount">0</span><span
											data-v-679d7250="" class="unit">원</span>
									</dd>
								</dl>
								<span data-v-679d7250="" class="price_warning"
									style="display: none;"><em data-v-679d7250="">주의! </em></span>
							</div>
							<div class="submit"></div>

							<div data-v-14995178="" class="btn_confirm">
								<a id="goOrder" data-v-6e799857="" data-v-14995178="" href="#"
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
		let csrfHeaderName = "${_csrf.headerName}";
		let csrfTokenValue = "${_csrf.token}";
		var prod_list = [];
		var flag = false;
		const mem_id = $("#mem_id").val();
		const allCheck = $("#cart");

		allCheck.on("click", function(e) {
			e.preventDefault();
			var list = $(".chk");
			if (flag) {
				list.prop("checked", false);
				flag = !flag;
			} else {
				list.prop("checked", true);
				flag = !flag;
			}
			getCheckboxValue();
		})
		function getCheckboxValue() {
			var result = 0;
			$("input[name=isCheck]:checked").each(function() {

				var price = $('#src' + $(this).val()).data('value');
				var quantity = $('#qmt' + $(this).val()).data('value');
				result += price * quantity;
				console.log(price);
				console.log(quantity);
			});
			console.log(result);
			$(".buy_total_confirm .amount")
					.html(result.toLocaleString('ko-KR'));
		};

		$("#cartDel").on(
				"click",
				function removeCarts(e) {
					e.preventDefault();
					var valArr = [];
					var url = '/kabart/mypage/removeCarts?mem_id=' + mem_id
							+ '&prod_id=';
					$("input[name=isCheck]:checked").each(function() {
						valArr.push($(this).val());
						url += $(this).val() + ',';
					});
					url = url.substr(0, url.length - 1);
					console.log(url);
					$.ajax({
						url : url,
						contentType : "application/json",
						success : function() {
							getAllCarts();

						},
						error : function(e) {
							console.log(e);
						}
					})

				});
		function updateAmount(val, ths) {
			var id = $(ths).data('value');
			console.log(id);
			console.log(val);
			var quan = $('#qmt' + id).data('value');

			console.log(quan);
			if (quan == 1 && val == -1) {
				return;
			}
			$('#qmt' + id).data('value', quan + val);
			$('#qmt' + id).html(quan + val);
			$.ajax({
				type : 'post',
				url : '/kabart/mypage/update',
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				data : JSON.stringify({
					mem_id : mem_id,
					prod_id : id,
					quantity : val
				}),
				contentType : "application/json",
				succeess : function() {

				},
				error : function(e) {
					console.log(e);
				}
			})
			getCheckboxValue();
		}
		function getAllCarts() {
			$
					.ajax({
						type : 'post',
						url : '/kabart/mypage/cartlist',
						data : JSON.stringify({
							mem_id : mem_id
						}),
						beforeSend : function(xhr) {
							xhr
									.setRequestHeader(csrfHeaderName,
											csrfTokenValue);
						},
						contentType : "application/json",
						success : function(result) {
							console.log(result.length);
							var row = "";

							if (result.length == 0) {
								row = "<div data-v-e2f6767a='' class='empty_area'><p data-v-e2f6767a='' class='desc'>추가하신 관심 상품이 없습니다.</p><a data-v-575aff82='' data-v-e2f6767a='' href='/kabart/home' class='btn outlinegrey small'> SHOP 바로가기 </a></div>";
							} else {
								for (var i = 0; i < result.length; i++) {
									let price = result[i].prod_price
											.toLocaleString('ko-KR');
									row += "<li data-v-4faab390=''><div data-v-4faab390='' class='wish_item'><div data-v-4faab390='' class='wish_product'><input value='"
											+ result[i].prod_id
											+ "' onclick='getCheckboxValue(event)' name='isCheck' type='checkbox' class='chk'><div data-v-4faab390='' class='product_box'><div data-v-09fbcf09='' data-v-4faab390='' class='product' style='background-color: rgb(244, 244, 244);'>"
											+ "<picture data-v-321fc3b6='' data-v-09fbcf09='' class='picture product_img'><source data-v-321fc3b6='' type='image/webp' srcset='"+result[i].img_srcs+"'><source data-v-321fc3b6='' srcset='"+result[i].img_srcs+"'><img data-v-321fc3b6='' alt='상품 이미지' src='"+result[i].img_srcs+"' loading='lazy' class='image'></picture>"
											+ "</div></div><div data-v-4faab390='' class='product_detail'><div data-v-4faab390=''><a data-v-4faab390='' href='#' class='brand-text'>"
											+ result[i].prod_category
											+ "</a></div><p data-v-4faab390='' class='name'>"
											+ result[i].prod_name
											+ "</p><div data-v-4faab390='' class='size'><span data-v-4faab390=''class='size'>수량</span> <span class='count' style='padding: 0px 10px;'> <button type='button' onclick='updateAmount(-1,this)' data-value='"
											+ result[i].prod_id
											+ "'class='minus' style='padding: 0px 3px'>-</button> <span id='qmt"+result[i].prod_id+"' data-value='"+result[i].quantity+"'data-v-4faab390='' class='size' style='padding: 0px 3px'>"
											+ result[i].quantity
											+ "</span>"
											+ "<button type='button' onclick='updateAmount(1,this)' data-value='"
											+ result[i].prod_id
											+ "' class='plus'>+</a></span></div></div></div><div data-v-4faab390='' class='wish_buy'><div data-v-4faab390=''><div data-v-23bbaa82='' data-v-4faab390='' class='division_btn_box lg'>"
											+ "<span data-v-23bbaa82='' class='btn_division buy'> <strong data-v-23bbaa82='' class='title'>가격</strong><div data-v-23bbaa82='' class='price'><span data-v-23bbaa82='' class='amount'><em id='src"+result[i].prod_id+"' data-value='"+result[i].prod_price+"' data-v-23bbaa82='' class='num'>"
											+ price
											+ "</em><span data-v-23bbaa82='' class='won'>원</span></span>"
											+ "</div></span></div></div></div></div></li>";
								}

							}
							$(".wish_list").html(row);
							getCheckboxValue();
						},
						error : function(e) {
							console.log(e);
						}

					})
		}
		$("#goOrder").on("click", function(e) {
			e.preventDefault();
			var valArr = [];
			var url = '/kabart/order/list?prod_id=';
			$("input[name=isCheck]:checked").each(function() {
				valArr.push($(this).val());
				url += $(this).val() + ',';
			});
			url = url.substr(0, url.length - 1);
			if (valArr.length == 0) {
				return;
			}
			console.log(url);
			location.href = url;

		})
		$(function() {
			getAllCarts();
		})
	</script>


	<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>

</html>