<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
				<c:set var="contextPath" value="${PageContext.request.contextPath}" />
				<!DOCTYPE html>
				<html lang="en">

				<head>
					<meta charset="UTF-8" />
					<meta http-equiv="X-UA-Compatible" content="IE=edge" />
					<meta name="viewport" content="width=device-width, initial-scale=1.0" />
					<%@include file="/WEB-INF/views/kabart/includes/style.jsp" %>
						<title>Product List</title>
				</head>

				<body>
					<form role="form" action='/kabart/usedProduct/used_prod_sell?prod_id=${detail.prod_id}' method="post">
						<input name="prod_id" type="hidden" value="${detail.prod_id}">
						<input name='mem_id' type='hidden' value='<sec:authentication property="principal.username"/>'>
						<div id="__nuxt">
							<!---->
							<div id="__layout">
								<div tabindex="0" class="wrap win_os md" data-v-3007c576="">
									<jsp:include page="../includes/header.jsp"></jsp:include>

									<div data-v-b36cb8c4="" data-v-34b11929="" class="container sell md step-1">
										<!---->
										<div data-v-b36cb8c4="" class="content">


											<div data-v-877ed62a="" data-v-b36cb8c4="" class="buy_immediate">
												<div data-v-19e1c5dc="" class="center">
													<h2 data-v-34b11929="" data-v-19e1c5dc="" class="title1">
														<span data-v-34b11929="" data-v-19e1c5dc="" class="title_txt">판매하기</span>
													</h2>
												</div>
												<div id="selling_date">
													<span>판매일자 : </span>
													<div id="current_date">
														<script>
															date = new Date();
															year = date.getFullYear();
															month = date.getMonth() + 1;
															day = date.getDate();
															document
																.getElementById("current_date").innerHTML = year
																+ "/" + month + "/" + day;
														</script>
													</div>
												</div>
												<div data-v-2b95d831="" data-v-877ed62a="" class="product_info_area">
													<div data-v-2b95d831="" class="product_info">
														<div data-v-09fbcf09="" data-v-2b95d831="" class="product">
															<picture data-v-321fc3b6="" data-v-09fbcf09="" class="picture product_img"> <img alt=""
																	src="<c:out value=" ${detail.img_srcs}" />"
																style="overflow: auto;"></picture>
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
														<div data-v-6e865099="" data-v-3900a1a2="" class="detail_main_title md">
															<div data-v-6e865099="" class="main_title_box1">
																<p data-v-6e865099="" class="title">
																	<c:out value="${detail.prod_name}" />
																</p>
															</div>
														</div>
													</div>
												</div>
												<div data-v-3900a1a2="" class="product_info_wrap1">
													<h3 data-v-52dd777b="" data-v-3900a1a2="" class="detail_title info_title md">상품 정보</h3>
													<div data-v-b809b0a6="" data-v-3900a1a2="" class="detail_product_wrap">
														<dl data-v-b809b0a6="" class="detail_product">
															<div data-v-b809b0a6="" class="detail_box model_num">
																<dt data-v-b809b0a6="" class="product_title">너비</dt>
																<dd data-v-b809b0a6="" class="product_info">
																	<c:out value="${detail.prod_width}" />
																	mm
																</dd>
															</div>
															<div data-v-b809b0a6="" class="detail_box">
																<dt data-v-b809b0a6="" class="product_title">높이</dt>
																<dd data-v-b809b0a6="" class="product_info">
																	<c:out value="${detail.prod_height}" />
																	mm
																</dd>
															</div>
															<div data-v-b809b0a6="" class="detail_box">
																<dt data-v-b809b0a6="" class="product_title">깊이</dt>
																<dd data-v-b809b0a6="" class="product_info">
																	<c:out value="${detail.prod_depth}" />
																	mm
																</dd>
															</div>
														</dl>
													</div>
												</div>
												<div data-v-158ed304="" data-v-877ed62a="" class="price_descision_box">
													<ul data-v-638c1354="" data-v-158ed304="" class="price_list">
														<li data-v-638c1354="" class="list_item">
															<p data-v-638c1354="" class="title">정가</p> <span data-v-638c1354="" class="price">
																<fmt:formatNumber value="${detail.prod_price}" pattern="#,###" />
															</span><span data-v-638c1354="" class="unit">원</span>
														</li>
														<li data-v-638c1354="" class="list_item">


															<p data-v-638c1354="" class="title">검수 등급</p> <select name="grade" id="grade"
																onChange="calculatePay()">
																<option value="ROYAL" selected="">ROYAL</option>
																<option value="PRIME">PRIME</option>
																<option value="STANDARD">STANDARD</option>
															</select>
													</ul>

												</div>
												<!---->
												<div class="used_info">
													<h3 data-v-824856a2="" class="review_title">제품 설명</h3>
													<div class="info_write">
														<textarea class="up_comment" rows="5" name="up_comment"></textarea>
													</div>

												</div>
												<div class="used_info">
													<h3 data-v-824856a2="" class="review_title">상세사진 첨부</h3>
													<div class="info_write">
														<input type="file" name='uploadFile' multiple>
														<div class='uploadResult'>
															<ul>

															</ul>
														</div>
													</div>

												</div>
												<div data-v-14995178="" data-v-877ed62a="" class="buy_total_confirm" is-instant="true">
													<div data-v-158ed304="" class="instant_group">
														<div data-v-15aa5096="" data-v-158ed304="" class="price_now">

															<div data-v-15aa5096="" class="price_warning" style="display: none;">
																<!---->
															</div>
														</div>
														<div data-v-158ed304="" class="price_bind">
															<dl data-v-3a2a7b6b="" data-v-158ed304="" class="price_addition">
																<dt data-v-3a2a7b6b="" class="price_title">
																	<span data-v-3a2a7b6b="">검수비</span>
																	<!---->
																</dt>
																<dd data-v-3a2a7b6b="" class="price_text">무료</dd>
															</dl>
															<dl data-v-3a2a7b6b="" data-v-158ed304=""
																class="price_addition __web-inspector-hide-shortcut__">
																<dt data-v-3a2a7b6b="" class="price_title">
																	<span data-v-3a2a7b6b="">등급 산정 가격</span>
																</dt>
																<dd data-v-3a2a7b6b="" class="price_text">무료</dd>
															</dl>
															<dl data-v-3a2a7b6b="" data-v-158ed304="" class="price_addition">
																<dt data-v-3a2a7b6b="" class="price_title">
																	<span data-v-3a2a7b6b="">배송비</span>
																	<!---->
																</dt>
																<dd data-v-3a2a7b6b="" class="price_text">무료</dd>
															</dl>
														</div>
													</div>
													<div data-v-679d7250="" data-v-14995178="" class="price_total">
														<dl data-v-679d7250="" class="price_box">
															<dt data-v-679d7250="" class="price_title">정산금액</dt>
															<dd data-v-679d7250="" class="price">
																<span data-v-679d7250="" class="amount" id="discount_price"></span><span
																	data-v-679d7250="" class="unit">원</span>
															</dd>
														</dl>
														<span data-v-679d7250="" class="price_warning" style="display: none;"><em
																data-v-679d7250="">주의!
															</em></span>
													</div>
													<div class="submit">
														<div data-v-14995178="" class="btn_confirm">
															<button type="submit" style="width: 100%;">
																<a data-v-6e799857="" data-v-14995178="" href="#" class="btn full solid false"> 판매하기
																</a>
															</button>
														</div>
													</div>
												</div>
											</div>
											<!---->
											<!---->

										</div>
										<!---->
										<!---->
									</div>
									<%@include file="../includes/footer.jsp" %>
								</div>
							</div>
						</div>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

					</form>
				</body>
				<script src="https://code.jquery.com/jquery-3.6.3.js"
					integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
				<script>
					function calculatePay() {
						let grade = document.getElementById("grade").value;
						console.log(grade);
						let discount_price = "${detail.prod_price}";
						console.log(discount_price);
						if (grade === 'ROYAL') {
							discount_price = discount_price - (discount_price * 0.2);
						} else if (grade === 'PRIME') {
							discount_price = discount_price - (discount_price * 0.4);
						} else {
							discount_price = discount_price - (discount_price * 0.6);
						}
						console.log(discount_price);

						document.getElementById("discount_price").innerHTML = priceToString(discount_price);
					}

					function priceToString(price) {
						return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					}

					function showUploadResult(uploadResultArr) {
						if (!uploadResultArr || uploadResultArr.length == 0) {
							return;
						}
						var uploadUL = $(".uploadResult ul");
						var str = "";

						$(uploadResultArr)
							.each(
								function (i, obj) {

									// image type
									if (obj.image) {
										console.log("이미지임");
										var fileCallPath = encodeURIComponent(obj.uploadPath
											+ "/s_"
											+ obj.file_uuid
											+ "_"
											+ obj.fileName);
										str += "<li data-path='" + obj.uploadPath + "'";
										str += " data-file_uuid='" + obj.file_uuid + "' data-filename='" + obj.fileName + "' data-type='image'"
										str + " ><div>";
										str += "<span> " + obj.fileName + "</span>";
										str += "<button type='button' data-file=\'" + fileCallPath + "\' "
										str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
										str += "<img src='/kabart/usedProduct/display?fileName=" + fileCallPath + "'>";
										str += "</div>";
										str + "</li>";
									} else {
										console.log("이미지아님");
										var fileCallPath = encodeURIComponent(obj.uploadPath
											+ "/s_"
											+ obj.file_uuid
											+ "_"
											+ obj.fileName);
										var fileLink = fileCallPath.replace(new RegExp(
											/\\/g), "/");

										str += "<li "
										str += "data-path='" + obj.uploadPath + "' data-file_uuid='" + obj.file_uuid + "' data-filename='" + obj.fileName + "' data-type='true' ><div>";
										str += "<span> " + obj.fileName + "</span>";
										str += "<img src='/kabart/usedProduct/display?fileName=" + fileCallPath + "'>";
										str += "<span data-file=\'" + fileCallPath + "\' data-type='image'> x </span>"
										str += "</div>";
										str + "</li>";
									}
								});
						uploadUL.append(str);
					}

					$(".uploadResult").on("click", "span", function (e) {
						console.log("file delete...");

						var targetFile = $(this).data("file");
						var type = $(this).data("type");

						var targetLi = $(this).closest("li");

						var csrfHeaderName = "${_csrf.headerName}";
						var csrfTokenValue = "${_csrf.token}";

						$.ajax({
							url: '/kabart/usedProduct/deleteFile',
							data: {
								fileName: targetFile,
								type: type
							},
							beforeSend: function (xhr) {
								xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
							},
							dataType: 'text',
							type: 'POST',
							success: function (result) {
								alert(result);
								targetLi.remove();
							}
						}); // $.ajax
					});

					$(document)
						.ready(
							function (e) {

								var formObj = $("form[role='form']");
								$("button[type='submit']")
									.on(
										"click",
										function (e) {
											e.preventDefault();
											console.log("submit clicked...");
											var str = "";

											$(".uploadResult ul li")
												.each(
													function (i, obj) {

														var jobj = $(obj);

														console
															.dir(jobj);
														console
															.log("-------------------------");
														console
															.log(jobj
																.data("filename"));

														str += "<input type='hidden' name='attachList["
															+ i
															+ "].fileName' value='"
															+ jobj
																.data("filename")
															+ "'>";
														str += "<input type='hidden' name='attachList["
															+ i
															+ "].file_uuid' value='"
															+ jobj
																.data("file_uuid")
															+ "'>";
														str += "<input type='hidden' name='attachList["
															+ i
															+ "].uploadPath' value='"
															+ jobj
																.data("path")
															+ "'>";
														str += "<input type='hidden' name='attachList["
															+ i
															+ "].fileType' value='"
															+ jobj
																.data("type")
															+ "'>";

													});

											console.log(str);

											formObj.append(str).submit();

										});

								var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
								var maxSize = 5242880;

								function checkExtension(fileName, fileSize) {
									if (fileSize >= maxSize) {
										alert("파일 사이즈 초과");
										return false;
									}

									if (regex.test(fileName)) {
										alert("해당 종류의 파일은 업로드할 수 없습니다.");
										return false;
									}
									return true;
								}

								var csrfHeaderName = "${_csrf.headerName}";
								var csrfTokenValue = "${_csrf.token}";

								$("input[type='file']")
									.change(
										function (e) {
											var formData = new FormData();
											var inputFile = $("input[name='uploadFile']");
											var files = inputFile[0].files;

											for (var i = 0; i < files.length; i++) {
												if (!checkExtension(
													files[i].name,
													files[i].size)) {
													return false;
												}
												formData.append("uploadFile",
													files[i]);
											}

											$
												.ajax({
													url: '/kabart/usedProduct/uploadAjaxAction',
													processData: false,
													contentType: false,
													beforeSend: function (
														xhr) {
														xhr
															.setRequestHeader(
																csrfHeaderName,
																csrfTokenValue);
													},
													data: formData,
													type: 'POST',
													dataType: 'json',
													success: function (
														result) {
														console.log(result);
														showUploadResult(result);
														//$(".uploadDiv").html(cloneObj.html());
													}
												}); // $.ajax
										});
							});
				</script>

				</html>