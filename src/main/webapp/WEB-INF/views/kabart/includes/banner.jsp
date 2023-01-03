<%@ page language="java" pageEncoding="UTF-8"%>

<!-- banner -->
<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slidewrap">
		
		<ul class="slidelist">
			<!-- 슬라이드 영역 -->
			<li class="slideitem">
				<a>
					<img src="https://image.guud.com/mall/DP/display/detail/F939858275044DFA9615C0E937FD06F6.jpg">
				</a>
			</li>
			<li class="slideitem">
				<a>
					<img src="https://image.guud.com/mall/DP/display/detail/41B81B1A0FB84E97B50D88A750F89F9D.jpg">
				</a>
			</li>
			<li class="slideitem">
				<a>
					<img src="https://image.guud.com/mall/DP/display/detail/7FD86E8181C94553A3A4A906D9A7561D.jpg">
				</a>
			</li>

			<!-- 좌,우 슬라이드 버튼 -->
			<div class="slide-control">
				<div>
					<label for="slide03" class="left"></label>
					<label for="slide02" class="right"></label>
				</div>
				<div>
					<label for="slide01" class="left"></label>
					<label for="slide03" class="right"></label>
				</div>
				<div>
					<label for="slide02" class="left"></label>
					<label for="slide01" class="right"></label>
				</div>
			</div>

		</ul>
		<!-- 페이징 -->
		<ul class="slide-pagelist">
			<li><label for="slide01"></label></li>
			<li><label for="slide02"></label></li>
			<li><label for="slide03"></label></li>
		</ul>
	</div>

	
</div>