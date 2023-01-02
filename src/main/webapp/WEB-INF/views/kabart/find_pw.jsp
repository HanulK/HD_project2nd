<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>KABART</title>
<script type="text/javascript">
function checkedInput(check_id) {
	if (check_id.value.length > 9 && check_id.value.length < 12){
		$(".btn").attr("class", "btn full solid");	
	} else {
		$(".btn").attr("class", "btn full solid disabled");	
// 	}
}
</script>
</head>
<body>
	<div tableindex="0" class="wrap win_os" data-v-3007c576>
		<jsp:include page="includes/header.jsp"></jsp:include>
		<div data-v-3007c576="" data-v-464f7370="" class="container help">
			<div class="content lg" data-v-464f7370="">
				<div class="help_area">
					<div>
						<h2 class="help_title">비밀번호 찾기</h2>
						<div class="help_notice">
							<p class="notice_txt">
								가입 시 등록하신 휴대폰 번호와 이메일을 입력하시면,<br>휴대폰으로 임시 비밀번호를 전송해 드립니다.
							</p>
						</div>
						<div class="input_box" data-v-1c44afeb="">
							<h3 class="input_title" data-v-1c44afeb="">휴대폰 번호</h3>
							<div class="input_item" data-v-1c44afeb="">
								<input type="tel" placeholder="가입하신 휴대폰 번호" autocomplete="off"
									value="" class="input_txt" data-v-1c44afeb="">
							</div>
							<p class="input_error" data-v-1c44afeb="">휴대폰 번호를 정확히 입력해주세요.</p>
						</div>
						<div class="input_box" data-v-1c44afeb="">
							<h3 class="input_title" data-v-1c44afeb="">이메일 주소</h3>
							<div class="input_item" data-v-1c44afeb="">
								<input type="email" placeholder="예) kream@kream.co.kr"
									autocomplete="off" value="" class="input_txt"
									data-v-1c44afeb="">
							</div>
							<p class="input_error" data-v-1c44afeb="">이메일 주소를 정확히 입력해주세요.</p>
						</div>
						<div class="help_btn_box">
							<a disabled="disabled" href="#" class="btn full solid disabled"
								data-v-575aff82=""> 문자 발송하기 </a>
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
	$("#btn-find").on("click", function(e) {
		let phone = $(".input_txt").val();
		//alert(phone);
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfToeknValue = "${_csrf.token}";
		
 		$.ajax({
			url : "${contextPath}/kabart/findId.do",
			type : "POST",
			data : {
				phone : phone
			},
			dataType : "text",
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfToeknValue);
			},
			success : function(result) {
				console.log(result);
				//alert("성공");
			},
			error : function() {
				alert("서버 요청 실패");
			}
		}); // end ajax
		
	});
	</script>
</body>
</html>