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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js" crossorigin="anonymous"></script>

</head>
<body>

 <nav class="navbar navbar-expand-lg navbar-red navbar-dark">
        <div class="wrapper">
          
        </div>
  <div class="container-fluid all-show">
    <a class="navbar-brand" href="#" style="color: black">다있쏘 <i class="fa fa-codepen"></i></a>
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon">

        
      </span>


      
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Products</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#">Services</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#">Events</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#">contact</a>
        </li>

        
        
        
      </ul>
      <div class="d-flex flex-column sim" style="margin-left: 290px;font-size: 40px;">

        <span><i class="fa-solid fa-crown"></i></span>
        
        
      </div>

      <div class="d-flex" style="margin-left: 560px;color: white;">

        <div style="margin-right: 40px;">
        
        <c:if test="${sessionScope.member_id ==null }">
        
           <strong> <a href="/project/member/login.do" style="color: white;">로그인</a></strong>
       
           <strong><a href="/project/member/join.do" style="color: white;">회원가입</a></strong>
        </c:if>   
           
             <c:if test="${sessionScope.member_id !=null }">
        
           ${sessionScope.name}(${sessionScope.member_id}) 님 어서오세요
       
           <strong><a href="/project/member/logout.do" style="color: white;">로그아웃</a></strong>
        </c:if>   

          <a style="font-size: 28px;margin-left: 60px;"> <i class="fa-solid fa-bag-shopping"></i></a>
        </div>

      </div>

    </div>
  </div>
</nav>


<div class="container-fluid px-1 py-5 mx-auto">
    <div class="row justify-content-center">
        <div class="col-md-9 col-sm-12">
      
                <div class="row">
                    <div class="col-md-3 col-lg-3">
                        <div class="card">
                            <div class="pr-3 row justify-content-end">
                                <div class="fa fa-heart like like-checked"></div>
                            </div>
                            <div class="product-pic">
                                <img class="pic1" src="https://i.imgur.com/EaNHGjT.png">
                            </div>
                            <small class="category">Shoes</small>
                            <h5 class="product-name">Leather Men's Sneakers</h5>
                            <div class="row px-3 justify-content-between">
                                <p class="price">$45.99</p> 
                            </div>
                        </div>
                    </div>
                   
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </div>
            </div>
        </div>
    </div>



</body>
</html>