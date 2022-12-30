<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>KABART</title>
<style type="text/css"> /*# sourceMappingURL=contenteditable.vue.map */
input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 5px 5px 5px 5px;
    padding: initial;
    border: initial;
}
user agent stylesheet
input {
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: fieldtext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-rtl-ordering: logical;
}
</style>

</head>
<body>

	<div tableindex="0" class="wrap win_os" data-v-3007c576>
		<jsp:include page="includes/header.jsp"></jsp:include>
		<div class="container login" data-v-464f7370="" data-v-3007c576="">
			<div class="content lg" data-v-464f7370="">
				<div class="login_area" data-v-464f7370="">
				<form role="form" method='post' action="/login">
				<fieldset>
					<h2 class="login_title" data-v-464f7370="">
						<span class="blind" data-v-464f7370="">KREAM</span>
					</h2>
					<div class="has_button input_box" data-v-1c44afeb=""
						data-v-464f7370="">
						<h3 class="input_title" data-v-1c44afeb="" data-v-464f7370="">아이디</h3>
						<div class="input_item" data-v-1c44afeb="">
							<input type="text" name="username"
								autocomplete="off" class="input_txt" data-v-1c44afeb="">
						</div>
					</div>
					<div class="input_box has_button" data-v-1c44afeb=""
						data-v-464f7370="">
						<h3 class="input_title" data-v-1c44afeb="" data-v-464f7370="">비밀번호</h3>
						<div class="input_item" data-v-1c44afeb="">
							<input class="input_txt" type="password" name="password" placeholder="" autocomplete="off"
								data-v-1c44afeb="">
						</div>
						<p class="input_error" data-v-1c44afeb="" data-v-464f7370="">
							영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
					</div>
					<div class="checkbox">
						<label> <input name="remember-me" type="checkbox">remember me</label>
					</div>
					<div class="login_btn_box" data-v-464f7370="">
						<a disabled="disabled" href="/kabart/login" class="btn full solid disabled" id="btn-next"
							data-v-6e799857="" data-v-464f7370=""> 로그인 </a>
					</div>
					<ul class="look_box" data-v-464f7370="">
						<li class="look_list" data-v-464f7370=""><a href="/kabart/join"
							class="look_link" data-v-464f7370="">회원 가입</a></li>
						<li class="look_list" data-v-464f7370=""><a
							href="/login/find_email" class="look_link" data-v-464f7370="">
								아이디 찾기 </a></li>
						<li class="look_list" data-v-464f7370=""><a
							href="/login/find_password" class="look_link" data-v-464f7370="">
								비밀번호 찾기 </a></li>
					</ul>
					<div class="social_login" data-v-464f7370=""></div>
					</fieldset>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>
				</div>
			</div>
			<div class="banner_bottom lg" data-v-11ddc032="" data-v-464f7370="">
				<!---->
			</div>
		</div>
		<%@include file="includes/footer.jsp"%>
	</div>
</body>
</html>

<script>
$(document).ready(function(){
	
/* 	var error = '${error}';
	checkID(error);
	
	function checkID(error) {
		if(error !== '') {
			alert(error);
		}
	} */
	
	
	$("#btn-next").on("click", function(e) {
		e.preventDefault();
		$("form").submit();
	});
});

</script>