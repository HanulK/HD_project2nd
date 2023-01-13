/* writer : hanul 
* 마이페이지 개인 정보 출력 화면에서의 버튼 활성화/비활성화 처리 */

$("#btn_change_pw").on("click", function() {
	$("#origin_pw").attr("style", "display:none");
	$("#change_pw").attr("style", "");
});

$("#pw_cancle").on("click", function() {
	$("#change_pw").find('input[type=password]').each(function(){
		$(this).val('');
		});
	
	$("#origin_pw").attr("style", "");
	$("#change_pw").attr("style", "display:none");
});

$("#btn_change_phone").on("click", function() {
	$("#origin_phone").attr("style", "display:none");
	$("#change_phone").attr("style", "");
});

$("#phone_cancle").on("click", function() {
	$("input[type=number]").val('');
	
	$("#origin_phone").attr("style", "");
	$("#change_phone").attr("style", "display:none");
});

$("#btn_change_familynum").on("click", function() {
	$("#origin_familynum").attr("style", "display:none");
	$("#change_familynum").attr("style", "");
});

$("#familynum_cancle").on("click", function() {
	$("input[type=number]").val('');
	
	$("#origin_familynum").attr("style", "");
	$("#change_familynum").attr("style", "display:none");
});

function checkBtn(obj) {
	let newVal = $(obj).val();
	let idname = $(obj).attr('id');
	
	if (newVal !== '') {
		if (idname == 'new_phone') {
			$("#phone_submit").attr("class", "btn solid medium");
			$("#phone_submit").attr("disabled",false);
		} else if (idname == 'new_fm') {
			$("#familynum_submit").attr("class", "btn solid medium");
			$("#familynum_submit").attr("disabled", false);
		}
	} else{
		if (idname == 'new_phone') {
			$("#phone_submit").attr("disabled",true);
		} else if (idname == 'new_fm') {
			$("#familynum_submit").attr("disabled", true);
		}
	}	
};

function changePwBtn() {
	let old_pw = $("#old_pw").val();	
	let new_pw = $("#new_pw").val();
	
	if (old_pw !== '' && new_pw !== '') {
		$("#pw_submit").attr("class", "btn solid medium");
		$("#pw_submit").attr("disabled",false);
	} else {
		$("#pw_submit").attr("disabled",true);
	}
};