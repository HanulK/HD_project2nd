<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>KREAM | 한정판 거래의 FLEX</title>
</head>
<body>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div tabindex="0" class="wrap win_os" data-v-39b2348a="">
				<!---->
				<div data-v-39b2348a="" class="wrap_inner">
					<jsp:include page="../includes/header.jsp"></jsp:include>
				</div>
				<!---->
				<div class="container my lg" data-v-39b2348a="">
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
											data-v-4d11470e="" href="/kabart/mypage/profile" class="menu_link">
												프로필 정보 </a></li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
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
										src="../resources/img/blank_profile.4347742.png" alt="사용자 이미지"
										class="thumb_img">
								</div>
								<div data-v-6dea036d="" class="profile_detail">
									<strong data-v-6dea036d="" class="name">skarns23</strong>
									<div data-v-6dea036d="" class="profile_btn_box"></div>
								</div>
							</div>
							<input data-v-587be1b3="" type="file"
								accept="image/jpeg,image/png" hidden="hidden">
							<canvas data-v-587be1b3="" width="1000" height="1000"
								style="display: none;"></canvas>
							<div data-v-587be1b3="" class="profile_info">
								<div data-v-587be1b3="" class="profile_group">
									<h4 data-v-587be1b3="" class="group_title">사용자 정보</h4>
									<div data-v-587be1b3="" class="unit">
										<h5 data-v-587be1b3="" class="title">아이디</h5>
										<p data-v-587be1b3="" class="desc id">skarns23</p>
									</div>
									<div data-v-587be1b3="" class="modify" style="display: none;">
										<div data-v-1c44afeb="" data-v-587be1b3="" class="input_box">
											<h6 data-v-587be1b3="" data-v-1c44afeb="" class="input_title">이메일
												주소 변경</h6>
											<div data-v-1c44afeb="" class="input_item">
												<input data-v-1c44afeb="" type="email" autocomplete="off"
													class="input_txt" placeholder="s******3@naver.com">
											</div>
											<p data-v-587be1b3="" data-v-1c44afeb="" class="input_error">
											</p>
										</div>
										<div data-v-587be1b3="" class="modify_btn_box">
											<button data-v-6e799857="" data-v-587be1b3="" type="button"
												class="btn outlinegrey medium" slot="button">취소</button>
											<button data-v-6e799857="" data-v-587be1b3=""
												disabled="disabled" type="button"
												class="btn solid medium disabled" slot="button">인증
												메일 발송</button>
										</div>
									</div>
									<div data-v-587be1b3="" class="unit">
										<h5 data-v-587be1b3="" class="title">비밀번호</h5>
										<p data-v-587be1b3="" class="desc password">●●●●●●●●●</p>
										<button data-v-6e799857="" data-v-587be1b3="" type="button"
											class="btn btn_modify outlinegrey small">변경</button>
									</div>
									<div data-v-587be1b3="" class="modify" style="display: none;">
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
											<button data-v-6e799857="" data-v-587be1b3="" type="button"
												class="btn outlinegrey medium" slot="button">취소</button>
											<button data-v-6e799857="" data-v-587be1b3=""
												disabled="disabled" type="button"
												class="btn solid medium disabled" slot="button">저장
											</button>
										</div>
									</div>
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
									</div>
									<div data-v-587be1b3="" class="unit">
										<h5 data-v-587be1b3="" class="title">성별</h5>
										<p data-v-587be1b3="" class="desc gender">중성</p>
									</div>
								</div>
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

									<div data-v-1a009402="" data-v-feb03f9c="" data-v-587be1b3=""
										class="layer lg" style="display: none;">
										<div data-v-1a009402="" class="layer_container">
											<a data-v-feb03f9c="" data-v-1a009402=""
												class="btn_layer_close"><svg data-v-feb03f9c=""
													data-v-1a009402="" xmlns="http://www.w3.org/2000/svg"
													class="ico-close icon sprite-icons">
													<use data-v-feb03f9c="" data-v-1a009402=""
														href="../resources/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-close"
														xlink:href="../resources/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-close"></use></svg></a>
											<div data-v-1a009402="" class="layer_header">
												<h2 data-v-feb03f9c="" data-v-1a009402="" class="title">사이즈
													선택</h2>
											</div>
											<div data-v-1a009402="" class="layer_content">
												<div data-v-feb03f9c="" data-v-1a009402=""
													class="size_list_area">
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">220</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">225</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">230</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">235</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">240</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">245</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">250</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium on"><span
															data-v-1b874462="" class="info_txt">255</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">260</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">265</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">270</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">275</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">280</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">285</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">290</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">295</span></a>
													</div>
													<div data-v-1b874462="" data-v-feb03f9c=""
														class="size_item" data-v-1a009402="">
														<a data-v-6e799857="" data-v-1b874462="" href="#"
															class="btn outlinegrey medium"><span
															data-v-1b874462="" class="info_txt">300</span></a>
													</div>
												</div>
												<div data-v-feb03f9c="" data-v-1a009402="" class="layer_btn">
													<a data-v-6e799857="" data-v-feb03f9c="" href="#"
														class="btn solid medium" data-v-1a009402=""> 확인 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<a data-v-587be1b3="" href="/my/withdrawal"
									class="btn_withdrawal">회원 탈퇴</a>
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
		</div>
	</div>


	<link href="../resources/css/4688896.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/1e20f03.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/30e2c3c.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/ed8e821.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/c3e0280.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/24dfaf3.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/174c879.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/6c311e9.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/97ccca4.css" rel="stylesheet"
		type="text/css">
	<link href="../resources/css/0d0d927.css" rel="stylesheet"
		type="text/css">
</body>
</html>