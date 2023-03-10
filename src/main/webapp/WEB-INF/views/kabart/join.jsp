<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>KABART</title>
<script type="text/javascript" src="/resources/js/toastmsg.js" defer></script>
<script type="text/javascript">
/* writer : hanul 
 * 회원가입 검사, 필수 항목들이 채워지지 않을 경우 혹은 항목의 입력값 길이가 맞지 않은 경우 
 * 회원 가입 버튼 비활성화되어 있음*/
function checkedInput() {
	let mem_id = $("input[name=mem_id]").val();
	let mem_pw = $("input[name=mem_pw]").val();
	let mem_name = $("input[name=mem_name]").val();
	let birth = $("input[name=birth]").val();
	let family_num = $("input[name=family_num]").val();
	let phone = $("input[name=phone]").val();
	let address = $("input[name=address]").val();
	let address_detail = $("input[name=address_detail]").val();
	
  	if (mem_id != "" && mem_pw != "" && mem_name != "" && birth.length == 8 
			&& family_num > 0 && phone.length > 9 && address != "" && address_detail != "") {
		console.log("check!");
		$("#btn-next").attr("class", "btn full solid");	
		$("#btn-next").attr("disabled", false);
	} else {
		$("#btn-next").attr("class", "btn btn_join full solid disabled");
		$("#btn-next").attr("disabled", true);
	}
}
</script>
</head>
<body tableindex="0" class="wrap win_os" data-v-3007c576>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div class="container join" data-v-429a8655="" data-v-3007c576="">
		<div class="content lg" data-v-429a8655="">
			<div class="join_area" data-v-429a8655="">
				<h2 class="join_title" data-v-429a8655="">회원가입</h2>
				<form class="signUp-form" method="post" action="/kabart/join"
					name="signupForm">
					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }" />

					<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
						<span>
							<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">아이디</h3>
							<input type="button" id="id_check_button" onclick="valid_id_check()"
							value="ID 중복 확인"><br>
						</span>
						<div>
							<div class="input_item" data-v-1c44afeb="">
								<div>
									<input name="mem_id" placeholder="예) kabart24"
										autocomplete="off" value="" class="input_txt"
										data-v-1c44afeb="" required onkeyup="checkedInput()">
								</div>
								<p class="input_error" id="feedback" data-v-1c44afeb="" data-v-429a8655=""></p>
							</div>
						</div>
					</div>
					<div class="input_box has_button" data-v-1c44afeb=""
						data-v-429a8655="">
						<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">비밀번호</h3>
						<div class="input_item" data-v-1c44afeb="">
							<input type="password" name="mem_pw0" autocomplete="off" value=""
								class="input_txt" data-v-1c44afeb="" required>
						</div>
					</div>
					<div class="input_box has_button" data-v-1c44afeb=""
						data-v-429a8655="">
						<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">비밀번호
							확인</h3>
						<div class="input_item" data-v-1c44afeb="">
							<input type="password" name="mem_pw" autocomplete="off" value=""
								class="input_txt" data-v-1c44afeb="" required
								onkeyup="checkedInput()">
						</div>
						<p class="input_error_msg" data-v-1c44afeb="" data-v-429a8655=""></p>
					</div>
					<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
						<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">이름</h3>
						<div class="input_item" data-v-1c44afeb="">
							<input type="text" placeholder="예) 카바트" name="mem_name"
								autocomplete="off" value="" class="input_txt" data-v-1c44afeb=""
								required onkeyup="checkedInput()">
						</div>
					</div>
					<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
						<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">생년월일</h3>
						<div class="input_item" data-v-1c44afeb="">
								<input name="birth" type="number" maxlength="8" oninput="maxLengthCheck(this)" placeholder="예) 19980120" autocomplete="off"
								value="" class="input_txt" data-v-1c44afeb="" required
								 onkeyup="checkedInput()">
						</div>
						<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
					</div>
					<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
						<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">성별</h3>
						<div class="input_item" data-v-1c44afeb="">
							<select name="gender" class="input_txt" id="gender">
								<option value="M">남성</option>
								<option value="W">여성</option>
							</select>
						</div>
						<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
					</div>

					<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
						<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">가구원
							수</h3>
						<div class="input_item" data-v-1c44afeb="">
							<input name="family_num" type="number" placeholder="예) 4" autocomplete="off"
								value="" class="input_txt" data-v-1c44afeb="" required
								onkeyup="checkedInput()">
						</div>
						<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
					</div>
					<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
						<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">휴대폰
							번호</h3>
						<div class="input_item" data-v-1c44afeb="">
							<input name="phone" type="number" maxlength="11" oninput="maxLengthCheck(this)" placeholder="예) 01012345678"
								autocomplete="off" value="" class="input_txt" data-v-1c44afeb=""
								required onkeyup="checkedInput()">
						</div>
						<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
					</div>
					<div>
						<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
							<span>
								<h3 class="input_title ess" data-v-1c44afeb=""
									data-v-429a8655="">주소</h3> <input type="button"
								id="addr_button" onclick="sample6_execDaumPostcode()"
								value="주소 찾기"><br>
							</span>
							<div>
								<div class="input_item" data-v-1c44afeb="">
									<div>
										<input name="user_address_num" autocomplete="off" value=""
											class="input_txt" data-v-1c44afeb="" id="sample6_postcode"
											placeholder="우편번호" readonly="readonly" required>
									</div>

								</div>
								<div class="input_item" data-v-1c44afeb="">
									<div>
										<input name="address" autocomplete="off" value=""
											class="input_txt" data-v-1c44afeb="" id="sample6_address"
											placeholder="주소" readonly="readonly" required
											onkeyup="checkedInput()">
									</div>

								</div>
								<div class="input_item" data-v-1c44afeb="">
									<div>
										<input name="address_detail" autocomplete="off" value=""
											class="input_txt" data-v-1c44afeb=""
											id="sample6_detailAddress" placeholder="상세주소" required
											onkeyup="checkedInput()">
									</div>

								</div>
								<div class="input-box">
									<input type="hidden" id="sample6_extraAddress"
										placeholder="참고항목">
								</div>
							</div>
						</div>
					</div>
					<a disabled="disabled" href="#" id="btn-next"
						class="btn btn_join full solid disabled" data-v-6e799857=""
						data-v-429a8655=""> 가입하기 </a>
				</form>
			</div>
		</div>
		<div class="banner_bottom lg" data-v-11ddc032="" data-v-429a8655="">
			<!---->
		</div>
		<!---->
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
	<div data-v-3007c576="">
			<!---->
			<div id="toast" class="toast md" data-v-66ae1b7c="" >
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
		
	
	
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script type="text/javascript">
	$("#btn-next").on("click", function(e) {
		e.preventDefault();
		let class_name = $("#btn-next").attr("class");
		
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfToeknValue = "${_csrf.token}";
		
		/* writer : hanul 
		 * 회원 가입 action으로 POST
		 * 결과를 toast로 보여줌 */
 		$.ajax({
			url : "${contextPath}/kabart/join",
			type : "POST",
			data : JSON.stringify({
				mem_id : $("input[name=mem_id]").val(),
				mem_pw : $("input[name=mem_pw]").val(),
				mem_name : $("input[name=mem_name]").val(),
				birth : $("input[name=birth]").val(),
				family_num : $("input[name=family_num]").val(),
				phone : $("input[name=phone]").val(),
				address : $("input[name=address]").val(),
				address_detail : $("input[name=address_detail]").val(),
				gender : $("#gender").val()
			}),
			contentType : "application/json",
			dataType : "json",
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfToeknValue);
			},
			success : function(result) {
				location.href = "/kabart/home";
				showToast("회원 가입을 완료하였습니다.", 1);
			},
			error : function(e) {
				console.log(e);
				showToast("회원 가입에 문제가 발생하였습니다.", 0);
			}
		}); // end ajax 
	});
	
	function valid_id_check() {
		let mem_id = $("input[name=mem_id]").val();
		console.log(mem_id);
		
		if (mem_id == ""){
			$("#feedback").html("사용 불가능한 ID 입니다.");
			$("#feedback").attr("style", "display:block; color:red");
			return;
		}
		
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfToeknValue = "${_csrf.token}";
		
		/* writer : hanul 
		 * 아이디 중복 검사 action으로 POST */
		$.ajax({
			url : "${contextPath}/kabart/idCheck.do",
			type : "POST",
			data : {
				new_id : mem_id
			},
			dataType : "json",
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfToeknValue);
			},
			success : function(result) {
				if (result == 1){
					$("#feedback").html("이미 사용중인 ID 입니다.");
					$("#feedback").attr("style", "display:block; color:red");
				} else {
					$("#feedback").html("사용 가능한 ID 입니다.");
					$("#feedback").attr("style", "display:block;");
				}
			},
			error : function() {
				alert("서버 요청 실패");
			}
		}); // end ajax
		
	}
	
	/* writer : hanul 
	 * 생년월일 길이 체크 */
	function maxLengthCheck(birth) {
		if (birth.value.length > birth.maxLength) {
			birth.value = birth.value.slice(0, birth.maxLength);
		}
	}
	
	/* writer : hanul 
	 * 비밀번호 확인 기능 */
	$(document).ready(function(){
		$("input[name=mem_pw]").on("keyup", function() {
			$(".input_error_msg").html("비밀번호가 일치 하지 않습니다.");
			$(".input_error_msg").attr("style", "display:block; color:red");
			
			let pw1 = $("input[name=mem_pw0]").val();
			let pw2 = $("input[name=mem_pw]").val();
			
			if (pw1 === pw2) {
				$(".input_error_msg").html("비밀번호가 일치합니다.");
				$(".input_error_msg").attr("style", "display:block;");
			}
		})
	});
	</script>


	<script>
	
		/*동적으로 form 태그를 생성해서 데이터를 넘기는 과정*/
		function order() {
			var tag_postcode = $('#sample6_postcode').val();
			var tag_address = $('#sample6_address').val();
			var tag_detailAddress = $('#sample6_detailAddress').val();
			var total_address = tag_address + " " + tag_detailAddress;
			console.log(tag_postcode);
			console.log(tag_address);
			console.log(tag_detailAddress);
			console.log(total_address);

			if (tag_postcode == '') {
				alert("우편번호를 입력하세요!")
				return;
			}

			if (tag_address == '') {
				alert("주소를 입력하세요!")
				return;
			}

			if (tag_detailAddress == '') {
				alert("상세주소를 입력하세요!")
				return;
			}

			var data_form = $('<form></form>');

			data_form.attr("name", "test_form");
			data_form.attr("method", "POST");
			data_form.attr("action", "${contextPath}/kabart/join");

			data_form.append($('<input/>', {
				type : 'hidden',
				name : 'postCode',
				value : tag_postcode
			}));
			data_form.append($('<input/>', {
				type : 'hidden',
				name : 'address',
				value : total_address
			}));

			data_form.appendTo('body');

			data_form.submit();
		}
	</script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
	</script>
</body>
</html>