<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KABART</title>
</head>
<body tableindex="0" class="wrap win_os lg" data-v-3007c576>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div class="container join" data-v-429a8655="" data-v-3007c576="">
		<div class="content lg" data-v-429a8655="">
			<div class="join_area" data-v-429a8655="">
				<h2 class="join_title" data-v-429a8655="">회원가입</h2>
				<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
					<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">아이디</h3>
					<div class="input_item" data-v-1c44afeb="">
						<input name="userId" placeholder="예) cabart24" autocomplete="off"
							value="" class="input_txt" data-v-1c44afeb="">
					</div>
					<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
				</div>
				<!---->
				<div class="input_box has_button" data-v-1c44afeb=""
					data-v-429a8655="">
					<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">비밀번호</h3>
					<div class="input_item" data-v-1c44afeb="">
						<input type="password" name="userPw"
							placeholder="영문, 숫자, 특수문자 조합 8-16자" autocomplete="off" value=""
							class="input_txt" data-v-1c44afeb="">
					</div>
					<p class="input_error" data-v-1c44afeb="" data-v-429a8655="">
						영문, 숫자, 특수문자를 조합하여 입력해주세요. (8-16자)</p>
				</div>
				<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
					<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">이름</h3>
					<div class="input_item" data-v-1c44afeb="">
						<input type="text" placeholder="예) 카바트" name="userName"
							autocomplete="off" value="" class="input_txt" data-v-1c44afeb="">
					</div>
					<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
				</div>
				<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
					<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">생년월일</h3>
					<div class="input_item" data-v-1c44afeb="">
						<input name="userBirth" placeholder="예) 980120" autocomplete="off"
							value="" class="input_txt" data-v-1c44afeb="">
					</div>
					<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
				</div>
				<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
					<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">성별</h3>
					<div class="input_item" data-v-1c44afeb="">
						<select name="userGender" class="input_txt">
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
						<input name="userFamilyNum" placeholder="예) 4" autocomplete="off"
							value="" class="input_txt" data-v-1c44afeb="">
					</div>
					<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
				</div>
				<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
					<h3 class="input_title ess" data-v-1c44afeb="" data-v-429a8655="">휴대폰
						번호</h3>
					<div class="input_item" data-v-1c44afeb="">
						<input name="userPhone" placeholder="예) 01012345678"
							autocomplete="off" value="" class="input_txt" data-v-1c44afeb="">
					</div>
					<p class="input_error" data-v-1c44afeb="" data-v-429a8655=""></p>
				</div>
				<div>
					<div class="input_box" data-v-1c44afeb="" data-v-429a8655="">
						<span><h3 class="input_title ess" data-v-1c44afeb=""
								data-v-429a8655="">주소</h3> <input type="button" id="addr_button"
							onclick="sample6_execDaumPostcode()" value="주소 찾기"><br></span>
						<div>
							<div class="input_item" data-v-1c44afeb="">
								<div>
									<input name="userPhone" autocomplete="off" value=""
										class="input_txt" data-v-1c44afeb="" id="sample6_postcode"
										placeholder="우편번호" readonly="readonly">
								</div>

							</div>
							<div class="input_item" data-v-1c44afeb="">
								<div>
									<input name="userPhone" autocomplete="off" value=""
										class="input_txt" data-v-1c44afeb="" id="sample6_address"
										placeholder="주소" readonly="readonly">
								</div>

							</div>
							<div class="input_item" data-v-1c44afeb="">
								<div>
									<input name="userPhone" autocomplete="off" value=""
										class="input_txt" data-v-1c44afeb=""
										id="sample6_detailAddress" placeholder="상세주소"
										>
								</div>

							</div>
							<div class="input-box">
								<input type="hidden" id="sample6_extraAddress"
									placeholder="참고항목">
							</div>
						</div>
					</div>
				</div>
				<a disabled="disabled" href="#"
					class="btn btn_join full solid disabled" data-v-6e799857=""
					data-v-429a8655=""> 가입하기 </a>
			</div>
		</div>
		<div class="banner_bottom lg" data-v-11ddc032="" data-v-429a8655="">
			<!---->
		</div>
		<!---->
	</div>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>


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
			data_form.attr("action", "${contextPath}/Hfashion?command=order");

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
	<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>