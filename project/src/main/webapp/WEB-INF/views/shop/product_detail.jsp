<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.breadcrumb-item+.breadcrumb-item::before {
	content: ">"
}

.breadcrumb {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	padding: .1rem 0rem !important;
	margin-bottom: 0rem;
	list-style: none;
	background-color: white;
	border-radius: .25rem
}

.single_product {
	padding-top: 66px;
	padding-bottom: 140px;
	background-color: white;
	margin-top: 0px;
	padding: 17px
}

.product_name {
	font-size: 20px;
	font-weight: 400;
	margin-top: 0px
}

.badge {
	display: inline-block;
	padding: 0.50em .4em;
	font-size: 75%;
	font-weight: 700;
	line-height: 1;
	text-align: center;
	white-space: nowrap;
	vertical-align: baseline;
	border-radius: .25rem
}

.product-rating {
	margin-top: 10px
}

.rating-review {
	color: #5b5b5b
}

.product_price {
	display: inline-block;
	font-size: 30px;
	font-weight: 500;
	margin-top: 9px;
	clear: left
}

.product_discount {
	display: inline-block;
	font-size: 17px;
	font-weight: 300;
	margin-top: 9px;
	clear: left;
	margin-left: 10px;
	color: red
}

.product_saved {
	display: inline-block;
	font-size: 15px;
	font-weight: 200;
	color: #999999;
	clear: left
}

.singleline {
	margin-top: 1rem;
	margin-bottom: .40rem;
	border: 0;
	border-top: 1px solid rgba(0, 0, 0, .1)
}

.product_info {
	color: #4d4d4d;
	display: inline-block
}

.product_options {
	margin-bottom: 10px
}

.product_description {
	padding-left: 0px
}

.product_quantity {
	width: 104px;
	height: 47px;
	border: solid 1px #e5e5e5;
	border-radius: 3px;
	overflow: hidden;
	padding-left: 8px;
	padding-top: -4px;
	padding-bottom: 44px;
	float: left;
	margin-right: 22px;
	margin-bottom: 11px
}

.order_info {
	margin-top: 18px
}

.shop-button {
	height: 47px
}

.product_fav i {
	line-height: 44px;
	color: #cccccc
}

.product_fav {
	display: inline-block;
	width: 52px;
	height: 46px;
	background: #FFFFFF;
	box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
	border-radius: 11%;
	text-align: center;
	cursor: pointer;
	margin-left: 3px;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease
}

.br-dashed {
	border-radius: 5px;
	border: 1px dashed #dddddd;
	margin-top: 6px
}

.pr-info {
	margin-top: 2px;
	padding-left: 2px;
	margin-left: -14px;
	padding-left: 0px
}

.break-all {
	color: #5e5e5e
}

.image_selected {
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: calc(100% + 15px);
	height: 525px;
	-webkit-transform: translateX(-15px);
	-moz-transform: translateX(-15px);
	-ms-transform: translateX(-15px);
	-o-transform: translateX(-15px);
	transform: translateX(-15px);
	border: solid 1px #e8e8e8;
	box-shadow: 0px 0px 0px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	padding: 15px
}

.image_list li {
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 165px;
	border: solid 1px #e8e8e8;
	box-shadow: 0px 0px 0px rgba(0, 0, 0, 0.1) !important;
	margin-bottom: 15px;
	cursor: pointer;
	padding: 15px;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
	overflow: hidden
}

@media ( max-width : 390px) {
	.product_fav {
		display: none
	}
}

.bbb_combo {
	width: 100%;
	margin-right: 7%;
	padding-top: 21px;
	padding-left: 20px;
	padding-right: 20px;
	padding-bottom: 24px;
	border-radius: 5px;
	margin-top: 0px;
	text-align: -webkit-center
}

.bbb_combo_image {
	width: 170px;
	height: 170px;
	margin-bottom: 15px
}

.fs-10 {
	font-size: 10px
}

.step {
	background: #167af6;
	border-radius: 0.8em;
	-moz-border-radius: 0.8em;
	-webkit-border-radius: 6.8em;
	color: #ffffff;
	display: inline-block;
	font-weight: bold;
	line-height: 3.6em;
	margin-right: 5px;
	text-align: center;
	width: 3.6em;
	margin-top: 116px
}

.row-underline {
	content: "";
	display: block;
	border-bottom: 2px solid #3798db;
	margin: 0px 0px;
	margin-bottom: 20px;
	margin-top: 15px
}

.deal-text {
	margin-left: -10px;
	font-size: 25px;
	margin-bottom: 10px;
	color: #000;
	font-weight: 700
}

.padding-0 {
	padding-left: 0;
	padding-right: 0
}

.padding-2 {
	margin-right: 2px;
	margin-left: 2px
}

.vertical-line {
	display: inline-block;
	border-left: 3px solid #167af6;
	margin: 0 10px;
	height: 364px;
	margin-top: 4px
}

.p-rating {
	color: green
}

.combo-pricing-item {
	display: flex;
	flex-direction: column
}

.boxo-pricing-items {
	display: inline-flex
}

.combo-plus {
	margin-left: 10px;
	margin-right: 18px;
	margin-top: 10px
}

.add-both-cart-button {
	margin-left: 36px
}

.items_text {
	color: #b0b0b0
}

.combo_item_price {
	font-size: 18px
}

.p_specification {
	font-weight: 500;
	margin-left: 22px
}

.mt-10 {
	margin-top: 10px
}

 @charset "utf-8"; 

@import
	url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900')
	;

* {
	margin: 0;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	-webkit-text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
	text-shadow: rgba(0, 0, 0, .01) 0 0 1px
}

body {
	font-family: 'Rubik', sans-serif;
	font-size: 14px;
	font-weight: 400;
	background: #FFFFFF;
	color: #000000
}

div {
	display: block;
	position: relative;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

ul {
	list-style: none;
	margin-bottom: 0px
}

.single_product {
	padding-top: 16px;
	padding-bottom: 140px
}

.image_list li {
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 165px;
	border: solid 1px #e8e8e8;
	box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
	margin-bottom: 15px;
	cursor: pointer;
	padding: 15px;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
	overflow: hidden
}

.image_list li:last-child {
	margin-bottom: 0
}

.image_list li:hover {
	box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.3)
}

.image_list li img {
	max-width: 100%
}

.image_selected {
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: calc(100% + 15px);
	height: 525px;
	-webkit-transform: translateX(-15px);
	-moz-transform: translateX(-15px);
	-ms-transform: translateX(-15px);
	-o-transform: translateX(-15px);
	transform: translateX(-15px);
	border: solid 1px #e8e8e8;
	box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	padding: 15px
}

.image_selected img {
	max-width: 100%
}

.product_category {
	font-size: 12px;
	color: rgba(0, 0, 0, 0.5)
}

.product_rating {
	margin-top: 7px
}

.product_rating i {
	margin-right: 4px
}

.product_rating i::before {
	font-size: 13px
}

.product_text {
	margin-top: 27px
}

.product_text p:last-child {
	margin-bottom: 0px
}

.order_info {
	margin-top: 16px
}

.product_quantity {
	width: 182px;
	height: 50px;
	border: solid 1px #e5e5e5;
	border-radius: 5px;
	overflow: hidden;
	padding-left: 25px;
	float: left;
	margin-right: 30px
}

.product_quantity span {
	display: block;
	height: 50px;
	font-size: 16px;
	font-weight: 300;
	color: rgba(0, 0, 0, 0.5);
	line-height: 50px;
	float: left
}

.product_quantity input {
	display: block;
	width: 30px;
	height: 50px;
	border: none;
	outline: none;
	font-size: 16px;
	font-weight: 300;
	color: rgba(0, 0, 0, 0.5);
	text-align: left;
	padding-left: 9px;
	line-height: 50px;
	float: left
}

.quantity_buttons {
	position: absolute;
	top: 0;
	right: 0;
	height: 100%;
	width: 29px;
	border-left: solid 1px #e5e5e5
}

.quantity_inc, .quantity_dec {
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
	height: 50%;
	cursor: pointer
}

.quantity_control i {
	font-size: 11px;
	color: rgba(0, 0, 0, 0.3);
	pointer-events: none
}

.quantity_control:active {
	border: solid 1px rgba(14, 140, 228, 0.2)
}

.quantity_inc {
	padding-bottom: 2px;
	justify-content: flex-end;
	border-top-right-radius: 5px
}

.quantity_dec {
	padding-top: 2px;
	justify-content: flex-start;
	border-bottom-right-radius: 5px
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">


function check(){  

var fm = document.form;

let result = $("#result").text();
console.log('result='+result) 

$("#amount").val(result);
		  console.log("amount ="+$("#amount").val());

		  let amount =  $("#amount").val();
	console.log("##### ="+amount);

if (amount==0){
		alert("수량을 선택해주세요");

		
		return;
}  

	
	//가상경로 사용
	fm.action = "<%=request.getContextPath()%>
	/cart/insert.do";
		fm.method = "post";
		fm.submit();

		return;
	}
</script>

</head>


<body>
	<form name="form">
		<%@ include file="../menu/include.jsp"%>
		<input type="hidden" name="product_code" value="${vo.product_code}">
		<div class="super_container">
			<header class="header" style="display: none;">
				<div class="header_main">
					<div class="container">
						<div class="row">
							<div
								class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
								<div class="header_search">
									<div class="header_search_content">
										<div class="header_search_form_container">
											<form action="#" class="header_search_form clearfix">
												<div class="custom_dropdown">
													<div class="custom_dropdown_list">
														<span class="custom_dropdown_placeholder clc">All
															Categories</span> <i class="fas fa-chevron-down"></i>
														<ul class="custom_list clc">
															<li><a class="clc" href="#">All Categories</a></li>
														</ul>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<div class="single_product" style="margin-top: 50px;">
				<div class="container"
					style="float: none; margin: 100 auto; background-color: #white; padding: 11px;">
					<div class="row">

						<div class="col-md-6" style="float: none; margin: 0 auto;">
							<div class="image_selected" style="margin-top: 30px;">
								<img
									src="<%=request.getContextPath()%>/resources/images/${vo.filename}"
									style="width: max; height: max; margin: auto;">
							</div>
						</div>
						<div class="col-lg-6 order-3">
							<div class="product_description">
								<nav>
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a
											href="<%=request.getContextPath()%>/main.do">홈으로</a></li>
										<li class="breadcrumb-item"><a
											href="<%=request.getContextPath()%>/product/list.do">상품리스트</a></li>
										<li class="breadcrumb-item active">상품 상세화면</li>
									</ol>
								</nav>
								<div class="product_name">${vo.product_name}</div>

								<div>
									<span class="product_price"> <fmt:formatNumber
											value="${vo.product_price}" pattern="#,###" />&nbsp;원
									</span> <strike class="product_discount"> </strike>
								</div>
								<div></div>
								<hr class="singleline">
								<div>
									<span class="product_info">재고수량 :
										${vo.product_amount}&nbsp;개<span><br> <span
											class="product_info">제품보증기간 : 구입후 1년이내<span><br>
													<span class="product_info">7일이내 환불 가능<span><br>
															<span class="product_info">7일이내 제품 하자시 무료배송<span><br>
																	<span class="product_info">택배 배송기간 2~3일<span><br>
																			<span class="product_info">배송료 : 2,500원 (20만원
																				이상 구매시 무료배송)<span>
								</div>
								<div>
									<div class="row">
										<div class="col-md-5">
											<div class="br-dashed"></div>
										</div>
										<div class="col-md-7"></div>
									</div>
									<div class="row" style="margin-top: 15px;"></div>
								</div>
								<hr class="singleline">
								<div class="order_info d-flex flex-row"></div>


								<div class="row">
									<div class="col-xs-6" style="margin-left: 13px;">

										<div style="display: flex;">
											<input type='button' onclick='count("minus")' value='-'
												class="btn btn-outline-dark  ">
											<div value="result" id='result' style="margin: 10px;">0</div>
											<input name="amount" id="amount" value="" type="hidden">
											<input type='button' onclick='count("plus")' value='+'
												class="btn btn-dark" />
										</div>


										<script>
											function count(type) {
												// 결과를 표시할 element
												const resultElement = document
														.getElementById('result');

												// 현재 화면에 표시된 값
												let number = resultElement.innerText;

												// 더하기/빼기
												if (type === 'plus') {
													number = parseInt(number) + 1;
												} else if (type === 'minus') {
													number = parseInt(number) - 1;
													if (number < 0) {
														number = 0;
													}
												}

												// 결과 출력
												resultElement.innerText = number;

												number = amount;
											}
										</script>
	</form>
	</div>
	<div class="col-xs-6" style="margin-top: 30px;">
		<button type="button" class="btn btn-dark shop-button"
			onclick="check()">Add to Cart</button>
		<div class="product_fav">
			<i class="fas fa-heart"></i>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>



	</tbody>
	<hr>
	</div>
	</div>
	</div>

	<hr>

	<div class="row" style="justify-content: center; margin-left: 450px;">
		<div class="col-12">

			<img
				src="http://img1.tmon.kr/cdn3/deals/2019/06/13/2167568658/review_15604109087_ed09c.jpg"
				class="img-fluid" style="width: 1000px;"> <br>
			<br>
			<br>
			<br> <img
				src="http://loveclock.co.kr/web/watch/CARD/band-service.jpg"
				class="img-fluid" style="width: 1000px;"> <br>
			<br>
			<br>
			<br> <img
				src="https://cdn.imweb.me/upload/S201912072d9f3bab5337e/8faafefd2429a.jpg"
				class="img-fluid" style="width: 1000px;"> <br>
			<br>
			<br>
			<br> <img
				src="http://m.thefindme.co.kr/web/upload/NNEditor/20190823/EAB590ED999820EBB08F20EBB098ED928820EC9588EB82B4.jpg"
				class="img-fluid" style="width: 1000px;">
		</div>
	</div>


</body>
</html>