<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

*{margin: 0;padding: 0;-webkit-font-smoothing: antialiased;-webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;text-shadow: rgba(0,0,0,.01) 0 0 1px}body{font-family: 'Rubik', sans-serif;font-size: 14px;font-weight: 400;background: #E0E0E0;color: #000000}ul{list-style: none;margin-bottom: 0px}.button{display: inline-block;background: #0e8ce4;border-radius: 5px;height: 48px;-webkit-transition: all 200ms ease;-moz-transition: all 200ms ease;-ms-transition: all 200ms ease;-o-transition: all 200ms ease;transition: all 200ms ease}.button a{display: block;font-size: 18px;font-weight: 400;line-height: 48px;color: #FFFFFF;padding-left: 35px;padding-right: 35px}.button:hover{opacity: 0.8}.cart_section{width: 100%;padding-top: 93px;padding-bottom: 111px}.cart_title{font-size: 30px;font-weight: 500}.cart_items{margin-top: 8px}.cart_list{border: solid 1px #e8e8e8;box-shadow: 0px 1px 5px rgba(0,0,0,0.1);background-color: #fff}.cart_item{width: 100%;padding: 15px;padding-right: 46px}.cart_item_image{width: 133px;height: 133px;float: left}.cart_item_image img{max-width: 100%}.cart_item_info{width: calc(100% - 133px);float: left;padding-top: 18px}.cart_item_name{margin-left: 7.53%}.cart_item_title{font-size: 14px;font-weight: 400;color: rgba(0,0,0,0.5)}.cart_item_text{font-size: 18px;margin-top: 35px}.cart_item_text span{display: inline-block;width: 20px;height: 20px;border-radius: 50%;margin-right: 11px;-webkit-transform: translateY(4px);-moz-transform: translateY(4px);-ms-transform: translateY(4px);-o-transform: translateY(4px);transform: translateY(4px)}.cart_item_price{text-align: right}.cart_item_total{text-align: right}.order_total{width: 100%;height: 60px;margin-top: 30px;border: solid 1px #e8e8e8;box-shadow: 0px 1px 5px rgba(0,0,0,0.1);padding-right: 46px;padding-left: 15px;background-color: #fff}.order_total_title{display: inline-block;font-size: 14px;color: rgba(0,0,0,0.5);line-height: 60px}.order_total_amount{display: inline-block;font-size: 18px;font-weight: 500;margin-left: 26px;line-height: 60px}.cart_buttons{margin-top: 60px;text-align: right}.cart_button_clear{display: inline-block;border: none;font-size: 18px;font-weight: 400;line-height: 48px;color: rgba(0,0,0,0.5);background: #FFFFFF;border: solid 1px #b2b2b2;padding-left: 35px;padding-right: 35px;outline: none;cursor: pointer;margin-right: 26px}.cart_button_clear:hover{border-color: #0e8ce4;color: #0e8ce4}.cart_button_checkout{display: inline-block;border: none;font-size: 18px;font-weight: 400;line-height: 48px;color: #FFFFFF;padding-left: 35px;padding-right: 35px;outline: none;cursor: pointer;vertical-align: top}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Karla:wght@200;300;400;500&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/image/style.css">


<script>

$(function(){
	

	
	$("#btnDelete").click(function(){
		
		if(confirm("장바구니를 비우시겠습니까?")){
			location.href="<%=request.getContextPath()%>/cart/deleteAll.do";
		}
	})
	
	
})

</script>


</head>
<body>


<%@ include file="../menu/include.jsp" %>


<form action="<%=request.getContextPath()%>/cart/update.do" method="post">
<div class="cart_section">
     <div class="container-fluid">
     <header>
    <div class="d-flex justify-content-center align-items-center pb-3">
        <div class="px-sm-5 px-2 active">장바구니
            <span class="fas fa-check"></span>
        </div>
        <div class="px-sm-5 px-2">결제페이지</div>
        <div class="px-sm-5 px-2">결제완료</div>
    </div>
    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="25" aria-valuemin="0"
            aria-valuemax="100"></div>
    </div>
</header>
         <div class="row">
             <div class="col-lg-10 offset-lg-1">
                 <div class="cart_container">
                     <div class="cart_title">장바구니함
                     <div style="float: right;"><button type="button" id="btnDelete" class="btn btn-sm bg-dark text-dark " style="margin-right: 28px;">
                     <a style="color: white;">전체삭제</a></div
                     ></div>
               
                     <div class="cart_items">
                     
                            <c:forEach var="row" items="${map.list}">
                     
                         <ul class="cart_list">
                             <li class="cart_item clearfix">

                                 <div class="cart_item_image"><img src="<%=request.getContextPath()%>/resources/images/${row.filename}" style="width: 133px;height: 133px;"></div>
                                 <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                     <div class="cart_item_name cart_info_col">
                                         <div class="cart_item_title">Name</div>
                                         <div class="cart_item_text">${row.product_name}</div>
                                     </div>
                                     <div class="cart_item_color cart_info_col">
                                         <div class="cart_item_title">Brand</div>
                                         <div class="cart_item_text"></span>${row.product_brand}</div>
                                     </div>
                                     <div class="cart_item_quantity cart_info_col">
                                         <div class="cart_item_title">amount</div>
                                        <input type="number"" name="amount" value="${row.amount}" style="width: 50px;border: none;margin-top: 35px;" >
                                        <input type="hidden" name="cart_id" value="${row.cart_id}">
                                        <button class="btn btn-sm bg-dark text-dark" ><a style="color: white;">변경</a></button>
                                     </div>
                                     <div class="cart_item_price cart_info_col">
                                         <div class="cart_item_title">Price</div>
                                         <div class="cart_item_text"><fmt:formatNumber value="${row.product_price}" pattern="#,###" />&nbsp;원</div>
                                     </div>
                                     <div class="cart_item_total cart_info_col">
                                         <div class="cart_item_title">Total</div>
                                         <div class="cart_item_text"><fmt:formatNumber value="${row.money}" pattern="#,###" />&nbsp;원</div>
                                           
                                     </div>
                                      <div class="cart_item_total cart_info_col">
                                         <div class="cart_item_title">삭제</div>
                                         <div class="cart_item_text">
<a style="color: white;text-decoration: none;" href="<%=request.getContextPath()%>/cart/delete.do?cart_id=${row.cart_id}">
<button type="button" class="btn btn-sm bg-dark text-dark" style="color: white;">삭제</a>
</button>
</div>
                                     </div>
                                 </div>
                             </li>
                         </ul>
                         
                                </c:forEach>
                     </div>
    </form>        
                  
                     <div class="order_total">
                         <div class="order_total_content text-md-right" style="float: right;">
                             <div class="order_total_title">총 금액:</div>
                             <div class="order_total_amount"><fmt:formatNumber value="${map.sumMoney}" pattern="#,###" />&nbsp;원</div>
                         </div>
                     </div>
                     <div class="cart_buttons"> 
                     <button style="width: 162px;height: 48px;"  type="button" class="btn btn-sm bg-light text-dark" onclick="location.href='<%=request.getContextPath()%>/product/list.do'">상품리스트</button>
                      <a style="color: white;"><button type="button" class="btn btn-sm bg-dark text-dark" style="width: 162px;height: 48px;" onclick="location.href='<%=request.getContextPath()%>/order/insert.do'">결제하기</a></button> </div>
                 </div>
             </div>
         </div>
     </div>
 </div>






</body>
</html>