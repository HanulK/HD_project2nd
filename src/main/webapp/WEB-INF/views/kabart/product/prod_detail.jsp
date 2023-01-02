<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
													<span data-v-679b6792="" class="title_txt">구매가</span>
												</div>
												<div data-v-679b6792="" class="price">
													<div data-v-679b6792="" class="amount">
														<span data-v-679b6792="" class="num"><fmt:formatNumber
																value="${detail.prod_price}" pattern="#,###" /></span> <span
															data-v-679b6792="" class="won">원</span>
													</div>
												</div>
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
														href="/kabart/usedProduct/used_prod_sell"
														class="btn solid full sell large"> 중고 판매 </a>
												</div>
											</div>
											<div data-v-f40660fa="" data-v-77d20f30=""
												class="detail_stock_btn">
												<a data-v-6e799857="" data-v-f40660fa="" href="#"
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
													</dd>
												</div>
												<div data-v-b809b0a6="" class="detail_box">
													<dt data-v-b809b0a6="" class="product_title">높이</dt>
													<dd data-v-b809b0a6="" class="product_info">
														<c:out value="${detail.prod_height}" />
													</dd>
												</div>
												<div data-v-b809b0a6="" class="detail_box">
													<dt data-v-b809b0a6="" class="product_title">깊이</dt>
													<dd data-v-b809b0a6="" class="product_info">
														<c:out value="${detail.prod_depth}" />
													</dd>
												</div>
												<div data-v-b809b0a6="" class="detail_box">
													<dt data-v-b809b0a6="" class="product_title">발매가</dt>
													<dd data-v-b809b0a6="" class="product_info">
														<fmt:formatNumber value="${detail.prod_price}"
															pattern="#,###" />
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
														<span data-v-12ba7144="" class="badge_title">일반배송 </span>
														<span data-v-12ba7144="" class="title">3,000원</span>
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
								</div>
								<div data-v-3e0ff210="" class="other_stock_list">
									<!-- stock item 단일-->
									<c:forEach items="${detail.useds}" var="useditems">
										<div data-v-4b0fda50="" data-v-3e0ff210=""
											class="stock_list_item">
											<a data-v-4b0fda50="" class="item_inner">
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
															<span data-v-4b0fda50="" class="amount">${useditems.used_price}원</span>
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
								<div class="item__review">
									<div class='reviews'>
										<c:forEach var="rv" items="${review}">
											<div class='review__wrap'>
												<div class='wrap__top'>
													<div class='reivew__title'>${rv.rv_text}</div>
													<span class='review__nick'>${rv.mem_id}</span> | <span
														class='review__date'>${rv.rv_date}</span>
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
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
		$("#cart").on("click", function(e) {
		e.preventDeaulf(); //원래 이번트 막음 / 원하는 이벤트 

		  // ajax 
		  $.ajax({
		      type : "POST",            // HTTP method type(GET, POST) 형식
		      url : "/kabart/mypage/cart",      // 컨트롤러에서 대기중인 URL 주소
		      data : params,            // Json 형식의 데이터
		      success : function(respone){ // 비동기통신-> 성공 success콜백// 'respone'는 응답받은 데이터
			
		    	  alert("장바구니에 등록되었습니다");
		       		location.href ="/kabart/mypage/cart"
		      },
		      
		      
		      error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
		          alert("장바구니 등록에 실패하였습니다")
		      }
		  });
		
		
		});
	 } else {
         alert("취소되었습니다");
       }
	 }
		
</script>