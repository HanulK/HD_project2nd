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
<link rel="stylesheet" href="https://rsms.me/inter/inter.css">
<title>PRODUCT SEARCH</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		let actionForm = $("#actionForm");

		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='prod_category']");
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
	});
</script>
</head>

<body>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div tabindex="0" class="wrap win_os md" data-v-3007c576="">
				<jsp:include page="../includes/header.jsp"></jsp:include>
				<!---->

				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
					integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
					crossorigin="anonymous" referrerpolicy="no-referrer"></script>

				<div class="exhibition_items" data-v-4f87b95c="" data-v-352cdc90=""
					data-v-3007c576="">

					<div class="exhibition_item product_header" data-v-4f87b95c="">
						<div
							class="exhibition_item_product_header exhibition_item_section"
							data-v-6e9267c1="" data-v-4f87b95c="" style="">
							<div class="product_header_wrapper" data-v-6e9267c1="">
								<h2 class="title main_title_change" data-v-6e9267c1=""
									style="text-transform: uppercase;">KABART SEARCH</h2>
								<p class="description" data-v-6e9267c1="">KABART 에서 자신 있게
									선보이는 상품</p>
							</div>
						</div>
						<div data-v-761e5fb3="" data-v-1a009402=""
							class="search_container"
							style="width: 800px; padding-left: 0; padding-right: 0; margin: 0 auto; overflow: hidden;">
							<div data-v-761e5fb3="" data-v-1a009402="" class="search_wrap">

								<div data-v-63326639="" data-v-761e5fb3="" class="search_area"
									value="" data-v-1a009402="">

									<div data-v-63326639="" class="search"
										style="width: 800px; padding-left: 0; padding-right: 0; margin: 0 auto; overflow: hidden;">

										<!-- 박스 -->

										<form id="searchForm"
											action="/kabart/product/search_complete_list" method="get">
											<select name="type"
												style="border-radius: 30px; text-align: center;">
												<option value="T">제품명</option>

												<option value="C">카테고리</option>

												<option value="TC">제품명 or 카테고리</option>

											</select> <input data-v-63326639="" type="text" name="keyword"
												placeholder="   상품명, 카테고리, 상품명 + 카테고리 등" title="검색창"
												class="input_search show_placeholder_on_focus" required=""
												style="width: 550px; margin-left: 10px; vertical-align: middle;">

											<button class="btn btn-default" style="vertical-align: sub;">SEARCH</button>


										</form>

									</div>
								</div>

							</div>
						</div>
					</div>

					<!-- 상품 묶음 -->
					<div class="exhibition_item product_list" data-v-4f87b95c="">
						<div id="cha"
							class="exhibition_item_products exhibition_item_section"
							data-v-81b68464="" data-v-4f87b95c="">


							<!-- 단일 상품 -->
							<c:forEach items="${products}" var="pro">
								<div class="product_card exhibition_product" data-v-19fda891=""
									data-v-81b68464="">
									<a
										href="/kabart/product/prod_detail?prod_id=<c:out value="${pro.prod_id }" />"
										class="item_inner" data-v-19fda891="">
										<div class="product" style="background-color: #f4f4f4;"
											data-v-09fbcf09="">
											<picture data-v-321fc3b6="" data-v-09fbcf09=""
												class="picture product_img"> <img alt=""
												src="${pro.img_srcs}" style="overflow: auto;"></picture>
										</div>
										<div class="product_info_area" data-v-c90cb1da="">
											<div class="title" data-v-c90cb1da="">
												<p class="product_info_brand brand" data-v-878934fe=""
													data-v-c90cb1da="">
													<c:out value="${pro.prod_name}" />
													<!---->
												</p>

											</div>
										</div>
										<div class="price price_area" data-v-ef71e3ac=""
											data-v-7dab533a="">
											<p class="amount" data-v-ef71e3ac="">
												<!---->
												<fmt:formatNumber value="${pro.prod_price}" pattern="#,###" />
											</p>
										</div>
									</a>
								</div>
							</c:forEach>
							
							<!-- 상품 -->
						</div>
					</div>



					<!-- 페이징 시작 -->
					
					<div class='pull-right'>
									<ul id="footnum" class="pagination" style="display: flex; justify-content:center;">
									
									
										<c:if test="${pageMaker.prev}">
											<li class="paginate_button previous">
												<a href="${pageMaker.startPage - 1 } ">
												이전페이지
												</a>
											</li>
										</c:if>


										<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
											<li class="paginate_button ${pageMaker.cri.pageNum == num ? " active" : "" }"
												style="margin: 0 5px;">
												<a href="${num}">${num}
												</a>
											</li>
										</c:forEach>


										<c:if test="${pageMaker.next}">
											<li class="paginate_button next">
												<a href="${pageMaker.endPage + 1}">
												다음페이지
												</a>
											</li>
										</c:if>
										
										
										
									</ul>
								</div>
					
					
					
					<div class="footnumber">
						<form id="actionForm" action="/kabart/product/prod_sarch_n"
							method="get">
							<input type="hidden" name="prod_category" value="bed"> 
							<inputtype="hidden" name="pageNum" value="1"> 
							<input type="hidden" name="amount" value="8">
						</form>
					</div> 
					
					
					<div class="actionFromdiv">
					
									<form id='actionForm' action='/kabart/product/search_complete_list' method="get">
										<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
										<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
									</form>
					<!-- /상품 그루핑 -->

					<!-- <form id='searchForm' action="/kabart/product/prod_list" method='get'> -->
				</div>

				<%@include file="../includes/footer.jsp"%>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
					$(document).ready(function () {
						let actionForm = $("#actionForm");
						$(".paginate_button a").on("click", function (e) {
							e.preventDefault();
							console.log('click');
							actionForm.find("input[name='pageNum']").val($(this).attr("href"));
							actionForm.submit();
						});
					});
				</script>
</body>

</html>