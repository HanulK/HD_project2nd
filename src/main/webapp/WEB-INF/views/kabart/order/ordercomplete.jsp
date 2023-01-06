<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>결재완료</title>
</head>
<body style="">
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div data-v-34b11929="" tabindex="0" class="wrap lg win_os">

				<jsp:include page="../includes/header.jsp"></jsp:include>
				<!---->
				<div data-v-2f436c59="" data-v-34b11929="" class="container buy lg">
					<div data-v-2f436c59="" class="content">
						<div data-v-2f436c59="" class="buy_before">
							<div data-v-2f436c59="" class="buy_before_check">
								<div data-v-748f439e="" data-v-2f436c59="">
									<div data-v-748f439e="" class="title_area">
										<h2 data-v-748f439e="" class="check_title">
											<span data-v-748f439e="" class="accent_text">결재가 완료
												되었습니다.</span><br data-v-748f439e="" class="br_mo">
										</h2>
									</div>
									<c:forEach items="${products}" var="product">
										<div data-v-748f439e="" class="buy_product_area">
											<div data-v-748f439e="" class="buy_product">
												<div data-v-09fbcf09="" data-v-748f439e="" class="product"
													style="background-color: rgb(244, 244, 244);">
													<picture data-v-321fc3b6="" data-v-09fbcf09=""
														class="picture product_img">
													<source data-v-321fc3b6="" type="image/webp"
														srcset='<c:out value="${product.img_srcs}"></c:out>'>
													<source data-v-321fc3b6=""
														srcset='<c:out value="${product.img_srcs}"></c:out>'>
													<img data-v-321fc3b6="" alt="상품 이미지"
														src='<c:out value="${product.img_srcs}"></c:out>'
														loading="lazy" class="image"> </picture>
													<!---->
													<!---->
													<!---->
													<!---->
												</div>
												<div data-v-748f439e="" class="buy_info">
													<div data-v-664f0148="" data-v-748f439e=""
														class="model_info">
														<strong data-v-664f0148="" class="model_number">
															<!----> <span data-v-664f0148="" class="text"><c:out value="${product.prod_category}"></c:out></span>
														</strong>
														<p data-v-664f0148="" class="model_title"><c:out value="${product.prod_name}"></c:out></p>
														<p data-v-664f0148="" class="model_ko"><c:if test="${not empty prodcut.up_id }">
															<c:out value="${product.grade}"></c:out>등급
														</c:if>  </p>
														<div data-v-664f0148="" class="model_desc">
															<p data-v-664f0148="" class="size_txt">수량 : <c:out value="${product.quantity}"></c:out></p>
															
															<p data-v-664f0148="" class="size_txt">
															<c:choose>
															
															<c:when test="${not empty product.up_id}">
															<fmt:formatNumber value="${product.quantity*product.prod_price}"></fmt:formatNumber>  </p>
															</c:when>
															<c:otherwise>
															<fmt:formatNumber value="${product.prod_price*(100-product.discount_rate)/100}"></fmt:formatNumber>  </p>
															</c:otherwise>
															</c:choose>
															<!---->
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
								<div data-v-7601c3d6="" data-v-2f436c59="" buy-type="buy">
									<ul data-v-857b4926="" data-v-7601c3d6="" class="check_list lg"></ul>
									<div data-v-7601c3d6="" class="btn_confirm lg">
										<a data-v-6e799857="" data-v-7601c3d6="" href="/kabart/mypage/buying"
											class="btn full solid"> 주문내역 확인 </a>
									</div>
									<!---->
								</div>
							</div>
							<div data-v-1a009402="" data-v-8c9778e4="" data-v-2f436c59=""
								class="layer lg layer_auth_policy" style="display: none;">
								<div data-v-1a009402="" class="layer_container">
									<a data-v-8c9778e4="" data-v-1a009402="" href="#none"
										class="btn_layer_close"><svg data-v-8c9778e4=""
											data-v-1a009402="" xmlns="http://www.w3.org/2000/svg"
											class="ico-close icon sprite-icons">
                      <use data-v-8c9778e4="" data-v-1a009402=""
												href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-close"
												xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-close"></use>
                    </svg></a>
									<div data-v-1a009402="" class="layer_header">
										<h2 data-v-8c9778e4="" data-v-1a009402="" class="title">검수기준</h2>
									</div>
									<div data-v-1a009402="" class="layer_content">
										<div data-v-27e7bba8="" data-v-8c9778e4=""
											class="category_list" data-v-1a009402="">
											<table data-v-27e7bba8="" class="category_list_items">
												<tbody data-v-27e7bba8="">
													<tr data-v-27e7bba8="">
														<td data-v-27e7bba8="" class="category"><a
															data-v-27e7bba8="" href="#"><span data-v-27e7bba8=""
																class="category_text">신발</span></a></td>
														<td data-v-27e7bba8="" class="category"><a
															data-v-27e7bba8="" href="#"><span data-v-27e7bba8=""
																class="category_text">의류</span></a></td>
														<td data-v-27e7bba8="" class="category"><a
															data-v-27e7bba8="" href="#"><span data-v-27e7bba8=""
																class="category_text">패션 잡화</span></a></td>
													</tr>
													<tr data-v-27e7bba8="">
														<td data-v-27e7bba8="" class="category category_on"><a
															data-v-27e7bba8="" href="#"><span data-v-27e7bba8=""
																class="category_text">테크</span></a></td>
														<td data-v-27e7bba8="" class="category"><a
															data-v-27e7bba8="" href="#"><span data-v-27e7bba8=""
																class="category_text">라이프</span></a></td>
														<td data-v-27e7bba8="" class="category"><a
															data-v-27e7bba8="" href="#"><span data-v-27e7bba8=""
																class="category_text">프리미엄 시계</span></a></td>
													</tr>
													<tr data-v-27e7bba8="">
														<td data-v-27e7bba8="" class="category"><a
															data-v-27e7bba8="" href="#"><span data-v-27e7bba8=""
																class="category_text">프리미엄 가방</span></a></td>
														<td data-v-27e7bba8="" class="category">
															<!---->
														</td>
														<td data-v-27e7bba8="" class="category">
															<!---->
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div data-v-454fa0b2="" data-v-8c9778e4="" class="wrap"
											data-v-1a009402="">
											<h2 data-v-454fa0b2="" class="blind">검수 기준내용</h2>
											<div data-v-454fa0b2="" class="content">


												<meta charset="UTF-8">
												<meta name="viewport"
													content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
												<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
												<style></style>
												<title>검수기준</title>



												<div class="wrap_auth">
													<h2 class="blind">검수 기준내용</h2>
													<div class="content electronics">
														<div class="description_wrap">
															<p>
																<b>[업데이트] 2022/06/24 금</b>
															</p>
															<p class="description">
																<b>[적용일시] 2022/07/01 금 00:00 체결 건 부터</b>
															</p>
															<p class="description">
																<span>KREAM</span>의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준
																확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.
															</p>
															<p class="description">
																회원님께서 판매 또는 구매하신 모든 상품은 <span>KREAM</span>의 전문 검수팀이 제품의
																컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.
															</p>
															<br>
															<p class="description" style="color: #f15746">
																※ 전자기기 거래 관련 주의사항<br> KREAM은 정가품 판정 및 검수기준에 의한 기본
																품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지
																않습니다.<br> <br> 제품 기능에 관한 사항이나 기타 제품 관련 질문은
																제조업체에 문의하시기 바랍니다.<br> 단, 제조업체의 A/S 여부는 보장하지 않습니다.
																(이용약관 제22조 3항 참고)<br> <br> 실링/밀봉 패키지 개봉 시 가치가
																하락할 수 있는 상품의 경우 내용물은 검수하지 않습니다.<br> 상품 정보 확인, 박스 상태
																점검 및 재포장 흔적 유무에 대한 다방면 검수가 진행됩니다.<br> <br> 미사용
																상태 유지를 위해 정상작동 여부는 확인이 불가합니다.<br>
															</p>
															<br>
															<p class="description">KREAM의 검수기준으로 고지된 사항 이외 아래와 같이
																제조사에서 불량으로 인정하지 않는 기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는
																상품의 경우 하자로 판단하지 않으며,이로 인한 구매 취소는 불가하므로 신중한 거래 부탁드립니다.</p>
															<ul class="description_list">
																<li class="list_item">유통 및 보관과정에서 발생할 수 있는 실링의 변형
																	혹은 교체</li>
																<li class="list_item">제조공정, 유통과정 또는 소재 특성 상 발생할 수
																	있는 사항</li>
															</ul>
															<p class="description">
																고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른
																개체차이와 관련하여서는 <b>검수센터 책임자의 최종 판단 하에 결정하게 됩니다.</b>
															</p>
															<p class="description">KREAM의 검수기준에 동의하지 않으실 경우 거래가
																불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.</p>
														</div>
														<div class="check_wrap">
															<h3 class="title_check">불합격/페널티 부과 사항</h3>
															<ul class="check_list">
																<li class="list_item"><br>
																	<div class="table_wrap">
																		<table>
																			<caption>
																				<span class="blind">불합격/페널티 부과사항 구분/불합격/구매자
																					의사 확인/합격 표 </span>
																			</caption>
																			<colgroup>
																				<col style="width: 40%">
																				<col style="width: 20%">
																				<col style="width: 20%">
																				<col style="width: 20%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">구분</th>
																					<th scope="col">불합격</th>
																					<th scope="col">구매자<br> 의사 확인
																					</th>
																					<th scope="col">합격</th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr>
																					<th scope="row">모조품/가품
																						<p class="etc">상품, 박스, 구성품 등</p>
																					</th>
																					<td>○ <em class="text_info_warning">페널티
																							15%</em> <em class="text_info_warning">이용정지</em>
																					</td>
																					<td>-</td>
																					<td>-</td>
																				</tr>
																				<tr>
																					<th scope="row">손상/오염/사용감</th>
																					<td>○ <em class="text_info_warning">페널티
																							15%</em> <em class="text_info_warning">이용정지</em>
																					</td>
																					<td>-</td>
																					<td>-</td>
																				</tr>
																				<tr>
																					<th scope="row">정보 불일치
																						<p class="etc">품번, 상품 등</p>
																					</th>
																					<td>○ <em class="text_info_warning">페널티
																							10%</em>
																					</td>
																					<td>-</td>
																					<td>-</td>
																				</tr>
																			</tbody>
																		</table>
																		<ul class="more_info_list">
																			<li class="more_list_item">※ 손상/오염/사용감 판정의 경우 제품
																				외관 컨디션, 사용으로 인한 오염 등의 기준을 종합하여 검수원과 검수센터 책임자의 최종
																				판단하에 결정하게 됩니다.</li>
																		</ul>
																	</div></li>
															</ul>
															<h3 class="title_check">패키지 및 구성품</h3>
															<ul class="check_list">
																<li class="list_item">
																	<div class="table_wrap">
																		<table>
																			<caption>
																				<span class="blind">패키지 구분/불합격/구매자 의사 확인/합격 표</span>
																			</caption>
																			<colgroup>
																				<col style="width: 40%">
																				<col style="width: 20%">
																				<col style="width: 20%">
																				<col style="width: 20%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">구분</th>
																					<th scope="col">불합격</th>
																					<th scope="col">구매자<br> 의사 확인
																					</th>
																					<th scope="col">합격</th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr>
																					<th scope="row">박스(BOX)패키지 손상/누락
																						<p class="etc">최초 발매 당시 박스 구성 제품(악세서리 등) 찢어짐,
																							얼룩, 오염 등의 손상</p>
																					</th>
																					<td>누락</td>
																					<td>≥12.0cm</td>
																					<td>&lt;12.0cm</td>
																				</tr>
																			</tbody>
																		</table>
																		<ul class="more_info_list">
																			<li class="more_list_item">※ 기타 구성품(인보이스, 영수증 등)
																				및 타 업체 검수택의 경우 포함되는 것을 보장하지 않으며, 검수 중 제거될 수 있습니다.</li>
																		</ul>
																	</div>
																</li>
															</ul>
															<h3 class="title_check">제품 상태</h3>
															<ul class="check_list">
																<li class="list_item"><br>
																	<div class="table_wrap">
																		<table>
																			<caption>
																				<span class="blind">상태 기준 구분/불합격/구매자 의사 확인/합격
																					표</span>
																			</caption>
																			<colgroup>
																				<col style="width: 40%">
																				<col style="width: 20%">
																				<col style="width: 20%">
																				<col style="width: 20%">
																			</colgroup>
																			<thead>
																				<tr>
																					<th scope="col">구분</th>
																					<th scope="col">불합격</th>
																					<th scope="col">구매자<br> 의사 확인
																					</th>
																					<th scope="col">합격</th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr>
																					<th scope="row">제품 손상/오염</th>
																					<td>○</td>
																					<td>-</td>
																					<td>-</td>
																				</tr>
																				<tr>
																					<th scope="row">실링 훼손</th>
																					<td>○</td>
																					<td>-</td>
																					<td>-</td>
																				</tr>
																				<tr>
																					<th scope="row">라벨지 손상</th>
																					<td>필수정보 확인불가</td>
																					<td>-</td>
																					<td>필수정보 확인가능</td>
																				</tr>
																				<tr>
																					<th scope="row">구성품 누락</th>
																					<td>○</td>
																					<td>-</td>
																					<td>-</td>
																				</tr>
																			</tbody>
																		</table>
																		<ul class="more_info_list">
																			<li class="more_list_item">※ 최초 발매 시 실링이 되어있지 않은
																				경우에는 훼손 기준에 해당하지 않습니다.</li>
																			<li class="more_list_item">※ 정식 발매처에서 부착한 2차 실링은
																				제조사에서 부착한 1차 실링과 동일한 기준 적용 대상입니다.</li>
																			<li class="more_list_item">※ 제품의 제조년월은 체결 거래에 따라
																				상이할 수 있습니다.</li>
																			<li class="more_list_item">※ 휴대폰, 애플워치, 아이패드 등
																				셀룰러 데이터 상품의 경우, 개통 혹은 약정 가입된 단말기는 거래가 불가합니다.</li>
																		</ul>
																	</div></li>
															</ul>
															<h3 class="title_check">유의사항</h3>
															<p class="description">
																※ '구매자 의사 확인'의 상품은 최초 보류 알림 기준 <span>24</span>시간 이내 회신이
																없을 경우에 자동 검수 합격 처리되며 이와 관련한 취소는 불가능합니다.
															</p>
															<p class="description">※ 모조품/가품 판매 및 페널티 회피 시 해당 계정은
																회원 자격이 정지되며, 새로운 아이디로 가입을 하여도 이전 거래 기록을 근거로 서비스 이용을 제재할
																수 있습니다.</p>
															<p class="description">※ 국내 발매 제품/해외 발매 제품의 여부는 검수
																불합격 사항이 아니며, 이로 인한 구매 취소 또한 불가합니다.</p>
															<p class="description">※ KREAM을 통해 거래된 모든 상품은 입고 시
																자동화 처리를 위해 고유의 정보를 포함한 스티커가 부착됩니다. 부착 위치는 제품에 따라 차이가 있으며
																이는 발송(반송) 시에도 제거되지 않습니다.</p>
															<p class="add_check">
																<b>검수 불합격 시 반송 택배 운임</b>
															</p>
															<p class="description">[착불]</p>
															<p class="etc_desc">검수 기준상 '불합격' 에 해당하는 반송건</p>
															<p class="description"></p>
															<p class="description">[선불]</p>
															<p class="etc_desc">'구매의사 확인' 이후 발생하는 반송건</p>
														</div>
													</div>
												</div>


											</div>
										</div>
									</div>
								</div>
							</div>
							<div data-v-1a009402="" data-v-e4d91ba6="" data-v-2f436c59=""
								class="layer lg layer_faq" style="display: none;">
								<div data-v-1a009402="" class="layer_container">
									<a data-v-e4d91ba6="" data-v-1a009402=""
										class="btn_layer_close"><svg data-v-e4d91ba6=""
											data-v-1a009402="" xmlns="http://www.w3.org/2000/svg"
											class="ico-close icon sprite-icons">
                      <use data-v-e4d91ba6="" data-v-1a009402=""
												href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-close"
												xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-ico-close"></use>
                    </svg></a>
									<div data-v-1a009402="" class="layer_header">
										<h2 data-v-e4d91ba6="" data-v-1a009402="" class="title">
											이용정책</h2>
									</div>
									<div data-v-1a009402="" class="layer_content">
										<ul data-v-54c3973f="" data-v-e4d91ba6=""
											class="dropdown_list" data-v-1a009402="">
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">페널티 정책</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2022년 7월 1일</p>
															<p>&nbsp;</p>
															<p>판매자와 구매자의 건전한 거래를 위하여 아래 사유에 따라 페널티가 부과됩니다.&nbsp;</p>
															<p>
																결제정보 오류로 페널티 결제 실패 시, <a
																	href="https://kream.co.kr/agreement">이용약관</a>
																제24조("서비스수수료")에 따라 별도의 고지없이 재결제를 시도합니다.
															</p>
															<p>
																<br>&nbsp;
															</p>
															<h2>
																<strong>판매거부</strong>
															</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>판매 거래 체결 후, 1시간 이내 판매 거부</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>판매 거래 체결 후, 1시간 이후 판매 거부</td>
																			<td>
																				<h4>15.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>발송지연</strong>
															</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>
																				<p>판매 거래 체결 후,&nbsp;</p>
																				<p>48시간(일요일・공휴일 제외) 이내&nbsp;</p>
																				<p>발송 정보 미입력</p>
																			</td>
																			<td>
																				<h4>15.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>미입고</strong>
															</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>
																				<p>발송 정보 입력 후,&nbsp;</p>
																				<p>5일(일요일・공휴일 제외) 이내</p>
																				<p>검수센터에 미도착</p>
																			</td>
																			<td>
																				<h4>15.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>가송장 등 허위 정보 입력</td>
																			<td>
																				<h4>15.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>거래 체결 전 상품 발송</td>
																			<td>
																				<h4>15.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>* 발송 정보 입력 시 지원하지 않는 배송 수단의 경우, 운송장 추적 불가, 도착 상품의
																식별 곤란 등의 사유로 인해 입고가 불가하며 이에 해당하는 상품은 반송 처리됩니다.</p>
															<p>* 반송 처리 등 정상적이지 않은 배송 방법을 통해 상품을 검수센터로 전달할 경우 상품
																입고가 불가능합니다.</p>
															<p>* 단, 부득이한 경우 발송 정보 입력 기한 이내에 고객센터를 통한 협의 및 KREAM의
																사전 승인 하에 상품 동일성 식별이 가능하도록 조치한 경우에 한하여 상품 입고가 가능한 점 참고
																부탁드립니다.&nbsp;</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>검수기준 악용</h2>
															<p>아래 검수기준 위반시에는 페널티를 부과합니다. (패키지와 상품 공통 적용)</p>
															<p>&nbsp;</p>
															<h3>신발/의류/패션잡화</h3>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>상품 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>사이즈 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>기본 구성품 누락</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<h3>테크/라이프</h3>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>정보 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>가품, 손상/오염/사용감</h2>
															<p>일반 거래는 판매가 기준이며, 보관 판매는 판매 상품 모든 사이즈의 전월 평균 거래가
																기준입니다.&nbsp;</p>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>가품</td>
																			<td>
																				<h4>15.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>손상/오염/사용감</td>
																			<td>
																				<h4>15.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>페널티 감면 기준</h2>
															<p>&nbsp;</p>
															<p>KREAM은 이용약관 제 24조 ("서비스 수수료") 다. 항에 따라 회원이 아래와 같은
																특별한 사유에 해당하는 것으로 객관적으로 소명할 경우 기 부과된 페널티를 감경 또는 면제할 수
																있습니다.</p>
															<p>&nbsp;</p>
															<p>KREAM은 해당 사안의 사실관계, 이전 사용이력, 거래행태 등을 종합적으로 분석하여 아래
																사유에 해당하는지 여부를 최종 판단합니다.</p>
															<p>&nbsp;</p>
															<p>페널티 감경 또는 면제는 해당 회원의 부주의에도 불구하고 KREAM이 회원의 특별한 사정을
																고려하여 예외적으로 실시하는 조치이므로 하기 특별 사유의 존재 여부는 해당 "회원"이 객관적으로
																증명해야 할 책임이 있습니다.</p>
															<p>&nbsp;</p>
															<ul>
																<li>서비스 사용 미숙에 따른 조작실수임이 명백한 경우</li>
																<li>명백히 택배사의 책임 있는 사유로 인하여 페널티 발생한 경우</li>
																<li>고의성이 없이 가품 및 손상/오염/사용감 있는 제품을 판매한 것이 명백한 경우 (단,
																	페널티 감경이 이루어지더라도 가품 및 손상/오염/사용감 있는 제품&nbsp;판매로 인한 이용정지
																	등의 절차는 진행될 수 있음)</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">가품 ・ 손상/오염/사용감 있는
																상품 판매에 대한 제재</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2021년 1월 29일</p>
															<p>&nbsp;</p>
															<p>
																가품 ・ 손상/오염/사용감 있는 상품 판매를 시도하여 적발된 경우 판매금액의 15.0% 페널티가
																부과되며 판매자는 적발 즉시 이용정지 처리됩니다.<br>가품 판매의 경우 상표법 108조에
																의거 민사상 손해배상 책임 및 형사상 7년 이하의 징역 또는 1억원 이하의 벌금 처벌을 받을 수
																있습니다. 또한 <a href="https://kream.co.kr/agreement">이용약관</a>
																제 27조(검수 등) 6항에 따라 가품 판매자는 상표법 등 관계 법령 위반 혐의로 수사기관에 신고될
																수 있으며, 가품 판정 상품은 수사기관 제출, 압수 등으로 인하여 판매자에게 반환되지 않을 수
																있습니다.
															</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>소명자료 접수</h2>
															<p>KREAM에서는 가품, 손상/오염/사용감 있는 상품으로부터 구매자를 안전하게 보호하고자
																해당 제재를 실행하며, 이에 따라 선의의 피해자가 발생하지 않도록 소명서 및 관련 자료를 고객센터로
																전달해주시면 내부 검토를 진행하고 있습니다.</p>
															<p>&nbsp;</p>
															<h3>
																<strong>해외 온라인결제 구매</strong>
															</h3>
															<p>① 구매한 상품의 상세 캡쳐 이미지</p>
															<p>② 상세 주문 내역</p>
															<p>• &nbsp;상품명, 구매가, 결제일, 배송처 등 포함</p>
															<p>③ 신용카드 명세서 또는 계좌이체 확인서</p>
															<p>• &nbsp;신용카드 명세서: 결제일시, 가맹점 포함</p>
															<p>• &nbsp;계좌이체 확인서: 이체일시, 수신 계좌번호, 수신 계좌주명 포함</p>
															<p>④ 국내 반입 경로 증빙자료</p>
															<p>• &nbsp;관세청 통관 조회 또는 배송대행지 이용내역 등</p>
															<p>&nbsp;</p>
															<h3>
																<strong>국내 온라인결제 구매</strong>
															</h3>
															<p>① 구매한 상품의 상세 캡쳐 이미지</p>
															<p>② 상세 주문 내역</p>
															<p>• &nbsp;상품명, 구매가, 결제일, 배송처 등 포함</p>
															<p>③ 신용카드 명세서 또는 계좌이체 확인서</p>
															<p>
																• &nbsp;신용카드 명세서: 결제일시, 가맹점 포함<br>• &nbsp;계좌이체 확인서:
																이체일시, 수신 계좌번호, 수신 계좌주명 포함
															</p>
															<p>&nbsp;</p>
															<h3>
																<strong>직거래/지인거래</strong>
															</h3>
															<p>① 판매글 전문</p>
															<p>
																• &nbsp;작성일시, 작성자 포함<br>• &nbsp;판매글이 삭제된 경우, 이에
																상응하는 자료&nbsp;<br>• &nbsp;삭제 전 캡쳐한 이미지, 운영자에게 게시글 복구
																요청 등
															</p>
															<p>② 판매자와의 대화 내용 전문</p>
															<p>• &nbsp;일시, 계좌번호, 발송한 운송장번호 등 포함</p>
															<p>③ 계좌이체내역서(이체확인증) 또는 송금확인서</p>
															<p>
																• &nbsp;송금확인서: 이체일,수신계좌번호,계좌주 포함<br>• &nbsp;은행
																사이트에서의 내역 캡쳐는 인정 되지 않음
															</p>
															<p>&nbsp;</p>
															<h3>오프라인 구매</h3>
															<p>① 구매영수증</p>
															<p>• &nbsp;구매처, 구매일시, 금액 포함</p>
															<p>② 카드결제전표, 또는 계좌이체확인서</p>
															<p>• &nbsp;가맹점명, 계좌번호, 결제/이체 일시, 금액 포함</p>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">검수 기준 악용에 대한 제재</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2021년 12월 10일</p>
															<p>&nbsp;</p>
															<p>아래 기준에 해당하는 경우 미입고 처리되며 판매금액의 10% &nbsp;페널티가
																부과됩니다.</p>
															<ul>
																<li>상품/패키지 공통 적용됩니다.</li>
															</ul>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h3>신발</h3>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>상품 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>사이즈 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>기본 구성품 누락</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<h3>의류</h3>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>상품 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>사이즈 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>기본 구성품 누락</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<h3>패션잡화</h3>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>상품 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>사이즈 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<h3>테크/라이프</h3>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>정보 불일치</td>
																			<td>
																				<h4>10.0%</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">거래 실패 시 반송 운임 기준</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2021년 10월 8일</p>
															<p>&nbsp;</p>
															<p>거래 실패로 인한 상품 반송 시, 택배 운임의 선불/착불 기준은 아래와
																같습니다.&nbsp;</p>
															<h2>&nbsp;</h2>
															<p>&nbsp;</p>
															<h2>검수 불합격</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>착불</td>
																			<td>검수 기준상 '불합격' 에 해당하는 반송건</td>
																		</tr>
																		<tr>
																			<td>선불</td>
																			<td>'구매의사 확인' 이후 발생하는 반송건</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>발송지연 ・ 미입고</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td rowspan="3">착불</td>
																			<td>발송정보 입력없이 검수센터 도착</td>
																		</tr>
																		<tr>
																			<td>입고 마감 기한 이후 검수센터 도착</td>
																		</tr>
																		<tr>
																			<td>거래 체결 전 상품 발송</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">부적절행위 금지</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2022년 8월 29일</p>
															<p>&nbsp;</p>
															<p>
																아래에 해당하는 경우, <a href="https://kream.co.kr/agreement">이용약관</a>
																제 7조(이용제한 등), 21조(부적절 행위)에 따라 일시정지나 영구이용정지 조치됩니다. 허위사실
																유포 관련 고의성이 확인될 시, 유관부서로 이관되어 처리될 수 있습니다.
															</p>
															<p>&nbsp;</p>
															<ul>
																<li>가품 거래 시도</li>
																<li>손상/오염/사용감 있는 상품 거래 시도</li>
																<li>여러 개의 계정을 생성하여 자전거래</li>
																<li>결제 혜택 및 포인트 획득, 시세 조작 등의 목적으로 지인과 공모한 허위 거래</li>
																<li>신용카드 불법 현금 유통 (소위 카드깡)</li>
																<li>개인 정보를 타인에게 유출하거나 결제 카드를 대여하여 거래(가족, 친지 포함)</li>
																<li>부당한 목적으로 협의하여 계정이나 명의를 도용하여 부정거래(온라인, 오프라인 포함)</li>
																<li>커뮤니티 내 허위사실 유포 등 서비스 운영을 방해하는 각종 부정행위<br>&nbsp;
																</li>
															</ul>
															<p>&nbsp;</p>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">이상시세 입찰/거래 취소 정책</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 2022년 3월 21일</p>
															<p>&nbsp;</p>
															<p>
																KREAM은 <a href="https://kream.co.kr/agreement">이용약관</a>&nbsp;제21조
																제3항부터 제6항까지의 규정에 따라 회원의 조작 실수, 착오로 인한 사고 발생을 예방하고, 회원의
																조작 실수를 유도하거나 상품 시세를 조작하여 건전한 거래 질서를 어지럽히려는 시도 등 각종 거래
																사고와 부정거래 등을 방지하기 위하여 다음과 같이 이상시세 입찰 또는 거래 취소 정책을 실시하고
																있습니다.
															</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>입찰 또는 체결 시도의 삭제・취소</strong>
															</h2>
															<p>&nbsp;</p>
															<p>KREAM은 보관판매 서비스 등 거래 형태를 불문하고 하기 “이상 고가 거래” 또는 “이상
																저가 거래”와 같은 거래 시도 또는 거래 체결에 대하여 회원에 대한 사전 통보없이 거래 체결 이전인
																경우 해당 회원이 등록한 내용, 입찰 또는 체결 시도를 삭제・취소 또는 거래 제한 조치하고, 거래
																체결 이후인 경우 거래 상대방인 회원(“이상 고가 거래” 시 구매자, “이상 저가 거래” 시 판매자를
																의미함)의 의사를 확인한 후 기 체결된 거래를 취소할 수 있습니다.</p>
															<p>&nbsp;</p>
															<ul>
																<li>KREAM은 해당 입찰/거래에서의 상품 입찰/체결 가격, 해당 상품의 과거 거래
																	체결가, 제조사 또는 주요 대형 유통사에서 책정한 해당 상품의 판매가 등을 기준으로 “이상 고가
																	거래” 또는 “이상 저가 거래” 해당 여부를 판단합니다.</li>
																<li>본 정책에 따른 입찰/거래 체결 삭제∙취소, 거래 제한 등의 조치는 회원에게 거래
																	오류, 입찰 만료 등으로 표시될 수 있습니다.</li>
																<li>KREAM 및 거래 상대방인 회원(“이상 고가 거래” 시 구매자, “이상 저가 거래”
																	시 판매자를 의미함)은 본 정책에 따라 이루어진 회원의 등록 내용, 입찰 또는 체결 시도에 대한
																	삭제∙취소∙거래 제한 조치 또는 거래 체결 건 취소 조치 등과 관련하여 거래 재체결, 재진행,
																	재입찰, 상품 매입/판매 또는 손해배상(시세 등락에 관한 사항 포함) 등 어떠한 의무나 책임도
																	부담하지 아니합니다.</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">커뮤니티 가이드라인</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2021년 12월 3일</p>
															<p>
																<br> <br>KREAM 내 STYLE 서비스는 회원들의 일상 속 스니커즈, 의류
																등의 패션 스타일을 공유하여 서로 영감을 얻을 수 있는 공간입니다. 모두가 건강하고 즐겁게 사용할 수
																있는 공간을 만들기 위해 함께 노력해주세요.
															</p>
															<p>&nbsp;</p>
															<p>커뮤니티 가이드라인은 서비스를 안전하게 유지하고 보호하기 위해 만들어진 정책입니다.
																KREAM을 사용하면 이 가이드라인과 이용약관에 동의하게 됩니다. 이 가이드라인을 위반하는 경우
																콘텐츠가 삭제되거나, 계정이 비활성화되는 등의 제재를 받을 수 있습니다.</p>
															<p>
																<br>&nbsp;
															</p>
															<h2>
																<strong>커뮤니티 활동</strong>
															</h2>
															<p>&nbsp;</p>
															<ul>
																<li>커뮤니티 활동이란 회원이 KREAM의 STYLE 서비스에 사진 및 의견을 포함한
																	콘텐츠를 게시하는 활동입니다.</li>
																<li>회원의 커뮤니티 활동은 다른 서비스 이용자가 콘텐츠를 다운로드하여 열람하거나 개인의
																	가정에서 비영리적인 목적으로 사적 이용하는 것을 허락한 것으로 간주합니다.</li>
																<li>회원은 KREAM의 이용약관에 어긋나지 않는 콘텐츠만을 게시할 수 있습니다.</li>
																<li>회원이 서비스 내에 게시하는 게시물은 서비스 및 관련 프로모션 등에 노출될 수
																	있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정 또는 편집되어 게시될 수 있습니다.</li>
															</ul>
															<p>
																<br>&nbsp;
															</p>
															<h2>
																<strong>콘텐츠의 내용과 형식</strong>
															</h2>
															<p>&nbsp;</p>
															<p>
																<strong>직접 촬영했거나 공유할 권한이 있는 콘텐츠만 공유하세요. &nbsp;</strong>
															</p>
															<p>STYLE에 올리는 콘텐츠의 소유권은 항상 회원님에게 있습니다. 원본 콘텐츠를 게시해야
																하며 복사하거나 인터넷에서 수집하여 게시할 권한이 없는 콘텐츠는 올릴 수 없습니다.</p>
															<p>&nbsp;</p>
															<p>
																<strong>모두가 즐길 수 있는 콘텐츠를 게시하세요. &nbsp;</strong>
															</p>
															<p>STYLE에서 권장하는 내용과 형식에 잘 맞는 콘텐츠는 KREAM 운영팀에 의해 수시로
																선별되며, 홈의 컬렉션을 통해 노출하게 됩니다. 콘텐츠의 내용은 패션 코디 등 일상 속에 바로 적용할
																수 있거나 영감을 줄 수 있는 내용을 권장합니다.</p>
															<p>&nbsp;</p>
															<p>
																<strong>부적절한 콘텐츠는 조치 대상이 될 수 있어요. &nbsp;</strong>
															</p>
															<p>본 커뮤니티 가이드라인에 어긋나는 콘텐츠는 다른 회원들에 의해 신고될 수 있으며 별도의
																경고 조치 없이 수시로 콘텐츠 운영팀에 의해 임시조치될 수 있습니다.</p>
															<p>&nbsp;</p>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>• 판매 또는 직거래를 유도함</td>
																			<td>• 저작권 위반, 개인정보 노출 등 권리 침해가 우려됨</td>
																		</tr>
																		<tr>
																			<td>• 비방, 명예 훼손 또는 수치심을 유발함</td>
																			<td>• 정치적, 종교적 분쟁을 야기함</td>
																		</tr>
																		<tr>
																			<td>• 혐오적, 외설적, 범죄적 행위 등 공공질서 및 미풍양속에 위반됨</td>
																			<td>• 스팸 또는 지나치게 상업적인 내용</td>
																		</tr>
																		<tr>
																			<td>• 서비스에 대한 허위 및 오해의 소지가 있는 내용</td>
																			<td>• 개인정보 도용, 사칭 또는 타인의 정보를 무단 위변조한 경우</td>
																		</tr>
																		<tr>
																			<td colspan="2">• 기타 관계 법령 및 회사의 지침 등에 위반된다고
																				판단되는 경우</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>
																<br>&nbsp;
															</p>
															<h2>
																<strong>콘텐츠의 저작권</strong>
															</h2>
															<p>&nbsp;</p>
															<ul>
																<li>회원이 서비스 내에 게시한 콘텐츠의 저작권은 해당 게시물의 저작자에게 귀속됩니다.</li>
																<li>회원이 게시한 콘텐츠는 저작권법에 의하여 보호를 받으며, KREAM이 작성한 저작물에
																	대한 저작권 및 기타 지적재산권은 KREAM에 귀속합니다.</li>
																<li>회원은 게시한 콘텐츠의 저작권 및 기타 산업재산권을 갖고 있음을 명확히 합니다. 다만
																	회원은 본 서비스에 콘텐츠를 게시함으로써 KREAM이 서비스 및 사업과 관련하여 해당 콘텐츠(및 그
																	2차적 저작물)의 일부 또는 전부를 전 세계적으로 비독점적으로 무상으로 사용할 권리(이용, 공개,
																	반포, 광고, 출판, 복제, 공연, 공중송신, 전시, 배포, 대여, 2차 저작물작성)를 허락하며
																	이를 양도할 수 있음에 동의한 것으로 간주합니다. 또한 KREAM에 대해 저작인격권을 행사하지 않을
																	것에 동의한 것으로 간주합니다.</li>
															</ul>
															<p>
																<br>&nbsp;
															</p>
															<h2>
																<strong>콘텐츠의 관리 및 임시조치</strong>
															</h2>
															<p>&nbsp;</p>
															<ul>
																<li>회원의 게시물이 정보통신망법 및 저작권법 등 관련법에 위반되는 내용을 포함하는 경우,
																	관련법이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등의 임시조치를 요청할 수 있으며
																	KREAM은 관련법에 따라 조치를 하여야 합니다. 고객센터로 문의하시기 바랍니다.</li>
																<li>부적절한 콘텐츠에 대한 판단은 (사)한국인터넷자율정책기구(KISO)의 정책규정과
																	정보통신망법 제 44조의 7 및 그 상세 기준이 되는 정보통신에 관한 심의규정을 참고합니다.</li>
																<li>KREAM은 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타
																	서비스 운영방침 및 관련법에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있습니다</li>
																<li>KREAM은 콘텐츠와 관련한 문제에 대응하고 게시자와 신고자에게 안내를 진행합니다.
																	단, 불법, 음란, 성인 관련 콘텐츠의 경우 안내 없이 조치합니다.</li>
																<li>그 외에 서비스의 신뢰도를 떨어뜨리는 콘텐츠 활용 및 부적절한 활동이 확인되는 경우,
																	해당 계정의 활동 전체가 제한할 수 있습니다.</li>
																<li>본인의 게시물이 노출 중단된 경우, 권리침해 사실을 반박할 수 있는 소명자료를 통해
																	재게시 요청이 가능합니다.</li>
															</ul>
															<p>
																<br>&nbsp;
															</p>
															<p>
																본 커뮤니티 가이드라인과 <a href="https://kream.co.kr/agreement">이용약관</a>을
																참고하시어 건강한 커뮤니티를 만들어주세요. KREAM의 STYLE이 최고의 패션 커뮤니티로 성장할 수
																있도록 도와주셔서 감사합니다.
															</p>
															<p>
																<br>&nbsp;
															</p>
															<p>문의 사항이 있으신 경우 고객센터 또는 1:1문의하기로 문의하시기 바랍니다.</p>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">검수 및 품질 보증 관련
																주의사항</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2021년 9월 10일</p>
															<p>&nbsp;</p>
															<p>KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해
																지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.</p>
															<p>&nbsp;</p>
															<p>회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을
																꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.</p>
															<p>&nbsp;</p>
															<p>KREAM의 검수기준으로 고지된 사항 이외 제조사에서 불량으로 인정하지 않는 기준, 또는
																제조사의 공정상 발생하는 상품상태 중 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의
																경우 하자로 판단하지 않으며, 이로 인한 구매취소는 불가하므로 신중한 거래 부탁 드립니다.</p>
															<p>&nbsp;</p>
															<p>KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서
																KREAM의 검수기준을 반드시 검토하시기 바랍니다.</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>예외사항에 대한 판단</h2>
															<p>&nbsp;</p>
															<p>
																고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른
																개체차이와 관련하여서는 <strong>검수센터 책임자의 최종 판단 하에 결정하게
																	됩니다.</strong>
															</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>제조업체 불량에 대한 면책</h2>
															<p>&nbsp;</p>
															<p>KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매
																중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.</p>
															<p>
																<br>제품 기능에 관한 사항이나 사용 후 불량 발생 등 기타 제품 관련 질문은 제조업체에
																문의하시기 바랍니다.<br>단, 제조업체의 A/S 여부는 보장하지 않습니다. (<a
																	href="https://kream.co.kr/agreement">이용약관</a> 제22조 3항
																참고)
															</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>품질 보증 예외사항 및 면책</h2>
															<p>&nbsp;</p>
															<p>KREAM은 다음과 같은 사항에 대해서 품질 보증에 대한 책임을 지지 않으며 이로 인한
																환불, 구매 취소가 불가합니다.</p>
															<p>&nbsp;</p>
															<ul>
																<li>KREAM의 검수 통과 후 부착된 검수택 또는 검수 실링(VOID 스티커) 등이
																	훼손되거나 제거된 경우</li>
																<li>(제조업체의 자체 실링이 있는 상품) 자체 실링이 개봉되었거나 훼손 또는 제거된 경우</li>
															</ul>
															<p>&nbsp;</p>
															<p>또한, 아래의 사항에 해당하는 상품은 KREAM의 품질 보증 대상이 될 수 없으며 거래가
																불가합니다.</p>
															<p>&nbsp;</p>
															<ul>
																<li>KREAM 검수 완료 증표(검수택, 실링 등), 제조업체의 자체 실링이 위변조된 경우</li>
																<li>KREAM의 검수기준에 의해 가품/중고품 판정을 받은 이후, 재판매하는 경우</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">검수센터 입고 지원 정책</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 2022년 4월 1일</p>
															<p>&nbsp;</p>
															<p>KREAM에서는 판매자 귀책의 거래 실패로 인한 구매자 피해를 예방하고 미입고 반송으로
																인한 판매자의 불편을 최소화하기 위하여, 입고 처리 가능한 케이스를 발굴하여 지원하고 있습니다.</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>입고 지원</strong>
															</h2>
															<figure class="table">
																<table>
																	<thead>
																		<tr>
																			<th>구분</th>
																			<th>비용</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>카테고리 교차, 혼합 오배송</td>
																			<td>1,000원/건</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>* 기타 검수센터 입고 담당자 및 책임자의 최종 판단에 따라 상품 식별이 가능한 경우에도
																입고 지원될 수 있습니다.&nbsp;</p>
															<p>* 입고 지원 비용은 해당 판매 건 정산 시 차감됩니다.</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>유의 사항</strong>
															</h2>
															<p>• 미체결 상품 도착, 이미 사용되었거나 허위가 명백한 송장번호 등 판매자 귀책이 분명한
																경우는 미입고 착불 반송처리됩니다.</p>
															<p>• 검수 불합격 등의 사유로 정산 차감이 불가할 경우, 해당 판매자의 다른 판매건에서
																차감될 수 있습니다.</p>
															<h4>• 판매자 귀책의 기존 미입고 사유에 해당하므로 누적 횟수에 따라 서비스 이용이 제한될
																수 있습니다.</h4>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">배송 사고 보상 프로세스</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 2021년 5월 17일</p>
															<p>&nbsp;</p>
															<p>배송 과정 중 분실/도난/파손 등 사고 발생 시, 아래 프로세스에 따라 보상이 진행될 수
																있습니다.</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>1. 분실/도난</h2>
															<p>&nbsp;</p>
															<p>
																<strong>① 유형 예시</strong>
															</p>
															<p>• &nbsp;집화일 이후 배송 과정 중 최대 7일 이상 흐름이 멈춰 있음</p>
															<p>• &nbsp;상품이 도착한 것으로 조회되나 실물 상품을 수령한 바 없음</p>
															<p>• &nbsp;상품 수령 시 택배 박스를 개봉한 흔적이 확인되고 주문 상품이 포함되어 있지
																않음</p>
															<p>&nbsp;</p>
															<p>
																<strong>② 사고 접수 필요 사항</strong>
															</p>
															<p>• &nbsp;주문서</p>
															<p>• &nbsp;운송장</p>
															<p>* 분실 유형에 따라 사고 접수 시, 도착지 CCTV 영상 등이 요구될 수 있음</p>
															<p>&nbsp;</p>
															<p>
																<strong>③ 접수 기한</strong>
															</p>
															<p>집화일로부터 10일 이내</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>2. 파손/손상</h2>
															<p>&nbsp;</p>
															<p>
																<strong>① 유형 예시</strong>
															</p>
															<p>• &nbsp;택배 박스가 외력에 의해 파손된 것이 육안으로 확인되며, 본품 박스/내용물
																또한 파손이 확인됨</p>
															<p>• &nbsp;택배 박스가 젖어 있으며, 본품 박스/내용물 또한 젖어있음</p>
															<p>&nbsp;</p>
															<p>
																<strong>② 사고 접수 필요 사항</strong>
															</p>
															<p>• &nbsp;주문서</p>
															<p>• &nbsp;운송장</p>
															<p>• &nbsp;운송장 확인이 가능한 택배 박스 사진 1장 및 파손/손상 부위 디테일 사진
																3장 (다각도 촬영)</p>
															<p>• &nbsp;상품 식별이 가능한 박스 라벨 포함 사진 1장</p>
															<p>* 사고 접수 후 파손/손상에 해당하는 실물 상품을 회수하여 파손/손상 정도를 확인함</p>
															<p>&nbsp;</p>
															<p>
																<strong>③ 접수 기한</strong>
															</p>
															<p>배송 완료일로부터 7일 이내</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h3>주의사항</h3>
															<p>• &nbsp;접수 기한이 경과하였거나 구비 사항이 미비할 경우 사고 접수가 불가합니다.</p>
															<p>• &nbsp;사고 확인, 보상금 확정 및 지급까지는 사고 배송 업체 사정에 따라 약
																30일 가량 소요될 수 있습니다.</p>
															<p>• &nbsp;구체적인 보상의 범위는 사고 배송 업체의 보상 정책을 따르며, 거래 체결
																금액을 초과하지 않습니다.</p>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">세금계산서 관련 안내</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2022년 3월 25일</p>
															<p>&nbsp;</p>
															<p>
																<strong>KREAM은 통신판매중개자로서 통신판매의 당사자가 아닙니다. 즉
																	KREAM은 개인간 거래를 중개하는 플랫폼이므로 판매자로부터 상품을 매입하거나, 구매자에게 상품을
																	판매하지 않습니다.</strong>&nbsp;이에 임의로 크림 주식회사 앞으로 세금계산서를 발행할 경우 서비스 제재
																대상이 될 수 있음을 안내 드립니다.
															</p>
															<p>&nbsp;</p>
															<h3>
																<strong>사업자의 서비스 이용 제한</strong>
															</h3>
															<p>KREAM은 개인간 거래 중개 플랫폼으로서 별도로 계약을 체결한 제휴 사업자 이외의
																사업자는 서비스를 이용할 수 없으며, 해당 행위 적발 시 이용약관 제 7조 (이용제한) 및 제 21조
																(부적절 행위)에 따라 서비스 이용 제한 및 회원 자격 상실 등 제재가 발생할 수 있습니다.</p>
															<p>&nbsp;</p>
															<p>이에 따라 사업자의 매입증빙을 위한 세금 계산서 발행 요청 시 위 약관에 의거하여 서비스
																이용이 제한됨을 알려드립니다.&nbsp;</p>
															<p>&nbsp;</p>
															<p>
																<strong>1. 판매이력 확인경로</strong>
															</p>
															<ul>
																<li>'내 쇼핑' 판매내역 중 정산완료된 거래건으로 확인 가능</li>
															</ul>
															<p>&nbsp;</p>
															<p>
																<strong>2. 구매이력 확인경로</strong>
															</p>
															<ul>
																<li>신용카드매출전표, 간편결제사(예. 네이버페이)를 통한 현금영수증 발급사항 확인 가능</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">세무 관련 유의사항</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 2022년 9월 21일</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>사업자의 서비스 이용 제한</strong>
															</h2>
															<p>&nbsp;</p>
															<p>KREAM은 개인간 거래 중개 플랫폼으로서 별도로 계약을 체결한 제휴 사업자 이외의
																사업자는 서비스를 이용할 수 없으며, 해당 행위 적발 시 이용약관 제 7조 (이용제한) 및 제 21조
																(부적절 행위)에 따라 서비스 이용 제한 및 회원 자격 상실 등 제재가 발생할 수 있습니다.</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>세무 관련 유의사항</strong>
															</h2>
															<p>&nbsp;</p>
															<p>상업적인 목적으로 계속적이고 반복적인 거래를 하는 경우, 관련 법령에 따라 사업자 등록 및
																사업자로서의 각종 의무 이행이 필요할 수 있습니다. 불이행 시 가산세 등 불이익을 받을 수 있으니
																자세한 사항은 국세청의 세무 안내 자료를 활용해 주시기 바랍니다.</p>
															<p>&nbsp;</p>
															<p>
																<a
																	href="https://www.nts.go.kr/nts/cm/cntnts/cntntsView.do?mi=2443&amp;cntntsId=7776">국세청
																	세무 안내 &gt;</a>
															</p>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">이용 제한 정책</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2021년 11월 8일</p>
															<p>&nbsp;</p>
															<p>
																KREAM은 회원이 이용약관 또는 관련 법령을 위반하거나 서비스의 정상적인 운영을 방해한 경우, <a
																	href="https://kream.co.kr/agreement">이용약관</a> 제 7 조
																(이용제한 등)에 따라 일시 또는 영구적으로 서비스 이용을 제한할 수 있습니다.
															</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>가품, 손상/오염/사용감 있는 상품 판매</strong>
															</h2>
															<p>적발 횟수에 따라 가산 적용됩니다.</p>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>최소</td>
																			<td>
																				<h4>경고 또는 15일 정지</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>최대</td>
																			<td>
																				<h4>영구 이용정지</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>부정거래</strong>
															</h2>
															<p>시세 조작 행위, 자전 거래 등의 시도가 확인될 경우, 적발 횟수에 따라 가산 적용됩니다.</p>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>최소</td>
																			<td>
																				<h4>경고 또는 7일 정지</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>최대</td>
																			<td>
																				<h4>영구 이용정지</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>
																<strong>명의/결제 도용</strong>
															</h2>
															<p>타인 명의 또는 결제 도용이 확인된 경우, 이용정지 중인 계정을 소유한 회원과 동일인임이
																확인되는 활성 계정의 경우, 해당 계정은 서비스 이용이 제한됩니다.</p>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>명의 도용</td>
																			<td>
																				<h4>영구 이용정지</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>결제 도용</td>
																			<td>
																				<h4>영구 이용정지</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>이용약관 또는 관련 법령 위반</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td>약관 위반</td>
																			<td>
																				<h4>영구 이용정지</h4>
																			</td>
																		</tr>
																		<tr>
																			<td>법령 위반</td>
																			<td>
																				<h4>영구 이용정지</h4>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>기타</h2>
															<p>아래 케이스에 해당할 경우 적발 회수에 따라 이용 제한 조치가 가산 적용됩니다.</p>
															<ul>
																<li>페널티 회피, 미결제</li>
																<li>스타일 불량 게시물 (신고 접수, 판매글 등)</li>
																<li>상담원 보호 조치 필요 사항 (CS 폭언, 욕설, 성희롱 등)</li>
															</ul>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<p>회원은 이용제한 등에 대해 1:1 문의 등을 통하여 이의신청을 할 수 있으며, 유관부서의
																검토를 통해 이의가 정당하다고 인정될 경우 서비스 이용을 재개합니다.</p>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">포인트 정책</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2021년 9월 10일</p>
															<p>&nbsp;</p>
															<p>KREAM 서비스 이용 중 이벤트 참여 등으로 적립된 포인트는 아래 정책이 적용됩니다.</p>
															<p>&nbsp;</p>
															<ul>
																<li>포인트 유효기간은 적립일로부터 최대 1년까지이며, 유형에 따라 달라질 수 있습니다.</li>
																<li>1,000P 이상부터 구매금액 제한 없이 사용할 수 있습니다.</li>
																<li>체결 시점에 보유한 최대 포인트가 적용됩니다.</li>
																<li>입찰 삭제, 거래 취소 시 사용한 포인트는 환불됩니다.</li>
																<li>먼저 적립된 포인트부터 순서대로 사용되며, 사용하지 않을 경우 유효기간이 지나면 자동
																	소멸됩니다.</li>
																<li>유효 기간이 지난 후 환불받은 포인트는 다시 사용할 수 없습니다.</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">포인트 보상 정책</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 2021년 11월 30일</p>
															<p>&nbsp;</p>
															<p>
																KREAM은 <a href="https://kream.co.kr/agreement">이용약관</a>
																제 36조에 따라 상품의 판매/구매 과정 중 당사의 귀책사유로 인한 회원의 피해 발생 시 다음과 같이
																포인트 보상정책을 실시하고 있습니다.
															</p>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>지급기준</h2>
															<figure class="table">
																<table>
																	<thead>
																		<tr>
																			<th>배송</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>
																				<ul>
																					<li>상품 교차, 입고 지연 등이 발생한 경우</li>
																					<li>상품 훼손/분실 또는 배송 지연 등이 발생한 경우</li>
																					<li>반송된 상품이 거래 전 상태와 상이한 것으로 확인될 경우</li>
																					<li>배송받은 제품이 주문 정보와 상이한 것으로 확인될 경우</li>
																				</ul>
																				<p>&nbsp;</p>
																				<p>* 단, 정상적으로 출고 완료된 상품으로 확인될 경우 이용약관 28조 6, 7항에
																					따라 보상 실시</p>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<figure class="table">
																<table>
																	<thead>
																		<tr>
																			<th>검수</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>
																				<ul>
																					<li>검수 기준에 부합하지 아니함에도 당사의 귀책으로 인하여 검수 합격되어 배송된
																						경우</li>
																					<li>당사 플랫폼을 통하여 구매한 제품에 대한 검수 결과가 최초와 상이한 경우</li>
																				</ul>
																				<p>&nbsp;</p>
																				<p>* 단, 검수 기준에 부합하지 아니하는지 여부가 모호하거나 검수 기준과 미세한
																					차이에 불과한 경우 또는 당사 플랫폼에서 제품 구매 후 회원의 관리 부주의로 인한 손상 또는
																					사용으로 인한 검수 불합격 등 회원의 귀책사유가 있는 경우 보상 대상에 해당하지 아니함</p>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<figure class="table">
																<table>
																	<thead>
																		<tr>
																			<th>기타</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>
																				<ul>
																					<li>시스템 오류로 인하여 회원의 의사와 무관한 결제 등이 발생한 경우</li>
																					<li>구매자 의사와 무관한 거래 취소 (발송 지연/미입고/검수 불합격)로 인하여
																						해당 구매에 사용한 포인트의 유효기간이 경과한 경우</li>
																					<li>기타 회사가 합리적인 판단에 기하여 포인트를 지급할 필요가 있다고 인정한
																						경우</li>
																				</ul>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>&nbsp;</p>
															<h2>주의사항</h2>
															<p>* 구체적인 보상의 범위는 문제된 사안의 사실관계, 회사의 귀책 정도 등을 고려한 내부
																보상 정책에 따라 결정되며, 본 보상 정책에 따라 지급되는 포인트는 10,000P 를 초과하지
																않습니다.</p>
															<p>
																* <strong>본 보상 정책에 따라 지급되는 포인트의 유효기간은 지급일로부터
																	30일입니다. 유효기간이 경과된 미사용 포인트는 자동 소멸됩니다.</strong>
															</p>
															<p>
																* 적립/소멸 등 포인트 관련 세부 사항은 <a
																	href="https://kream.co.kr/faq/point">포인트 정책</a>에 별도 표기
															</p>
														</div>
													</div>
												</div>
											</li>
											<li data-v-54c3973f="" class="">
												<div data-v-54c3973f="" class="dropdown">
													<div data-v-54c3973f="" class="dropdown_head">
														<!---->
														<div data-v-54c3973f="" class="title_box">
															<!---->
															<p data-v-54c3973f="" class="title">서비스 수수료</p>
														</div>
														<svg data-v-54c3973f="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons arr-lg-down">
                              <use data-v-54c3973f=""
																href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"
																xlink:href="/_nuxt/3182c3b1ca2f77da7bc3e1acf109306c.svg#i-arr-lg-down"></use>
                            </svg>
													</div>
													<div data-v-54c3973f="" class="dropdown_content">
														<div data-v-54c3973f="" class="content">
															<p>최종 수정일 &nbsp;2022년 12월 1일</p>
															<p>적용일 &nbsp;2022년 12월 1일 부터</p>
															<p>&nbsp;</p>
															<p>KREAM의 회원으로써 판매와 구매 시 서비스 이용료를 지급하실 책임이 있습니다.</p>
															<p>거래 중개 및 검수 등 KREAM 서비스를 이용함에 따라 부과되는 수수료 등 이용료는
																아래와 같습니다.</p>
															<p>&nbsp;</p>
															<h2>수수료</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td colspan="2">검수비</td>
																			<td>무료 (이벤트 중)</td>
																		</tr>
																		<tr>
																			<td colspan="2">판매</td>
																			<td>최대 2%</td>
																		</tr>
																		<tr>
																			<td colspan="2">구매</td>
																			<td>최대 3%</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<h2>배송비</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td rowspan="2">
																				<p>판매</p>
																				<p>&nbsp;</p>
																			</td>
																			<td>판매자 &gt; 검수센터</td>
																			<td>선불 ・ 판매자 부담</td>
																		</tr>
																		<tr>
																			<td>회수 배송비</td>
																			<td>5,000원/건</td>
																		</tr>
																		<tr>
																			<td rowspan="2">
																				<p>구매</p>
																				<p>&nbsp;</p>
																			</td>
																			<td>빠른 배송</td>
																			<td>5,000원/건</td>
																		</tr>
																		<tr>
																			<td>일반 배송</td>
																			<td>3,000원/건</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<h2>기타</h2>
															<figure class="table">
																<table>
																	<tbody>
																		<tr>
																			<td rowspan="2">
																				<p>판매</p>
																				<p>&nbsp;</p>
																			</td>
																			<td>보관판매 보증금</td>
																			<td>
																				<p>3,000원/건</p>
																				<p>(검수 완료 시 환불)</p>
																			</td>
																		</tr>
																		<tr>
																			<td>창고 이용료</td>
																			<td>3,000원/건</td>
																		</tr>
																	</tbody>
																</table>
															</figure>
															<p>&nbsp;</p>
															<p>* 회사의 운영 정책에 따라 추후 변경될 수 있습니다.</p>
															<p>
																* 페널티 부과 사유 및 금액은&nbsp;<a
																	href="https://kream.co.kr/faq/penalty">페널티 정책</a>에 별도
																표기
															</p>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
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

</body>

</html>