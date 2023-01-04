<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>KABART</title>
<script type="text/javascript">
	function checkedInput(check_id) {
		if (check_id.value.length > 9 && check_id.value.length < 12) {
			$(".btn").attr("class", "btn full solid");
		} else {
			$(".btn").attr("class", "btn full solid disabled");
		}
	}
	
</script>
</head>
<body>
	<div tableindex="0" class="wrap win_os" data-v-3007c576>
		<jsp:include page="includes/header.jsp"></jsp:include>
		<div data-v-3007c576="" class="container help">
			<div class="content lg">
				<div class="help_area">
					<div>
						<h2 class="help_title">아이디 찾기</h2>
						<div class="help_notice">
							<p class="notice_txt">
								가입 시 등록한 휴대폰 번호를 입력하면<br> 아이디를 알려드립니다.
							</p>
							<dl id="notice_result">
								<dt class="notice_title"> ID </dt>
								<dd class="notice_id"></dd>
							</dl>
						</div>
						<div data-v-1c44afeb="" class="input_box">
							<h3 data-v-1c44afeb="" class="input_title">휴대폰 번호</h3>
							<div data-v-1c44afeb="" class="input_item">
								<input data-v-1c44afeb="" type="number" placeholder="가입하신 휴대폰 번호"
									autocomplete="off" class="input_txt" onkeyup="checkedInput(this)">
							</div>
						</div>
						<div class="help_btn_box">
							<a data-v-575aff82="" disabled="disabled" href="#"
								class="btn full solid disabled" id="btn-find"> 아이디 찾기 </a>
						</div>
					</div>
					<!---->
				</div>
			</div>
			<div data-v-e5d8b6f4="" class="banner_bottom lg">
				<!---->
			</div>
			<!---->
		</div>
		<%@include file="includes/footer.jsp"%>
	</div>
	<script type="text/javascript">
		$("#btn-find")
				.on(
						"click",
						function(e) {
							let phone = $(".input_txt").val();
							var csrfHeaderName = "${_csrf.headerName}";
							var csrfToeknValue = "${_csrf.token}";

							$.ajax({
										url : "${contextPath}/kabart/findId.do",
										type : "POST",
										data : {
											phone : phone
										},
										dataType : "text",
										beforeSend : function(xhr) {
											xhr.setRequestHeader(
													csrfHeaderName,
													csrfToeknValue);
										},
										success : function(result) {
											console.log(result);
											$(".help_title").attr("class",
													"help_title success");
											$(".help_title")
													.html(
															"<span>아이디 찾기에</span> <span> 성공하였습니다.</span>");

											$(".input_box").hide();
											$("#btn-find").html(" 로그인 ");
											$("#btn-find").attr("href", "/kabart/login");
											$(".help_notice").attr("class", "success_notice");
											$(".notice_txt").hide();
											$("#notice_result").show();
 											$(".notice_id").html(result);
										},
										error : function() {
											alert("서버 요청 실패");
										}
									}); // end ajax
						});
	</script>
</body>
</html>