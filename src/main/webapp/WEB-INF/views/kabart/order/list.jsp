<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>주문서</title>
</head>

<body style="">
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div data-v-34b11929="" tabindex="0" class="wrap lg win_os">
				<jsp:include page="../includes/header.jsp"></jsp:include>
				<input id='mem_id' type='hidden'
					value='<sec:authentication property="principal.username"/>'>
				<div data-v-63d14162="" data-v-34b11929=""
					class="container buy lg step-2">
					<!---->
					<div data-v-63d14162="" class="content">
						<!---->
						<form id="sendData" method='post' action ='/kabart/order/ordercomplete'>
						<div data-v-b8efdcc8="" data-v-63d14162="" class="buy_immediate">
								<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }" />
								<input type="hidden" name="mem_id" value='<sec:authentication property="principal.username"/>'/>
							<c:forEach items="${products}" var="product">
								<input type='hidden' name='quantity' value=${product.quantity}>
								<input type='hidden' name='prod_id' value=${product.prod_id}>
								<c:if test="${product.up_id ne 0}">
									<input type='hidden' name='isUsed' value='${product.up_id}'>
								</c:if>	
								<div data-v-2b95d831="" data-v-b8efdcc8=""
									class="product_info_area">
									<div data-v-2b95d831="" class="product_info">
										<div data-v-09fbcf09="" data-v-2b95d831="" class="product"
											style="background-color: rgb(244, 244, 244);">
											<picture data-v-321fc3b6="" data-v-09fbcf09=""
												class="picture product_img">
											<source data-v-321fc3b6="" type="image/webp"
												srcset="${product.img_srcs}">
											<source data-v-321fc3b6="" srcset="${product.img_srcs}">
											<img data-v-321fc3b6="" alt="상품 이미지"
												src="${product.img_srcs}" loading="lazy" class="image">
											</picture>
											<!---->
											<!---->
											<!---->
											<!---->



										</div>



										<div data-v-2b95d831="" class="product_detail">

											<strong data-v-2b95d831="" class="model_number"> <c:out
													value="${product.prod_category}"></c:out>
											</strong>
											<p data-v-2b95d831="" class="model_title">
												<c:out value="${product.prod_name }"></c:out>
												
											</p>
											<c:if test="${not empty product.grade}">
												<p data-v-2b95d831="" class="model_ko">
													<c:out value="${product.grade}"></c:out>등급
												</p>
											</c:if>
											<div data-v-2b95d831="" class="model_desc">
												<p data-v-2b95d831="" class="size_txt">
													수량 :
													<c:out value="${product.quantity}"></c:out>
												</p>
												<c:if test="${empty product.grade}">
												<p data-v-2b95d831="" class="size_txt prod_price"
													data-value="${product.prod_price *product.quantity}">
													<fmt:formatNumber
														value='${product.prod_price *product.quantity}'></fmt:formatNumber>
													원
												</p>
												</c:if>
												<c:if test="${not empty product.grade}">
												<p data-v-2b95d831="" class="size_txt prod_price"
													data-value="${product.prod_price *(100-product.discount_rate)/100}">
													<fmt:formatNumber
														value='${product.prod_price *(100-product.discount_rate)/100}'></fmt:formatNumber>
													원
												</p>
												</c:if>
												<!---->
											</div>

										</div>
									</div>
								</div>

							</c:forEach>
							</form>
							<section data-v-e7203b1c="" data-v-b8efdcc8="">
								<div data-v-e7203b1c="" class="section_unit">
									<div data-v-e7203b1c="" class="section_title">

										<h3 data-v-e7203b1c="" class="title_txt">배송정보</h3>
										<!-- <a data-v-e7203b1c="" href="#"
                      class="add_more_btn">+ 새 주소 추가</a> -->
									</div>





									<div data-v-71b8d4b9="" data-v-1a009402=""
										class="delivery_bind">
										<div data-v-71b8d4b9="" data-v-1a009402=""
											class="delivery_input">
											<div data-v-1c44afeb="" data-v-71b8d4b9="" class="input_box"
												data-v-1a009402="">
												<h4 data-v-71b8d4b9="" data-v-1c44afeb=""
													class="input_title">이름</h4>
												<div data-v-1c44afeb="" class="input_item">
													<input data-v-1c44afeb="" type="text" placeholder="수령인의 이름"
														autocomplete="off" class="input_txt" id="mem_name">
												</div>
												<p data-v-71b8d4b9="" data-v-1c44afeb="" class="input_error">올바른
													이름을 입력해주세요. (2 - 50자)</p>
											</div>
											<div data-v-1c44afeb="" data-v-71b8d4b9="" class="input_box"
												data-v-1a009402="">
												<h4 data-v-71b8d4b9="" data-v-1c44afeb=""
													class="input_title">휴대폰 번호</h4>
												<div data-v-1c44afeb="" class="input_item">
													<input data-v-1c44afeb="" type="tel" placeholder="- 없이 입력"
														autocomplete="off" class="input_txt" id="mem_phone">
												</div>
												<p data-v-71b8d4b9="" data-v-1c44afeb="" class="input_error">정확한
													휴대폰 번호를 입력해주세요.</p>
											</div>
											<div data-v-1c44afeb="" data-v-71b8d4b9="" class="input_box"
												data-v-1a009402="">
												<h4 data-v-71b8d4b9="" data-v-1c44afeb=""
													class="input_title">주소</h4>
												<div data-v-1c44afeb="" class="input_item">
													<div class="input_item" data-v-1c44afeb="">
														<div data-v-1c44afeb="" class="input_item">
															<input name="address" autocomplete="off" value=""
																class="input_txt" data-v-1c44afeb=""
																id="sample6_address" placeholder="우편번호를 검색해주세요"
																readonly="readonly" required>
														</div>

													</div>
													<input type="button" data-v-6e799857="" data-v-71b8d4b9=""
														onclick="sample6_execDaumPostcode()"
														class="btn btn_zipcode outline small" data-v-1c44afeb=""
														value="주소찾기" id="addr_button"
														style="background-color: black;">
												</div>

											</div>
											<div data-v-1c44afeb="" data-v-71b8d4b9="" class="input_box"
												data-v-1a009402="">
												<h4 data-v-71b8d4b9="" data-v-1c44afeb=""
													class="input_title">상세 주소</h4>
												<div data-v-1c44afeb="" class="input_item">
													<input name="address_detail" autocomplete="off" value=""
														class="input_txt" data-v-1c44afeb=""
														id="sample6_detailAddress" placeholder="상세주소" required>
												</div>
											</div>
											<div class="input-box">
												<input type="hidden" id="sample6_extraAddress"
													placeholder="참고항목">
											</div>
										</div>


										<div data-v-71b8d4b9="" data-v-1a009402=""
											class="delivery_check">
											<div data-v-4c714e9f="" data-v-71b8d4b9=""
												class="checkbox_item" data-v-1a009402="">
												<input data-v-4c714e9f="" id="check1" type="checkbox"
													name="" class="blind"><label data-v-4c714e9f=""
													for="check1" class="check_label"><svg
														data-v-4c714e9f="" xmlns="http://www.w3.org/2000/svg"
														class="icon sprite-icons ico-check-inactive">
                            <use data-v-4c714e9f=""
															href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-check-inactive"
															xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-check-inactive"></use>
                          </svg> <!----></label>
											</div>
										</div>
									</div>


								</div>





								<div data-v-e7203b1c="" class="section_unit">
									<div data-v-e7203b1c="" class="section_title">
										<h3 data-v-e7203b1c="" class="title_txt">배송 방법</h3>
									</div>
									<div data-v-e7203b1c="" class="section_content">
										<div data-v-e7203b1c=""
											class="delivery_service_option selected disabled">
											<div data-v-12ba7144="" data-v-e7203b1c=""
												class="delivery_way">
												<div data-v-12ba7144="" class="way_info">

													<div data-v-12ba7144="" class="way_status_thumb">
														<img data-v-12ba7144=""
															src="https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png"
															alt="3,000원" class="way_img">
													</div>



													<div data-v-12ba7144="" class="way_desc">
														<p data-v-12ba7144="" class="company">
															<span data-v-12ba7144="" class="badge_title">무료배송
															</span>
															<!---->
														</p>
														<p data-v-12ba7144="" class="sub_text">배송 : 3일 내 도착 예정
															입니다.</p>
													</div>
												</div>
												<!---->
											</div>
										</div>
									</div>
								</div>
								<!---->
								<!---->
							</section>


							<section data-v-b8efdcc8="">
								<div data-v-b8efdcc8="" class="section_title">
									<h3 data-v-b8efdcc8="" class="title_txt">최종 주문 정보</h3>
								</div>
								<div data-v-b8efdcc8="" class="section_content">
									<div data-v-887ad490="" data-v-b8efdcc8=""
										class="instant_group">
										<div data-v-679d7250="" data-v-887ad490=""
											class="price_total order_info">
											<dl data-v-679d7250="" class="price_box">
												<dt data-v-679d7250="" class="price_title">총 결제금액</dt>
												<dd data-v-679d7250="" class="price">
													<span data-v-679d7250="" class="amount">149,100</span><span
														data-v-679d7250="" class="unit">원</span>
												</dd>
											</dl>
											<span data-v-679d7250="" class="price_warning"
												style="display: none;"><em data-v-679d7250="">주의!
											</em></span>
										</div>
										<div data-v-887ad490="" class="price_bind">
											<dl data-v-3a2a7b6b="" data-v-887ad490="" class="price_addition">
												<dt data-v-3a2a7b6b="" class="price_title">
													<span data-v-3a2a7b6b="">원가</span>
													<!---->
												</dt>
												<dd data-v-3a2a7b6b="" id="totalPrice" class="price_text">원</dd>
											</dl>
											<dl data-v-3a2a7b6b="" data-v-887ad490=""
												class="price_addition">
												<dt data-v-3a2a7b6b="" class="price_title">
													<span data-v-3a2a7b6b="">할인</span>
													<!---->
												</dt>
												<dd data-v-3a2a7b6b="" id="sendPrice" class="price_text">-</dd>
											</dl>
											<dl data-v-3a2a7b6b="" data-v-887ad490=""
												class="price_addition">
												<dt data-v-3a2a7b6b="" class="price_title">
													<span data-v-3a2a7b6b="">배송비</span>
													<!---->
												</dt>
												<dd data-v-3a2a7b6b="" class="price_text">무료</dd>
											</dl>
										</div>
										<!---->
									</div>
								</div>
							</section>



							<section data-v-b8efdcc8="" class="buy_check">
								<div data-v-14995178="" data-v-b8efdcc8=""
									class="buy_total_confirm" is-instant="true">
									<div data-v-679d7250="" data-v-14995178="" class="price_total">
										<dl data-v-679d7250="" class="price_box">
											<dt data-v-679d7250="" class="price_title">총 결제금액</dt>
											<dd data-v-679d7250="" class="price">
												<span data-v-679d7250="" class="amount">149,100</span><span
													data-v-679d7250="" class="unit">원</span>
											</dd>
										</dl>
										<span data-v-679d7250="" class="price_warning"
											style="display: none;"><em data-v-679d7250="">주의!
										</em></span>
									</div>
									<div data-v-14995178="" class="btn_confirm">
										<a data-v-575aff82="" data-v-14995178="" 
											href="#" class="btn full solid false" id="paid"> 결제하기 </a>
									</div>
								</div>
							</section>
							<!---->
							<div data-v-1a009402="" data-v-4ae17423="" data-v-b8efdcc8=""
								class="layer_order_price_confirm layer lg"
								style="display: none;">
								<div data-v-1a009402="" class="layer_container">
									<a data-v-4ae17423="" data-v-1a009402="" href="#"
										class="btn_layer_close"><svg data-v-4ae17423=""
											data-v-1a009402="" xmlns="http://www.w3.org/2000/svg"
											class="ico-close icon sprite-icons">
                      <use data-v-4ae17423="" data-v-1a009402=""
												href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-close"
												xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-close"></use>
                    </svg></a>
									<div data-v-1a009402="" class="layer_header"></div>
									<div data-v-1a009402="" class="layer_content">
										<div data-v-4ae17423="" data-v-1a009402="" class="alert_title">

											<p data-v-4ae17423="" data-v-1a009402="" class="title">총
												결제금액</p>
											<p data-v-4ae17423="" data-v-1a009402="" class="price">-원</p>
										</div>


									</div>
								</div>
							</div>
							<!---->
							<!---->
							<!---->
						</div>
						
						<!---->
					</div>
					<!---->
					<!---->
				</div>
			
				<div data-v-34b11929=""></div>
				<!---->
				<div data-v-34b11929="">
					<!---->
					<div data-v-66ae1b7c="" id="toast" class="toast lg">
						<div data-v-66ae1b7c="" class="wrap">
							<svg data-v-66ae1b7c="" xmlns="http://www.w3.org/2000/svg"
								class="icon sprite-icons toast-icon toast-success">
                <use data-v-66ae1b7c=""
									href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-toast-success"
									xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-toast-success"></use>
              </svg>
							<div data-v-66ae1b7c="" class="toast-content">
								<p data-v-66ae1b7c="">내용</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<jsp:include page="../includes/footer.jsp"></jsp:include>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script type="text/javascript">
		$(function(){
			/*
			 * Author : 남승현
			 * 기능 : 결제하기 버튼 클릭 시, 동적으로 태그 생성하여 주문시킴
			 */
			 
			$("#paid").on("click",function(e){
				e.preventDefault();
				var form = $("#sendData")[0];   	
				var hiddenField = document.createElement("input");

			         hiddenField.setAttribute("type", "hidden");

			         hiddenField.setAttribute("name", "dname");

			         hiddenField.setAttribute("value", $("#mem_name").val());
					var hiddenFieldphone= document.createElement("input");

					hiddenFieldphone.setAttribute("type", "hidden");

					hiddenFieldphone.setAttribute("name", "phone");

					hiddenFieldphone.setAttribute("value", $("#mem_phone").val()+"");
				         var hiddenFieldaddr= document.createElement("input");

				         hiddenFieldaddr.setAttribute("type", "hidden");

				         hiddenFieldaddr.setAttribute("name", "address");

				         hiddenFieldaddr.setAttribute("value", $("#sample6_address").val());
				         var hiddenFieldaddrdetail= document.createElement("input");

				         hiddenFieldaddrdetail.setAttribute("type", "hidden");

				         hiddenFieldaddrdetail.setAttribute("name", "address_detail");

				         hiddenFieldaddrdetail.setAttribute("value", $("#sample6_detailAddress").val());
			         form.appendChild(hiddenField);
			         form.appendChild(hiddenFieldphone);
			         form.appendChild(hiddenFieldaddr);
			         form.appendChild(hiddenFieldaddrdetail);

				$("#sendData").submit();
			})
		})
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			var totalSum = 0;
			$(".prod_price").each(function() {
				totalSum += $(this).data('value');
			});
			totalSum = parseInt(totalSum,10);
			$(".amount").text(totalSum.toLocaleString('ko-KR'));
			$("#totalPrice").html(totalSum.toLocaleString('ko-KR')+'원')
			if(${isUsed}==1){
				var discount = ${products[0].prod_price}-totalSum;
				var realcount = ${products[0].prod_price};
				console.log(discount);
				$("#sendPrice").html(discount.toLocaleString('ko-KR')+'원');
				$("#totalPrice").html(realcount.toLocaleString('ko-KR')+'원');
				
			}
			
		})
		$(function() {
	
			var mem_id = $("#mem_id").val();
			console.log(mem_id);
			var csrfHeaderName = "${_csrf.headerName}";
			var csrfTokenValue = "${_csrf.token}";
			$.ajax({
				type : 'post',
				url : "/kabart/getInfoById",
				data : JSON.stringify({
					mem_id : mem_id
				}),
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				contentType : "application/json",
				success : function(result) {
					console.log(result.mem_name);
					$("#mem_name").val(result.mem_name);
					$("#mem_phone").val(result.phone);
					$("#sample6_address").val(result.address);
					$("#sample6_detailAddress").val(result.address_detail);

				}

			})
		});
	</script>
	<script>
		/*동적으로 form 태그를 생성해서 데이터를 넘기는 과정*/
		function order() {

			var tag_address = $('#sample6_address').val();
			var tag_detailAddress = $('#sample6_detailAddress').val();
			var total_address = tag_address + " " + tag_detailAddress;

			console.log(tag_address);
			console.log(tag_detailAddress);
			console.log(total_address);

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