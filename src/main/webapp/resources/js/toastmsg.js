/* writer : hanul 
* 사용자에게 간단한 toast 메세지 전달 */

function showToast(msg, tag) {
	$("#toast").attr("style", "visibility: visible;");
	$(".toast-content").html(msg);
	if (tag === 1) {
		$("#img_icon").attr("src", "/resources/img/check.png");
	} else {
		$("#img_icon").attr("src", "/resources/img/error.png");
	}
	setTimeout(() => $("#toast").attr("style", "visibility: hidden;"), 2000);
}