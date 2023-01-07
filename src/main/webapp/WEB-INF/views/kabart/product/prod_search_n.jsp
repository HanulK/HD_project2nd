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

<!-- <script type="text/javascript">
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

</script> -->
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

										<!-- search_complete_list로 보냄-->

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

							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/kabart/product/prod_detail?prod_id=45189"
									class="item_inner" data-v-19fda891="">
									<div class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="https://image.guud.com/mall/IL/item/202212/23/B_7A389502811046959CF57901C7FB1447.jpg"
											style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												MK 패브릭 침대 GSS
												<!---->
											</p>

										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<!---->
											970,000원
										</p>
									</div>
								</a>
							</div>

							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/kabart/product/prod_detail?prod_id=71007"
									class="item_inner" data-v-19fda891="">
									<div class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="https://image.guud.com/mall/IL/item/202206/15/B_3BC6231EC23D426A99C4FF615A313C36.jpg"
											style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												프리마 침대 Q (매트제외)
												<!---->
											</p>

										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<!---->
											2,450,000원
										</p>
									</div>
								</a>
							</div>

							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/kabart/product/prod_detail?prod_id=50433"
									class="item_inner" data-v-19fda891="">
									<div class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="https://image.guud.com/mall/IL/item/202007/29/B_6F6E8A0F40D6453FB434A2FFBE3CF6C9.jpg"
											style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												라임 침대 GSS_브라운 (매트제외)
												<!---->
											</p>

										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<!---->
											224,000원
										</p>
									</div>
								</a>
							</div>

							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/kabart/product/prod_detail?prod_id=42304"
									class="item_inner" data-v-19fda891="">
									<div class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="https://image.guud.com/mall/IL/item/202004/09/B_1115C1E7FEC94E8193086390A725AC09.jpg"
											style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												라임 침대 Q_내추럴 (매트제외)
												<!---->
											</p>

										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<!---->
											243,000원
										</p>
									</div>
								</a>
							</div>

							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/kabart/product/prod_detail?prod_id=42373"
									class="item_inner" data-v-19fda891="">
									<div class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="https://image.guud.com/mall/IL/item/202206/22/B_CFED3634C59F45CE8AF315948BBD12D5.jpg"
											style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												올리브 조명침대 Q (매트제외)
												<!---->
											</p>

										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<!---->
											545,300원
										</p>
									</div>
								</a>
							</div>

							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/kabart/product/prod_detail?prod_id=35745"
									class="item_inner" data-v-19fda891="">
									<div class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="https://image.guud.com/mall/IL/item/202208/08/B_2554A90577224CF0AFEE8D8883995F88.jpg"
											style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												헤이즈 침대 Q (몽블랑30)
												<!---->
											</p>

										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<!---->
											1,035,300원
										</p>
									</div>
								</a>
							</div>

							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/kabart/product/prod_detail?prod_id=105765"
									class="item_inner" data-v-19fda891="">
									<div class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="https://image.guud.com/mall/IL/item/202108/11/B_B7B5B66EAFDD4F5691135D73978A0196.jpg"
											style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												레토 침대 Q_아이보리 (매트제외)
												<!---->
											</p>

										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<!---->
											1,890,000원
										</p>
									</div>
								</a>
							</div>

							<div class="product_card exhibition_product" data-v-19fda891=""
								data-v-81b68464="">
								<a href="/kabart/product/prod_detail?prod_id=42433"
									class="item_inner" data-v-19fda891="">
									<div class="product" style="background-color: #f4f4f4;"
										data-v-09fbcf09="">
										<picture data-v-321fc3b6="" data-v-09fbcf09=""
											class="picture product_img"> <img alt=""
											src="https://image.guud.com/mall/IL/item/202208/08/B_B2D232DB8DBF46DE831DEE3D245E38C1.jpg"
											style="overflow: auto;"></picture>
									</div>
									<div class="product_info_area" data-v-c90cb1da="">
										<div class="title" data-v-c90cb1da="">
											<p class="product_info_brand brand" data-v-878934fe=""
												data-v-c90cb1da="">
												로베르 침대 Q_그레이
												<!---->
											</p>

										</div>
									</div>
									<div class="price price_area" data-v-ef71e3ac=""
										data-v-7dab533a="">
										<p class="amount" data-v-ef71e3ac="">
											<!---->
											1,550,000원
										</p>
									</div>
								</a>
							</div>
						</div>
					</div>
					
					
					
					<!-- 하단 -->
			<!-- 		<div class="pull-right">
						<ul id="footnum" class="pagination"
							style="display: flex; justify-content: center;">

							<li class="paginate_button  active" style="margin: 0 5px;"><a
								href="1">1</a></li>

							<li class="paginate_button " style="margin: 0 5px;"><a
								href="2">2</a></li>

							<li class="paginate_button " style="margin: 0 5px;"><a
								href="3">3</a></li>

							<li class="paginate_button " style="margin: 0 5px;"><a
								href="4">4</a></li>

						</ul>
					</div> -->
					<!-- 페이징 처리 끝-->
				
						<form id="actionForm" action="/kabart/product/prod_sarch_n"
							method="get">
						<!-- <input type="hidden" name="prod_category" value="bed"> -->
							<input type="hidden" name="pageNum" value="1"> 
							<input type="hidden" name="amount" value="8">
						</form>
					
					<!-- /상품 그루핑 -->

					<!-- <form id='searchForm' action="/kabart/product/prod_list" method='get'> -->
				</div>

				<%@include file="../includes/footer.jsp"%>
			</div>
		</div>
	</div>


<script type="text/javascript">

var actionForm = $("#actionForm");
$(".paginate_button a").on(
		"click",
		function(e) {

			e.preventDefault();

			console.log('click');

			actionForm.find("input[name='pageNum']")
					.val($(this).attr("href"));
			actionForm.submit();
		});
</script>
</body>

</html>