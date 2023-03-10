<!-- Author : 이세아  -->

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${PageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Product detail</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/review.js" defer></script>
<script type="text/javascript" src="/resources/js/toastmsg.js" defer></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=96ea39472deedf6bbe92d065299190c2&libraries=services,clusterer,drawing">"></script>
</head>

<body>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div tabindex="0" class="wrap win_os md" data-v-3007c576="">
				<!---->
				<jsp:include page="../includes/header.jsp"></jsp:include>
				<div data-v-cf786f84="" data-v-3007c576=""
					class="container detail md">
					<div data-v-cf786f84="" class="content">
						<sec:authorize access="isAuthenticated()">
							<input id="mem_id" type="hidden"
								value='<sec:authentication property="principal.username"/>'>
						</sec:authorize>



						<h2 data-v-cf786f84="" class="blind">상품 상세</h2>
						<div data-v-cf786f84="" class="column_bind">
							<div data-v-cf786f84="" class="column">
								<div data-v-cf786f84="" class="spread"></div>
								<div data-v-cf786f84="" class="column_box">
									<div data-v-2998063a="" data-v-cf786f84=""
										class="detail_banner_area md">
										<div data-v-2998063a="" data-v-e4caeaf8="" class="item_inner">
											<div data-v-09fbcf09="" data-v-2998063a="" class="product"
												data-v-e4caeaf8="">
												<picture data-v-321fc3b6="" data-v-09fbcf09=""
													class="picture product_img"> <img alt=""
													src="${detail.img_srcs}" style="overflow: auto;"></picture>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div data-v-cf786f84="" class="column">
								<div data-v-3900a1a2="" data-v-cf786f84="" class="column_box">
									<div data-v-3900a1a2="" class="column_top">
										<div data-v-6e865099="" data-v-3900a1a2=""
											class="detail_main_title md">
											<div data-v-6e865099="" class="main_title_box">
												<p data-v-6e865099="" class="title">
													<c:out value="${detail.prod_name}" />
												</p>
											</div>
										</div>
										<div data-v-3900a1a2="" class="product_figure_wrap md">
											<div data-v-679b6792="" data-v-3900a1a2=""
												class="detail_price">
												<div data-v-679b6792="" class="title">
													<span data-v-679b6792="" class="title_txt">수량</span>
												</div>
												<div data-v-679b6792="" class="price">
													<div data-v-679b6792="" class="amount">
														<span data-v-679b6792="" class="num"><fmt:formatNumber
																value="${detail.prod_price}" pattern="#,###" /></span> <span
															data-v-679b6792="" class="won">원</span>
													</div>
												</div>
												<span class="count" style="padding: 0px 10px;">
													<button type="button" onclick="updateAmount(-1)"
														class="minus" style="padding: 0px 3px">-</button> <span
													id="quantity" data-value="1" data-v-4faab390=""
													class="size" style="padding: 0px 3px">1</span>
													<button type="button" onclick="updateAmount(1)"
														class="plus">+</button>
												</span>
											</div>
										</div>
										<div data-v-3900a1a2="" class="btn_wrap">
											<div data-v-23bbaa82="" data-v-3900a1a2=""
												class="division_btn_box1 md">
												<div data-v-f40660fa="" data-v-77d20f30=""
													class="detail_stock_btn">

													<a id="cart" data-v-6e799857="" data-v-f40660fa=""
														href="/kabart/mypage/cart"
														class="btn solid full buy1 large"> 장바구니 </a>


												</div>

												<div data-v-f40660fa="" data-v-77d20f30=""
													class="detail_stock_btn">
													<a data-v-6e799857="" data-v-f40660fa=""
														href="/kabart/usedProduct/used_prod_sell?prod_id=<c:out value="${detail.prod_id}" />"
														class="btn solid full sell large"> 중고 판매 </a>
												</div>
											</div>
											<div data-v-f40660fa="" data-v-77d20f30=""
												class="detail_stock_btn">
												<a id='buy' onclick='buyNow(this)' data-v-6e799857=""
													data-v-f40660fa="" href="#"
													class="btn solid full buy large"> 바로 구매 </a>

											</div>
										</div>
									</div>
									<div data-v-3900a1a2="" class="product_info_wrap">
										<h3 data-v-52dd777b="" data-v-3900a1a2=""
											class="detail_title info_title md">상품 정보</h3>
										<div data-v-b809b0a6="" data-v-3900a1a2=""
											class="detail_product_wrap">
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
									<div data-v-3900a1a2="" class="delivery_way_wrap">
										<h3 data-v-52dd777b="" data-v-3900a1a2=""
											class="detail_title md">배송 정보</h3>
										<div data-v-12ba7144="" data-v-3900a1a2=""
											class="delivery_way">
											<div data-v-12ba7144="" class="way_info">
												<div data-v-12ba7144="" class="way_status_thumb">
													<img data-v-12ba7144=""
														src="https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png"
														alt="3,000원" class="way_img">
												</div>
												<div data-v-12ba7144="" class="way_desc">
													<p data-v-12ba7144="" class="company">
														<span data-v-12ba7144="" class="badge_title">무료배송 </span>
														<!---->
													</p>
													<p data-v-12ba7144="" class="sub_text">검수 후 배송 ・ 5-7일 내
														도착 예정</p>
												</div>
											</div>
											<!---->
										</div>
									</div>

									<!---->
									<!---->

								</div>
								<!---->
								<!---->
								<!---->
							</div>
						</div>
						<!---->
						<!---->
						<!---->
					</div>

					<!--content-->
					<!-- 부중서 -->
					<c:if test="${not empty detail.useds}">
						<div class="used_stock">
							<div data-v-3e0ff210="" data-v-cf786f84="" class="other_stock">
								<div data-v-3e0ff210="" class="title">
									<h3 data-v-3e0ff210="" class="title_text">
										<em>Kabart</em> 추천 상품
									</h3>
									<div class="imgfold">
										<img class="foldbtn" src="/resources/img/down.png">
									</div>
									<script>
$('.imgfold').click(function() {
									    $('#other_stock_list').show();
									    $('#other_stock_list').hide();
									});
								</script>
								</div>
								<div data-v-3e0ff210="" class="other_stock_list">
									<!-- stock item 단일-->
									<c:forEach items="${detail.useds}" var="useditems">
										<div data-v-4b0fda50="" data-v-3e0ff210=""
											class="stock_list_item">
											<a
												href="/kabart/usedProduct/used_prod_detail?up_id=<c:out value="${useditems.up_id}" />">
												<div data-v-4b0fda50="" class="product_thumb">
													<div data-v-09fbcf09="" data-v-4b0fda50="" class="product"
														style="background-color: rgb(242, 242, 242);">
														<picture data-v-321fc3b6="" data-v-09fbcf09=""
															class="picture product_img"> <img alt=""
															src="${detail.img_srcs}" style="overflow: auto;"></picture>
														<!---->
														<!---->
														<em data-v-09fbcf09="" class="stocked_status_mark">
															${useditems.grade}</em>
														<!---->
													</div>
													<!---->
												</div>
											</a>
											<div data-v-4b0fda50="" class="product_info">
												<div data-v-4b0fda50="" class="product_detail">
													<p data-v-4b0fda50="" class="name">
														<c:out value="${detail.prod_name}" />
													</p>
												</div>
												<div data-v-4b0fda50="" class="product_price">
													<p data-v-4b0fda50="" class="origin_price">
														<fmt:formatNumber value="${detail.prod_price}"
															pattern="#,###" />
													</p>
													<p data-v-4b0fda50="" class="discount_price">
														<em data-v-4b0fda50="" class="discount_per">${useditems.discount_rate}%</em>
														<span data-v-4b0fda50="" class="amount"><fmt:formatNumber
																value="${useditems.used_price}" pattern="#,###" />원</span>
													</p>
													<p data-v-4b0fda50="" class="price_desc">구매가</p>
												</div>
											</div>
											</a>
										</div>
									</c:forEach>
								</div>
							</div>
							<!-- /.stock item 단일-->
						</div>
					</c:if>

					<!-- 부중서 끝 -->
					<!-- 오프라인 샵  -->
					<c:if test="${not empty detail.shops}">
						<!-- 샵 리스트 -->
						<div class="used_stock">
							<div data-v-3e0ff210="" data-v-cf786f84="" class="other_stock"
								style="padding-bottom: 0px;">
								<div data-v-3e0ff210="" class="title">
									<h3 data-v-3e0ff210="" class="title_text1"
										style="font-weight: bold;">
										<em>Kabart</em> DISPLAY SHOP
									</h3>
								</div>
								<div class="shoplist">
									<c:forEach var="shop" items="${detail.shops}">
										<div class='shop__wrap'>
											<div class='shop__top'>
												<div class='shop_name'>${shop.shop_name}</div>
												<span class='shop_address'>${shop.shop_address}</span>
											</div>
										</div>
									</c:forEach>
								</div>
								<!-- /샵 리스트 -->
								<div id="map"></div>
								<script>
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							    mapOption = {
							        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							        level: 5 // 지도의 확대 레벨
							    };  


							// 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer, mapOption); 

							<c:forEach items="${detail.shops}" var="shop">
							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();

							// 주소로 좌표를 검색합니다
							geocoder.addressSearch('${shop.shop_address}', function(result, status) {

							    // 정상적으로 검색이 완료됐으면 
							     if (status === kakao.maps.services.Status.OK) {

							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

							        // 결과값으로 받은 위치를 마커로 표시합니다
							        var marker = new kakao.maps.Marker({
							            map: map,
							            position: coords
							        });

							        // 인포윈도우로 장소에 대한 설명을 표시합니다
							        var infowindow = new kakao.maps.InfoWindow({
							            content: '<div style="width:150px;text-align:center;padding:6px 0;"> ${shop.shop_name}</div>'
							        });
							        infowindow.open(map, marker);

							        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							        map.setCenter(coords);
							    } 
							});   
							</c:forEach>
								</script>
							</div>
						</div>
					</c:if>
					<!-- /.오프라인 샵  -->

					<div data-v-12376b79="" data-v-cf786f84="" class="feed_area">
						<div class="goodsView__bottom js__goods-detail">
							<div class="inner-align-module">
								<!-- 상세정보 / 후기 버튼 -->
								<ul class="infoTabs">
									<li class="prod__info infoTab active">상품정보</li>
									<li class="prod__review infoTab">상품후기</li>
								</ul>
								<!-- 버튼 -->
								<a id="tabLocaton"></a>

								<!-- 상세정보 -->
								<div class="item__info">
									<center>
										<table>
											<tbody>
												<c:forEach items="${detail.imgs}" var="dtimg">
													<tr>
														<td style="text-align: center;"><img
															src="${dtimg.img_srcs}"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</center>
								</div>
								<!-- 상세정보 fin -->
								<!-- 후기 -->
								<!-- 연령대 / 가구 분석 -->
								<div class="graph_area" style="display:none;">
									<c:if test="${not empty family}">
										<div class="graph_bar_wrap">
											<p class="graph_category">가구원</p>
											<div class="graph_bar_area">
												<div class="baseline_wrap">
													<ol class="baseline_area">
														<li class="baseline baseline0"><span
															class="baseline_num">0</span></li>
														<li class="baseline baseline20"><span
															class="baseline_num">20%</span> <span
															class="baseline_bar"></span></li>
														<li class="baseline baseline40"><span
															class="baseline_num">40%</span> <span
															class="baseline_bar"></span></li>
														<li class="baseline baseline60"><span
															class="baseline_num">60%</span> <span
															class="baseline_bar"></span></li>
														<li class="baseline baseline80"><span
															class="baseline_num">80%</span> <span
															class="baseline_bar"></span></li>
														<li class="baseline baseline100"><span
															class="baseline_num">100%</span> <span
															class="baseline_bar"></span></li>
													</ol>
												</div>
												<ul class="bar_wrap">
													<li>
														<dl>
															<dt class="bar_name">1인</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${family[0].percent}%"><span
																		class="bar_num">${family[0].percent}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt class="bar_name">2인</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${family[1].percent}%"><span
																		class="bar_num">${family[1].percent}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt class="bar_name">3인</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${family[2].percent}%"><span
																		class="bar_num">${family[2].percent}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt class="bar_name">4인</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${family[3].percent}%"><span
																		class="bar_num">${family[3].percent}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt class="bar_name">5인 이상</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${family[4].percent}%"><span
																		class="bar_num">${family[4].percent}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
												</ul>
											</div>
											<script>
											var maxIndex = $("bar hightest").length;

											for(var i=0; i<maxIndex; i++){
											  var val = $("bar hightest").eq(i).attr('height');
											  $("bar hightest").eq(i).css({
											    "left": (i+1)*80+"px"
											  }).animate({
											    "height":val+"%"
											  },800);
											}
											</script>
										</div>
										<!-- 연령대 -->
										<div class="graph_bar_wrap1">
											<p class="graph_category">연령</p>
											<div class="graph_bar_area">
												<div class="baseline_wrap">
													<ol class="baseline_area">
														<li class="baseline baseline0"><span
															class="baseline_num">0</span></li>
														<li class="baseline baseline20"><span
															class="baseline_num">20%</span> <span
															class="baseline_bar"></span></li>
														<li class="baseline baseline40"><span
															class="baseline_num">40%</span> <span
															class="baseline_bar"></span></li>
														<li class="baseline baseline60"><span
															class="baseline_num">60%</span> <span
															class="baseline_bar"></span></li>
														<li class="baseline baseline80"><span
															class="baseline_num">80%</span> <span
															class="baseline_bar"></span></li>
														<li class="baseline baseline100"><span
															class="baseline_num">100%</span> <span
															class="baseline_bar"></span></li>
													</ol>
												</div>
												<ul class="bar_wrap">
													<li>
														<dl>
															<dt class="bar_name">20대 미만</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${age[0].cnt}%"><span
																		class="bar_num">${age[0].cnt}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt class="bar_name">20대</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${age[1].cnt}%"><span
																		class="bar_num">${age[1].cnt}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt class="bar_name">30대</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${age[2].cnt}%"><span
																		class="bar_num">${age[2].cnt}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt class="bar_name">40대</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${age[3].cnt}%"><span
																		class="bar_num">${age[3].cnt}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
													<li>
														<dl>
															<dt class="bar_name">50대 이상</dt>
															<dd>
																<p class="bar_area">
																	<span class="bar hightest"
																		style="height: ${age[4].cnt}%"><span
																		class="bar_num">${age[4].cnt}%</span></span>
																</p>
															</dd>
														</dl>
													</li>
												</ul>
											</div>
										</div>
									</c:if>
								</div>
								<div class="item__review">
									<c:if test="${empty review}">
										<ul data-v-4faab390="" class="wish_list">
											<div data-v-e2f6767a="" class="empty_area">
												<p data-v-e2f6767a="" class="desc" style="font-size: 16px;">등록된
													후기가 없습니다.</p>
											</div>
										</ul>
									</c:if>
									<div class='reviews'>
										<c:forEach var="rv" items="${review}">
											<div class='review__wrap'>
												<div class='wrap__top'>
													<div class='reivew__title'>${rv.rv_text}</div>
													<span class='review__nick'>${rv.mem_id}</span> | <span class='review__date'>
														<fmt:formatDate value="${rv.rv_date}" />
													</span>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<!-- 후기 fin -->
							</div>
						</div>
					</div>
					<%@include file="../includes/footer.jsp"%>
					<div data-v-3007c576="">
						<div id="goto-top">
							<div class="material-icons">arrow_upward</div>
						</div>
						<script>
		const gotoTopEl = document.querySelector('#goto-top')
		window.addEventListener('scroll', function() {
			if (window.scrollY > 500) {
				gsap.to(gotoTopEl, .2, {
					x : 0
				})
			} else {
				gsap.to(gotoTopEl, .2, {
					x : 100
				})
			}
		}, 300)
		gotoTopEl.addEventListener('click', function() {
			gsap.to(window, .7, {
				scrollTo : 0
			})
		})
	</script>
						<!---->
						<div id="toast" class="toast md" data-v-66ae1b7c="">
							<div class="wrap" data-v-66ae1b7c="">
								<picture data-v-66ae1b7c="" class="toast_img toast-icon">
								<img alt="" id="img_icon"> </picture>
								<div class="toast-content" data-v-66ae1b7c="">
									<p data-v-66ae1b7c=""></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>



/*
 * Author : 남승현
 * 기능 : 상품 상세내 장바구니 혹은 바로구매에 필요한 수량 조절
 */
function updateAmount(val){
		var quan = $('#quantity').data('value');
		console.log(quan);
		if(quan==1 &&val==-1){
			return ;
		}
		$('#quantity').data('value',quan+val);
		$('#quantity').html(quan+val);
		
	};
	
	/*
	 * Author : 남승현
	 * 기능 : 바로 구매기능
	 */	
	function buyNow(e){
		var quan = $('#quantity').data('value');
		var prod_id = ${detail.prod_id};
		console.log(quan);
		console.log(prod_id);
		var url = '/kabart/order/list?prod_id='+prod_id+'&quantity='+quan;
		console.log(url);
		location.href = url;
		
	};
	/*
	 * Author : 남승현
	 * 기능 : 장바구니 담기 기능
	 */
		$("#cart").on("click", function(e) {
		e.preventDefault();
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		const mem_id = $("#mem_id").val();
		var quantity = $('#quantity').data('value');
		if(!mem_id){
			location.href = "/kabart/login";
			return ;
		}
		  // ajax 
		
		  $.ajax({
		      type : "POST",            // HTTP method type(GET, POST) 형식
		      url : "/kabart/mypage/cart",      // 컨트롤러에서 대기중인 URL 주소
		      data : JSON.stringify({
		    	  mem_id : mem_id,
		    	  prod_id : ${detail.prod_id},
		    	  quantity : quantity
		    	  
		      }),
		      contentType : "application/json",
		      beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName,
							csrfTokenValue);
				},
		      // Json 형식의 데이터
		      success : function(result){ // 비동기통신-> 성공 success콜백// 'respone'는 응답받은 데이터
		    	  if(result.result==='success'){
		    			showToast("장바구니에 상품이 담겼습니다.", 1);
					}else {
						showToast("장바구니에 상품이 담기지 않았습니다.", -1);
					}
		      
		      },
		      error : function(e){
		    	  alert(e);
		      }

		  });
		
		
		});
	
		
</script>