<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/resources/js/toastmsg.js" defer></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KREAM | 한정판 거래의 FLEX</title>
</head>
<body data-v-39b2348a="" tabindex="0" class="wrap win_os">




	<jsp:include page="../includes/header.jsp"></jsp:include>
	<input id='mem_id' type='hidden'
		value='<sec:authentication property="principal.username"/>'>
	<!---->
	<div data-v-39b2348a="" class="container my lg">
		<div data-v-39b2348a="">
			<div data-v-39b2348a="" class="snb_area">
				<a data-v-39b2348a="" href="/kabart/mypage/my"
					class="nuxt-link-exact-active nuxt-link-active" aria-current="page"><h2
						data-v-39b2348a="" class="snb_main_title">마이 페이지</h2></a>
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
								data-v-4d11470e="" href="/kabart/mypage/cart" class="menu_link">
									장바구니 </a></li>
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
			<div class="my_purchase">
				<div data-v-88eb18f6="" class="content_title">
					<div data-v-88eb18f6="" class="title">
						<h3 data-v-88eb18f6="">판매 내역</h3>
						<!---->
					</div>
					<!---->
				</div>
				<div data-v-0c307fea="" class="purchase_list_tab detail_tab">
					<div data-v-0c307fea="" class="tab_item tab_on" data-value="0">
						<div data-v-0c307fea="" class="tab_link">
							<dl data-v-0c307fea="" class="tab_box">
								<dt data-v-0c307fea="" class="title">판매 중</dt>
								<dd data-v-0c307fea="" class="count">0</dd>
								<!---->
							</dl>
						</div>
					</div>
					<div data-v-0c307fea="" class="tab_item" data-value="1">
						<div data-v-0c307fea="" class="tab_link">
							<dl data-v-0c307fea="" class="tab_box">
								<dt data-v-0c307fea="" class="title">판매 완료</dt>
								<dd data-v-0c307fea="" class="count">0</dd>
							</dl>
						</div>
					</div>
				</div>


				<div class="period_search">
					<div class="period_calendar_wrapper">
						<div class="period_calendar">
							<div class="calendar_wrap">
								<span><div class="calendar">
										<input type="date" name="dateStart" id="dateStart"
											class="cal_input" title="시작일">
									</div>
									<div data-v-4cb7b681="" class="vc-popover-content-wrapper">
										<!---->
									</div></span>
							</div>
							<span class="swung_dash">~</span>
							<div class="calendar_wrap">
								<span><div class="calendar">
										<input type="date" name="dateEnd" id="dateEnd"
											class="cal_input" title="종료일">
									</div>
									<div data-v-4cb7b681="" class="vc-popover-content-wrapper">
										<!---->
									</div></span>
							</div>
						</div>
						<div class="period_btn_box">
							<button type="button" class="btn_search is_active"
								id="search_period">조회</button>
						</div>
					</div>
				</div>

				<div data-v-50c8b1d2="" class="purchase_list finished ask">

					<div data-v-e2f6767a='' data-v-0d2f7c95='' class='empty_area'>
						<p data-v-e2f6767a='' class='desc'>거래 내역이 없습니다.</p>
					</div>
				</div>
				<div data-v-4857d0b8="" class="pagination">
					<div data-v-4857d0b8="" class="pagination_box first last">
						<div data-v-4857d0b8="" class="prev_btn_box">
							<a data-v-4857d0b8="" href="https://kream.co.kr/my/selling#"
								class="btn_arr"><svg data-v-4857d0b8=""
									xmlns="http://www.w3.org/2000/svg"
									class="arr-page-first icon sprite-icons">
                          <use data-v-4857d0b8=""
										href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-first"
										xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-first"></use></svg></a><a
								data-v-4857d0b8="" href="https://kream.co.kr/my/selling#"
								class="btn_arr"><svg data-v-4857d0b8=""
									xmlns="http://www.w3.org/2000/svg"
									class="arr-page-prev icon sprite-icons">
                          <use data-v-4857d0b8=""
										href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-prev"
										xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-prev"></use></svg></a>
						</div>
						
						<div data-v-4857d0b8="" class="next_btn_box">
							<a data-v-4857d0b8="" href="https://kream.co.kr/my/selling#"
								class="btn_arr"><svg data-v-4857d0b8=""
									xmlns="http://www.w3.org/2000/svg"
									class="arr-page-next icon sprite-icons">
                          <use data-v-4857d0b8=""
										href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-next"
										xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-next"></use></svg></a><a
								data-v-4857d0b8="" href="https://kream.co.kr/my/selling#"
								class="btn_arr"><svg data-v-4857d0b8=""
									xmlns="http://www.w3.org/2000/svg"
									class="arr-page-last icon sprite-icons">
                          <use data-v-4857d0b8=""
										href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-last"
										xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-page-last"></use></svg></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../includes/footer.jsp"></jsp:include>
	<div data-v-3007c576="">
			<!---->
			<div id="toast" class="toast md" data-v-66ae1b7c="">
				<div class="wrap" data-v-66ae1b7c="">
					<picture data-v-66ae1b7c=""  class="toast_img toast-icon" >
						<img alt="" id="img_icon">
						</picture>
					<div class="toast-content" data-v-66ae1b7c="">
						<p data-v-66ae1b7c=""></p>
					</div>
				</div>
			</div>
		</div>
	<script type="text/javascript">
		$(function() {
			var csrfHeaderName = "${_csrf.headerName}";
			var csrfTokenValue = "${_csrf.token}";
			var mem_id = $("#mem_id").val();
			console.log("member id : ",mem_id);
			
			var isUsed = 0;
			const today = new Date().toISOString().slice(0, 10);
			$('#dateEnd').val(today);
			$('#dateStart').val(today);
			
			
			
			$('#dateStart').attr("max",today);
			$('#dateEnd').attr("max",today);
			function date_add(sDate, nDays) {
				var yy = parseInt(sDate.substr(0, 4), 10);
				var mm = parseInt(sDate.substr(5, 2), 10);
				var dd = parseInt(sDate.substr(8), 10);
				d = new Date(yy, mm - 1, dd + nDays);
				yy = (d.getFullYear() + "").substr(2, 4);
				mm = d.getMonth() + 1;
				mm = (mm < 10) ? '0' + mm : mm;
				dd = d.getDate();
				dd = (dd < 10) ? '0' + dd : dd;
				return '' + yy + '/' + mm + '/' + dd;
			}
			/*
			 * Author : 남승현
			 * 기능 : 판매 중인 중고상품 조회
			 */
			function searchSelling(start_date, end_date) {
				$
						.ajax({
							type : 'post',
							url : '/search/selling',
							data : JSON.stringify({
								mem_id : mem_id,
								start_date : start_date,
								end_date : end_date
							}),
							beforeSend : function(xhr) {
								xhr.setRequestHeader(csrfHeaderName,
										csrfTokenValue);
							},
							contentType : "application/json",
							success : function(result) {
								console.log(result);
								if (result.length == 0) {
									var row = "<div data-v-e2f6767a='' data-v-0d2f7c95='' class='empty_area'><p data-v-e2f6767a='' class='desc'>거래 내역이 없습니다.</p></div>";
								} else {
									var row = "";
									for (var i = 0; i < result.length; i++) {
										var calPrice = result[i].prod_price
												* (100 - result[i].discount_rate)
												/ 100;
										let price = calPrice
												.toLocaleString('ko-KR');
										console.log(result[i].imgs_src);
										var status = '판매 중';

										var datestatus = '등록일';
										row += "<a href='/kabart/usedProduct/used_prod_detail?up_id="+result[i].up_id+"'><div data-v-50c8b1d2='' class='purchase_list finished bid'><div data-v-50c8b1d2=''><div data-v-2f988574='' data-v-50c8b1d2=''><div data-v-2f988574='' class='purchase_list_display_item' style='background-color: rgb(255, 255, 255);'>"
												+ "<div data-v-2f988574='' class='purchase_list_product'><div data-v-2f988574='' class='list_item_img_wrap'><img data-v-2f988574='' alt='product_image' src='"
												+ result[i].img_srcs
												+ "' class='list_item_img' style='background-color: rgb(235, 240, 245);'>"
												+ "</div><div data-v-2f988574='' class='list_item_title_wrap'><p data-v-2f988574='' class='list_item_title'>"
												+ result[i].prod_name
												+ "</p><p data-v-2f988574='' class='list_item_description'>"
												+ price
												+ "원</p><p data-v-2f988574='' class='list_item_description'>"
												+ result[i].grade
												+ "등급</p>"
												+ "</div></div><div data-v-2f988574='' class='list_item_status'><div data-v-2f988574='' class='list_item_column column_secondary'><p data-v-5f36ea36='' data-v-2f988574='' class='secondary_title display_paragraph' style='color: rgba(34, 34, 34, 0.5);'>"
												+ datestatus
												+ "</p></div>"
												+ "<div data-v-2f988574='' class='list_item_column column_secondary'><p data-v-5f36ea36='' data-v-2f988574='' class='secondary_title display_paragraph' style='color: rgba(34, 34, 34, 0.5);'>"
												+ result[i].up_regdate
												+ "</p></div>"
												+ "<div data-v-2f988574='' class='list_item_column column_last'><p data-v-5f36ea36='' data-v-2f988574='' class='last_title display_paragraph' style='color: rgb(34, 34, 34);'>"
												+ status
												+ "</p><p data-v-5f36ea36='' data-v-2f988574='' class='last_description display_paragraph'></p></div></div>"
												+ "</div></div></div></div></a>";
									}
								}
								$(".tab_on .count").html(result.length);
								console.log($(".tab_on count").html());
								$(".purchase_list").html(row);
								
							},
							error : function(e) {
								alert('조회 실패');
							}
						});
			}
			;
			
			/*
			 * Author : 남승현
			 * 기능 : 판매완료 된 중고상품 조회
			 */
			function searchSelled(start_date, end_date) {
				$
						.ajax({
							type : 'post',
							url : '/search/selled',
							data : JSON.stringify({
								mem_id : mem_id,
								start_date : start_date,
								end_date : end_date
							}),
							beforeSend : function(xhr) {
								xhr.setRequestHeader(csrfHeaderName,
										csrfTokenValue);
							},
							contentType : "application/json",
							success : function(result) {
								console.log(result);
								if (result.length == 0) {
									var row = "<div data-v-e2f6767a='' data-v-0d2f7c95='' class='empty_area'><p data-v-e2f6767a='' class='desc'>거래 내역이 없습니다.</p></div>";
								} else {
									var row = "";
									for (var i = 0; i < result.length; i++) {
										var calPrice = result[i].prod_price
												* (100 - result[i].discount_rate)
												/ 100;
										let price = calPrice
												.toLocaleString('ko-KR');
										console.log(result[i].imgs_src);
										var status = '판매완료';

										var datestatus = '판매날짜';
										row += "<a href='/kabart/usedProduct/used_prod_detail?up_id="+result[i].up_id+"'><div data-v-50c8b1d2='' class='purchase_list finished bid'><div data-v-50c8b1d2=''><div data-v-2f988574='' data-v-50c8b1d2=''><div data-v-2f988574='' class='purchase_list_display_item' style='background-color: rgb(255, 255, 255);'>"
												+ "<div data-v-2f988574='' class='purchase_list_product'><div data-v-2f988574='' class='list_item_img_wrap'><img data-v-2f988574='' alt='product_image' src='"
												+ result[i].img_srcs
												+ "' class='list_item_img' style='background-color: rgb(235, 240, 245);'>"
												+ "</div><div data-v-2f988574='' class='list_item_title_wrap'><p data-v-2f988574='' class='list_item_title'>"
												+ result[i].prod_name
												+ "</p><p data-v-2f988574='' class='list_item_description'>"
												+ price
												+ "원</p><p data-v-2f988574='' class='list_item_description'>"
												+ result[i].grade
												+ "등급</p>"
												+ "</div></div><div data-v-2f988574='' class='list_item_status'><div data-v-2f988574='' class='list_item_column column_secondary'><p data-v-5f36ea36='' data-v-2f988574='' class='secondary_title display_paragraph' style='color: rgba(34, 34, 34, 0.5);'>"
												+ datestatus
												+ "</p></div>"
												+ "<div data-v-2f988574='' class='list_item_column column_secondary'><p data-v-5f36ea36='' data-v-2f988574='' class='secondary_title display_paragraph' style='color: rgba(34, 34, 34, 0.5);'>"
												+ result[i].sale_date
												+ "</p></div>"
												+ "<div data-v-2f988574='' class='list_item_column column_last'><p data-v-5f36ea36='' data-v-2f988574='' class='last_title display_paragraph' style='color: rgb(34, 34, 34);'>"
												+ status
												+ "</p><p data-v-5f36ea36='' data-v-2f988574='' class='last_description display_paragraph'></p></div></div>"
												+ "</div></div></div></div></a>";
									}
								}
								$(".tab_on .count").html(result.length);
								console.log($(".tab_on count").html());
								$(".purchase_list").html(row);

							},
							error : function(e) {
								alert('조회 실패');
							}
						});
			}
			;
			/*
			 * Author : 남승현
			 * 기능 : 조회 버튼 클릭 시 시작일과 종료일에 대한 유효성 검사 및 조회 실행
			 */
			$("#search_period").click(function() {
				const start_date = date_add($("#dateStart").val(), 0);
				const end_date = date_add($("#dateEnd").val(), 1);

				console.log(isUsed);
				console.log(start_date);
				console.log(end_date);
				var txt = '주문날짜';
				if (start_date >= end_date) {
					showToast("종료일이 시작일보다 앞일 수 없습니다.", -1);
					return;
				}

				if (isUsed == 0) {
					console.log("여기는 팔거");
					searchSelling(start_date, end_date);
				} else {
					console.log("여기는 다판거")
					searchSelled(start_date, end_date);
				}

			});
			/*
			 * Author : 남승현
			 * 기능 : 구매내역 조회 중, 신상품 조회탭과 중고상품 조회탭에 대한 클릭 이벤트
			 */
			$(".tab_item")
					.on(
							"click",
							function(e) {
								$(".tab_item").attr("class", "tab_item");
								$(".count").html("0");
								isUsed = $(this).data("value");
								console.log(isUsed);
								$(this).attr("class", "tab_item tab_on");
								var row = "<div data-v-e2f6767a='' data-v-0d2f7c95='' class='empty_area'><p data-v-e2f6767a='' class='desc'>거래 내역이 없습니다.</p></div>";
								$(".purchase_list").html(row);

							});
			$(".tab_link").on("click", function(e) {
				e.preventDefault();
			});
			$("#search_period").click();
		})
	</script>
</body>
</html>