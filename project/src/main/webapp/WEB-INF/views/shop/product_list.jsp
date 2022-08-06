<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>



/* Importing fonts from Google */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&family=Kalam&display=swap');

/* Reseting */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background: #eee;
   
}

.container {
    overflow: auto;
}

.cards {
    overflow: auto;
    min-height: 550px;
}

.card {
    background: white;
    background: white;
    min-width: 150px;
    height: 200px;
    border-radius: 10px;
    box-shadow: -1px 1px 5px #0000009d;
    padding: 0px;
    border: none;
    transition: all .3s ease-in-out;
}

.card .text-grey {
    color: #ccc;
    font-weight: 500;
}

.card .light-grey {
    color: #aaa;
    font-weight: 300;
}

.card .fs-5 {
    font-size: 1.15rem !important;
}

.card a {
    color: #fff;
    text-decoration: none;
}

.card .profile img {
    width: 200px;
    height: 200px;
    box-shadow: 0 5px 15px rgba(26, 25, 25, 0.329);
    object-fit: cover;
    border-radius: 50%;
}


.card:not(:first-child) {
    margin-left: -8rem;
}

.cards::-webkit-scrollbar {
    height: 10px;
}

.cards::-webkit-scrollbar-track {
    background: inherit;
}

.cards::-webkit-scrollbar-thumb {
    background-color: #3a3a3a;
    background: linear-gradient(to right, #ff002b, #002fff);
    /* background: ; */
    border-radius: 10px;
}


.card:hover,
.card:focus-within {
    transform: translateY(-10rem) rotateZ(0deg);
}

.card:hover~.card,
.card:focus-within~.card {
    transform: translateX(10rem);
}

.card .designation {
    display: inline;
    border-radius: 10px;
    padding: 4px 10px;
    border: 1px solid #ddd;
}




.profile img {
    width: 250px;
    height: 250px;
     box-shadow: 0 5px 15px rgba(26, 25, 25, 0.329);
    object-fit: cover;
    border-radius: 50%;
}



</style>

 <style>

        @import url('https://fonts.googleapis.com/css2?family=Allerta+Stencil&display=swap');



.navbar-nav>li>a{

  text-transform: uppercase;
  font-size: 12px;
  margin-right:20px;
  color: black;
}


.navbar-toggler {
    padding: .20rem .50rem;
    font-size: 1.25rem;
    line-height: 1;
    background-color: transparent;
    border: 1px solid bl;

    }

    .nav-link{

      color:black !important;
    }


.wrapper{
      width: 100%;
    position: absolute;
    height: 100%;
    background-color: #000;
    clip-path: polygon(81% 0, 100% 0, 100% 50%, 100% 100%, 71% 100%);
    transition: 1s all;
}

.navbar-brand{

  color:black;
  font-family: 'Allerta Stencil', sans-serif;
  margin-bottom: 4px;
  font-size: 27px;
}

.navbar-red:hover .wrapper{

  clip-path: polygon(81% 0, 100% 0, 100% 50%, 100% 100%, 65% 100%);

}

.navbar-brand:hover{

  color:black;;
  
}

.navbar-red{

  background-color: #fff;
  color: black;

}

.all-show{

  z-index: 10;
}


    </style>

<style type="text/css">

body {
    background-color: #6200EA;
    color: #000;
    overflow-x: hidden;
}

.card {
    margin: auto;
    padding: 20px;
    border-radius: 15px;
    margin-top: 50px;
    margin-bottom: 50px;
}

.like {
    color: #CFD8DC;
}

.like-checked {
    color: #E53935;
}

.like:hover {
    color: #E53935;
    cursor: pointer;
}

.pic1 {
    width: 90%;
    height: 150px;
    margin-left: auto;
    margin-right: auto;
    display: block;
}

.pic2 {
    width: 70%;
    height: 180px;
    margin-left: auto;
    margin-right: auto;
    display: block;
}

.pic3 {
    width: 70%;
    height: 180px;
    margin-left: auto;
    margin-right: auto;
    display: block;
}

.product-pic {
    padding-left: auto;
    padding-right: auto;
    width: 100%;
    height: 180px;
}

.card-1 {
    padding: 0px 30px 0px 30px !important;
    border: none;
}

.category {
    padding-top: 25px;
    color: grey;
}

.product-name {
    padding-bottom: 15px;
}

.price {
    font-size: 18px;
}

.star-active {
    color: #FFCA28 !important;
}

.fa-star {
    color: #CFD8DC;
    cursor: pointer;
}


</style>

<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  -webkit-font-smoothing: antialiased;
}


.note {
  font-size: 0.375em;
  font-weight: bold;
  text-transform: uppercase;
  color: #fff;
  letter-spacing: 1px;
}

#search {
  -webkit-box-align: center;
          align-items: center;
  background: #d2d2d2;
  border-radius: 10px;
  display: -webkit-box;
  display: flex;
  -webkit-box-pack: justify;
          justify-content: space-between;
  margin: 0.5em 0;
  padding: 0.5em 0.5em 0.5em 1em;
  -webkit-transition: all 0.5s;
  transition: all 0.5s;
  width: 500px;
}

#search:hover, #search:focus {
  background: #8E24AA;
}
#search button,
#search input {
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
  background: transparent;
  border: 0;
  color: inherit;
  font: inherit;
  outline: 0;
}

#button i{
	    font-size: 23px;
}
#search button {
  cursor: pointer;
  padding: 0 0.25em;
}
#search input {
  -webkit-box-flex: 1;
          flex: 1;
		  font-weight: 500;
		      font-size: 23px;
}
#search input::placeholder {
  color: #fff;
}

</style>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js" crossorigin="anonymous"></script>

</head>
<body>

<%@ include file="../menu/include.jsp" %>
  
   
   
    
        <div class="profile">
           
            <c:if test="${sessionScope.member_id != null }">
<a href="<%=request.getContextPath()%>/product/write.do" style="margin-left: 200px;margin-top: 150px;"><button type="button" class="btn btn-sm bg-dark text-white">상품등록</button></a>
             </c:if>

<form action="<%=request.getContextPath()%>/product/list.do" method="post">
      <div id="search" style="float: right;margin-right: 30px;">
  <input id="text" name="keyword"/>
  <button id="button"><i class="fa fa-search"></i></button>
  
</div>
<div class="note">Type & hit enter</div>
       </form>
          
          
          <div class="container-fluid px-2 py-2" style="margin-top: 30px;">
    <div class="row">
        <div class="col-md-12 col-sm-12" style="margin: auto;">
            <div>
                <div class="row" style="width: 1900px;">
                     <c:forEach var="row" items="${list}">
                    <div class="col-md-3 col-lg-3">
                        <div>
                            
                            <div class="product-pic" style="margin-top: 50px;">
                            <a href="<%=request.getContextPath()%>/product/detail/${row.product_code}">
                                <img class="pic1" src="../resources/images/${row.filename}" style="width: 250px;height: 250px;">
                                </a>
                            </div>
                            
                            <div style="margin-top: 100px;text-align: center;">
                            <small class="category" style="margin-top: 100px;">${row.product_brand}</small><span>
                              <c:if test="${sessionScope.member_id != null }">
                            <a href="<%=request.getContextPath()%>/product/edit/${row.product_code}"><button type="button" class="btn btn-sm bg-dark text-white">수정</button></a></span>
                            </c:if>
                                 <a href="<%=request.getContextPath()%>/product/detail/${row.product_code}" style="text-decoration: none;color: black;"> <h5 class="product-name">${row.product_name}</h5></a>
                            <div class="row px-3 justify-content-between">
                                <p class="price"><fmt:formatNumber value="${row.product_price}" pattern="#,###" />&nbsp;원</p>
                               
                                </div>
                            </div>
                        </div>
                    </div>
          
          
        
          
          
          

 </c:forEach>    
  </div>
  
</div>

    
</div>
      </div>
  </div>    
      
           </div>
       
    
                    
                    
                    
                    
                    
             <ul class="pagination justify-content-center" id="pageInfo">

				<c:if test="${pageMaker.prev}">
				<li class="page-item disabled">
					<a class="page-link" href="<%=request.getContextPath() %>/product/list.do?page=${pageMaker.startPage - 1}&brand=${pageMaker.cri.brand}">Previous</a>
				</li>
				</c:if>
				
			
				<c:forEach var="num" begin="${pageMaker.startpage}" end="${pageMaker.endpage}">
				<li class="page-item">
					<a class="page-link" href="<%=request.getContextPath() %>/product/list.do?page=${num}&brand=${pageMaker.cri.brand}&keyword=${pageMaker.cri.keyword}">${num}</a>
				</li>
				</c:forEach>
				
					<c:if test="${pageMaker.next}">
				<li class="page-item">
					<a class="page-link" href="<%=request.getContextPath() %>/product/list.do?page=${pageMaker.endPage + 1}&brand=${pageMaker.cri.brand}">Next</a>
				</li>
				</c:if>
					</ul>       
                    
                    
                    
                    
                    
                    
             
        
  



</body>
</html>