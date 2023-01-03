<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>KABART</title>
</head>
<body>
	<div tabindex="0" class="wrap win_os" data-v-39b2348a="">
		<div data-v-39b2348a="" class="wrap_inner">
			<jsp:include page="../includes/header.jsp"></jsp:include>
		</div>
		<input id="mem_id" type="hidden"
			value='<sec:authentication property="principal.username"/>'>
		<!---->
		<div class="container my lg" data-v-39b2348a="">
			<!-- side nav bar -->
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
			<!-- end side nav bar -->
			<div data-v-587be1b3="" data-v-39b2348a="" class="content_area">
				<div data-v-587be1b3="" class="my_profile">
					<div data-v-88eb18f6="" data-v-587be1b3=""
						class="content_title border">
						<div data-v-88eb18f6="" class="title">
							<h3 data-v-88eb18f6="">프로필 정보</h3>
							<!---->
						</div>
						<!---->
					</div>
					<div data-v-6dea036d="" data-v-587be1b3="" class="user_profile">
						<div data-v-6dea036d="" class="profile_thumb">
							<img data-v-6dea036d=""
								src="../../resources/img/blank_profile.4347742.png"
								alt="사용자 이미지" class="thumb_img">
						</div>
						<div data-v-6dea036d="" class="profile_detail">
							<strong data-v-6dea036d="" class="name">${member.mem_id }</strong>
							<div data-v-6dea036d="" class="profile_btn_box"></div>
						</div>
					</div>
					<input data-v-587be1b3="" type="file" accept="image/jpeg,image/png"
						hidden="hidden">
					<canvas data-v-587be1b3="" width="1000" height="1000"
						style="display: none;"></canvas>
					<div data-v-587be1b3="" class="profile_info">
						<!-- 로그인 정보 -->
						<div data-v-587be1b3="" class="profile_group">
							<h4 data-v-587be1b3="" class="group_title">로그인 정보</h4>
							<div data-v-587be1b3="" class="unit" style="">
								<h5 data-v-587be1b3="" class="title">아이디</h5>
								<p data-v-587be1b3="" class="desc email">${member.mem_id }</p>
							</div>
							<div data-v-587be1b3="" class="unit" style="" id="origin_pw">
								<h5 data-v-587be1b3="" class="title">비밀번호</h5>
								<p data-v-587be1b3="" class="desc password">●●●●●●●●●</p>
								<button data-v-575aff82="" data-v-587be1b3="" type="button" id="btn_change_pw"
									class="btn btn_modify outlinegrey small">변경</button>
							</div>
							<div data-v-587be1b3="" class="modify" style="display: none;" id="change_pw">
								<h5 data-v-587be1b3="" class="title">비밀번호 변경</h5>
								<div data-v-1c44afeb="" data-v-587be1b3="" class="input_box">
									<h6 data-v-587be1b3="" data-v-1c44afeb="" class="input_title">이전
										비밀번호</h6>
									<div data-v-1c44afeb="" class="input_item">
										<input data-v-1c44afeb="" type="password"
											placeholder="영문, 숫자, 특수문자 조합 8-16자" autocomplete="off"
											class="input_txt">
									</div>
									<p data-v-587be1b3="" data-v-1c44afeb="" class="input_error">
										영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
								</div>
								<div data-v-1c44afeb="" data-v-587be1b3="" class="input_box">
									<h6 data-v-587be1b3="" data-v-1c44afeb="" class="input_title">새
										비밀번호</h6>
									<div data-v-1c44afeb="" class="input_item">
										<input data-v-1c44afeb="" type="password"
											placeholder="영문, 숫자, 특수문자 조합 8-16자" autocomplete="off"
											class="input_txt">
									</div>
									<p data-v-587be1b3="" data-v-1c44afeb="" class="input_error">
										영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
								</div>
								<div data-v-587be1b3="" class="modify_btn_box">
									<button data-v-575aff82="" data-v-587be1b3="" type="button"
										class="btn outlinegrey medium" slot="button" id="pw_cancle">취소</button>
									<button data-v-575aff82="" data-v-587be1b3=""
										disabled="disabled" type="button"
										class="btn solid medium disabled" slot="button" id="pw_submit">저장</button>
								</div>
							</div>
						</div>
						<!-- end 로그인 정보 -->

						<!-- 개인 정보 -->
						<div data-v-587be1b3="" class="profile_group">
							<h4 data-v-587be1b3="" class="group_title">개인 정보</h4>
							<div data-v-587be1b3="" class="unit">
								<h5 data-v-587be1b3="" class="title">이름</h5>
								<p data-v-587be1b3="" class="desc name">쥑쥑</p>
							</div>
							<div data-v-587be1b3="" class="unit">
								<h5 data-v-587be1b3="" class="title">생년월일</h5>
								<p data-v-587be1b3="" class="desc birth">980120</p>
							</div>

							<div data-v-587be1b3="" class="unit">
								<h5 data-v-587be1b3="" class="title">휴대폰 번호</h5>
								<p data-v-587be1b3="" class="desc">010-5***-*372</p>
								<button data-v-6e799857="" data-v-587be1b3="" type="button"
									class="btn btn_modify outlinegrey small">변경</button>
							</div>

							<div data-v-587be1b3="" class="unit">
								<h5 data-v-587be1b3="" class="title">가구원수</h5>
								<p data-v-587be1b3="" class="desc familyNum">4</p>
								<button data-v-6e799857="" data-v-587be1b3="" type="button"
									class="btn btn_modify outlinegrey small">변경</button>
							</div>
							<div data-v-587be1b3="" class="unit">
								<h5 data-v-587be1b3="" class="title">성별</h5>
								<p data-v-587be1b3="" class="desc gender">중성</p>
							</div>
						</div>
						<!-- end dsa개인 정보 -->
						
						<!-- 배송지 정보 -->
						<div data-v-587be1b3="" class="profile_group">
							<h4 data-v-587be1b3="" class="group_title">배송지 정보</h4>

							<div data-v-587be1b3="" class="unit">
								<h5 data-v-587be1b3="" class="title">주소</h5>
								<p data-v-587be1b3="" class="desc address">혜화 어쩌구 저쩌구</p>
							</div>
							<div data-v-587be1b3="" class="unit">
								<h5 data-v-587be1b3="" class="title">상세주소</h5>
								<p data-v-587be1b3="" class="desc addressDetail">706호호불면은
									구멍이 뚫리는</p>
							</div>
						</div>
						<!-- end 배송지 정보 -->
						<a data-v-587be1b3="" href="/my/withdrawal" class="btn_withdrawal">회원
							탈퇴</a>
					</div>
				</div>
			</div>
		</div>
		<div data-v-39b2348a=""></div>
		<!---->
		<div data-v-39b2348a="">
			<!---->
			<div id="toast" class="toast lg" data-v-66ae1b7c="">
				<div class="wrap" data-v-66ae1b7c="">
					<svg xmlns="http://www.w3.org/2000/svg"
						class="icon sprite-icons toast-icon toast-success"
						data-v-66ae1b7c="">
								<use
							href="../resources/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-toast-success"
							xlink:href="../resources/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-toast-success"
							data-v-66ae1b7c=""></use></svg>
					<div class="toast-content" data-v-66ae1b7c="">
						<p data-v-66ae1b7c="">내용</p>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../includes/footer.jsp"></jsp:include>
	</div>
<script type="text/javascript">
$("#btn_change_pw").on("click", function() {
	$("#origin_pw").attr("style", "display:none");
	$("#change_pw").attr("style", "");
})

$("#pw_cancle").on("click", function() {
	$("#change_pw").find('input[type=password]').each(function(){
		$(this).val('');
		});
	
	$("#origin_pw").attr("style", "");
	$("#change_pw").attr("style", "display:none");
})
</script>

</body>
</html>