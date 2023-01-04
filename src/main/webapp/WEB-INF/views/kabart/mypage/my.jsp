<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>KREAM | 한정판 거래의 FLEX</title>
</style>

</head>
<body tableindex="0" class="wrap win_os lg" data-v-39b2348a="">
	<jsp:include page="../includes/header.jsp"></jsp:include>
	<div data-v-39b2348a="" class="container my lg">
		<input id="mem_id" type="hidden"
			value='<sec:authentication property="principal.username"/>'>
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
		<div data-v-5419f155="" data-v-39b2348a="" class="content_area">
			<div data-v-5419f155="" class="my_home">
				<div data-v-5acef129="" data-v-5419f155="" class="user_membership">
					<div data-v-5acef129="" class="user_detail">
						<div data-v-5acef129="" class="user_thumb">
							<img data-v-5acef129=""
								src="../../resources/img/blank_profile.4347742.png"
								alt="사용자 이미지" class="thumb_img">
						</div>
						<div data-v-5acef129="" class="user_info">
							<div data-v-5acef129="" class="info_box">
								<strong data-v-5acef129="" class="name"><sec:authentication property="principal.username"/></strong>
								<a data-v-6e799857="" data-v-5acef129="" href="/kabart/mypage/profile"
									class="btn btn outlinegrey small" type="button"> 프로필 수정 </a>
							</div>
						</div>
					</div>
				</div>
				<div data-v-6752ceb2="" data-v-5419f155="" class="my_home_title">
					<h3 data-v-6752ceb2="" class="title">구매 내역</h3>
					<a data-v-6752ceb2="" href="/kabart/mypage/buying" class="btn_more"><span
						data-v-6752ceb2="" class="btn_txt">더보기</span> <svg
							data-v-6752ceb2="" xmlns="http://www.w3.org/2000/svg"
							class="icon sprite-icons arr-right-gray">
							<use data-v-6752ceb2=""
								href="../resources/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-right-gray"
								xlink:href="../resources/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-right-gray"></use></svg></a>
				</div>
				<div data-v-5419f155="" class="recent_purchase">
					<div data-v-0c307fea="" data-v-5419f155=""
						class="purchase_list_tab">
						<div data-v-0c307fea="" class="tab_item total">
							<a data-v-0c307fea="" href="#" class="tab_link"><dl
									data-v-0c307fea="" class="tab_box">
									<dt data-v-0c307fea="" class="title">전체</dt>
									<dd data-v-0c307fea="" class="count" id="buyTotal">0</dd>
								</dl></a>
						</div>

						<div data-v-0c307fea="" class="tab_item">
							<a data-v-0c307fea="" href="#" class="tab_link"><dl
									data-v-0c307fea="" class="tab_box">
									<dt data-v-0c307fea="" class="title">상품</dt>
									<dd data-v-0c307fea="" class="count" id="buyNew">0</dd>
									<!---->
								</dl></a>
						</div>
						<div data-v-0c307fea="" class="tab_item">
							<a data-v-0c307fea="" href="#" class="tab_link"><dl
									data-v-0c307fea="" class="tab_box">
									<dt data-v-0c307fea="" class="title">중고 상품</dt>
									<dd data-v-0c307fea="" class="count" id="buyUsed">0</dd>
								</dl></a>
						</div>
					</div>
					<div data-v-5419f155="">
						<div data-v-50c8b1d2="" data-v-5419f155=""
							class="purchase_list all bid">
							<!---->
							<!---->
							<!---->
							<!---->
							<!---->
						</div>
						<!---->
					</div>
				</div>
				<div data-v-6752ceb2="" data-v-5419f155="" class="my_home_title">
					<h3 data-v-6752ceb2="" class="title">판매 내역</h3>
					<a data-v-6752ceb2="" href="/kabart/mypage/selling"
						class="btn_more"><span data-v-6752ceb2="" class="btn_txt">더보기</span>
						<svg data-v-6752ceb2="" xmlns="http://www.w3.org/2000/svg"
							class="icon sprite-icons arr-right-gray">
							<use data-v-6752ceb2=""
								href="../resources/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-right-gray"
								xlink:href="../resources/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-right-gray"></use></svg></a>
				</div>
				<div data-v-5419f155="" class="recent_purchase">
					<div data-v-0c307fea="" data-v-5419f155=""
						class="purchase_list_tab sell">
						<div data-v-0c307fea="" class="tab_item total">
							<a data-v-0c307fea="" href="#" class="tab_link"><dl
									data-v-0c307fea="" class="tab_box">
									<dt data-v-0c307fea="" class="title">전체</dt>
									<dd data-v-0c307fea="" class="count" id="sellTotal">0</dd>
								</dl></a>
						</div>

						<div data-v-0c307fea="" class="tab_item">
							<a data-v-0c307fea="" href="#" class="tab_link"><dl
									data-v-0c307fea="" class="tab_box">
									<dt data-v-0c307fea="" class="title">판매 중</dt>
									<dd data-v-0c307fea="" class="count" id="selling">0</dd>
									<!---->
								</dl></a>
						</div>
						<div data-v-0c307fea="" class="tab_item">
							<a data-v-0c307fea="" href="#" class="tab_link"><dl
									data-v-0c307fea="" class="tab_box">
									<dt data-v-0c307fea="" class="title">판매완료</dt>
									<dd data-v-0c307fea="" class="count" id="selled">0</dd>
								</dl></a>
						</div>
					</div>

				</div>

			</div>

		</div>
	</div>
	</div>
	<script>
		function countAll(mem_id,end_date,csrfHeaderName,csrfTokenValue){
			var sellTotal = 0;
			var buyTotal = 0;
			$
			.ajax({
				type : 'post',
				url : '/search/newbuying',
				data : JSON.stringify({
					mem_id : mem_id,
					start_date : "00/01/01",
					end_date : end_date
				}),
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName,
							csrfTokenValue);
				},
				contentType : "application/json",
				success : function(result) {
					buyNew = result.length;
					buyTotal += buyNew;
					$("#buyNew").html(buyNew);
					$("#buyTotal").html(buyTotal);
				},
				error : function(e) {
					alert('조회 실패');
				}
			});

			$
			.ajax({
				type: 'post',							
				url : '/search/usedbuying',
				data : JSON.stringify({
					mem_id : mem_id,
					start_date :  "00/01/01",
					end_date : end_date
				}),
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName,
							csrfTokenValue);
				},
				contentType : "application/json",
				success : function(result) {
					buyUsed = result.length;
					buyTotal += buyUsed;
					$("#buyUsed").html(buyUsed);
					$("#buyTotal").html(buyTotal);
				},
				error : function(e) {
					alert('조회 실패');
				}
			});
			$
			.ajax({
				type : 'post',
				url : '/search/selling',
				data : JSON.stringify({
					mem_id : mem_id,
					start_date : '00/01/01',
					end_date : end_date
				}),
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName,
							csrfTokenValue);
				},
				contentType : "application/json",
				success : function(result) {
					sellingUsed = result.length;
					sellTotal += sellingUsed; 
					$("#selling").html(sellingUsed);
					$("#sellTotal").html(sellTotal);
					
				},
				error : function(e) {
					alert('조회 실패');
				}
			});


			$
			.ajax({
				type : 'post',
				url : '/search/selled',
				data : JSON.stringify({
					mem_id : mem_id,
					start_date : '00/01/01',
					end_date : end_date
				}),
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName,
							csrfTokenValue);
				},
				contentType : "application/json",
				success : function(result) {
					selledUsed = result.length;
					sellTotal += selledUsed; 
					$("#selled").html(selledUsed);
					$("#sellTotal").html(sellTotal);

				},
				error : function(e) {
					alert('조회 실패');
				}
			});
			
			

			
		}
		$(function() {
			var buyNew = 0;
			var buyUsed = 0;
			var sellingUsed = 0;
			var selledUsed = 0;
			
			var mem_id = $("#mem_id").val();
			var csrfHeaderName = "${_csrf.headerName}";
			var csrfTokenValue = "${_csrf.token}";
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
			const end_date = date_add(new Date().toISOString(),1);
			countAll(mem_id,end_date,csrfHeaderName,csrfTokenValue);
		

		})
	</script>
	<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>
</html>