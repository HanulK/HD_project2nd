<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>KABART</title>
<script type="text/javascript">
	function checkedInput() {
		let name = $("#username").val();
		let pwd = $("#password").val();

		if (name != "" && pwd != "") {
			$("#btn-next").attr("class", "btn full solid");
		}
	}
</script>
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
									<input type="text" name="username" id="username"
										autocomplete="off" class="input_txt" data-v-1c44afeb=""
										required onkeypress="checkedInput()">
								</div>
							</div>
							<div class="input_box has_button" data-v-1c44afeb=""
								data-v-464f7370="">
								<h3 class="input_title" data-v-1c44afeb="" data-v-464f7370="">비밀번호</h3>
								<div class="input_item" data-v-1c44afeb="">
									<input class="input_txt" type="password" name="password"
										id="password" placeholder="" autocomplete="off"
										data-v-1c44afeb="" required onkeypress="checkedInput()">
								</div>
							</div>
							<div class="checkbox">
								<label> <input name="remember-me" type="checkbox">
									자동 로그인
								</label>
							</div>
							<div class="login_btn_box" data-v-464f7370="">
								<a disabled="disabled" href="#" class="btn full solid disabled"
									id="btn-next" data-v-6e799857="" data-v-464f7370=""> 로그인 </a>
							</div>
							<ul class="look_box" data-v-464f7370="">
								<li class="look_list" data-v-464f7370=""><a
									href="/kabart/join" class="look_link" data-v-464f7370="">회원
										가입</a></li>
								<li class="look_list" data-v-464f7370=""><a
									href="/kabart/findId" class="look_link" data-v-464f7370="">
										아이디 찾기 </a></li>
								<li class="look_list" data-v-464f7370=""><a
									href="/kabart/findPW" class="look_link" data-v-464f7370="">
										비밀번호 찾기 </a></li>
							</ul>
							<div class="social_login" data-v-464f7370=""></div>
						</fieldset>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
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
	$(document).ready(function() {
		var error = '${error_msg}';
		checkID(error);

		function checkID(error) {
			if (error !== '') {
				alert(error);
			}
		}

		$("#btn-next").on("click", function(e) {
			e.preventDefault();
			let class_name = $("#btn-next").attr("class");

			if (class_name === "btn full solid") {
				$("#btn-next").attr("href", "/kabart/login");
				$("form").submit();
			}
		});
	});
</script>