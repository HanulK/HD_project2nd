<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>KABART</title>
<script type="text/javascript" src="/resources/js/toastmsg.js" defer></script>
</script>
</head>
<body>
	<div tableindex="0" class="wrap win_os" data-v-3007c576>
		<jsp:include page="includes/header.jsp"></jsp:include>
		<div data-v-3007c576="" class="container help">
			<input type="hidden" name="${_csrf.parameterName }"
				value="${_csrf.token }" />
			<div class="content lg">
				<div class="help_area">
					<div>
						<h2 class="help_title">비밀번호 찾기</h2>
						<div class="help_notice">
							<p class="notice_txt">
								가입 시 등록하신 아이디와 이메일을 입력하시면,<br>이메일로 임시 비밀번호를 전송해 드립니다.
							</p>
						</div>
						<div data-v-1c44afeb="" class="input_box">
							<h3 data-v-1c44afeb="" class="input_title">아이디</h3>
							<div data-v-1c44afeb="" class="input_item">
								<input data-v-1c44afeb="" type="tel" placeholder="가입하신 아이디"
									autocomplete="off" class="input_txt" id="id" required
									onkeyup="checkedInput()">
							</div>
							<p data-v-1c44afeb="" class="input_error">휴대폰 번호를 정확히 입력해주세요.</p>
						</div>
						<div data-v-1c44afeb="" class="input_box">
							<h3 data-v-1c44afeb="" class="input_title">이메일 주소</h3>
							<div data-v-1c44afeb="" class="input_item">
								<input data-v-1c44afeb="" type="email"
									placeholder="예) kabart@kabart.co.kr" autocomplete="off"
									class="input_txt" id="email" required onkeyup="checkedInput()">
							</div>
						</div>
						<div class="help_btn_box">
							<a data-v-575aff82="" disabled="disabled" href="#"
								class="btn full solid disabled" id="btn-next"> 이메일 발송하기 </a>
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
	</div>
	<script type="text/javascript">
		function checkedInput() {
			let id = $("#id").val();
			let email = $("#email").val();

			if (id != "" && email != "") {
				$("#btn-next").attr("class", "btn full solid");
				$("#btn-next").attr("disabled", false);
			} else {
				$("#btn-next").attr("class", "btn full solid disabled");
				$("#btn-next").attr("disabled", true);
			}
		}

		$("#btn-next").on("click", function() {
			var csrfHeaderName = "${_csrf.headerName}";
			var csrfToeknValue = "${_csrf.token}";

			$.ajax({
				url : "/kabart/findPW",
				type : "POST",
				data : JSON.stringify({
					id : $("#id").val(),
					email : $("#email").val()
				}),
				contentType : "application/json",
				dataType : "json",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfToeknValue);
				},
				success : function(result) {
					showToast(result.msg, result.result);
					setTimeout(() => location.href = "/kabart/login", 2000);
				}
			});
		});
	</script>
</body>
</html>