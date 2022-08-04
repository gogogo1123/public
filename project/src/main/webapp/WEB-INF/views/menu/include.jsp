<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

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

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-red navbar-dark">
        <div class="wrapper">
          
        </div>
  <div class="container-fluid all-show">
    <a class="navbar-brand" href="<%=request.getContextPath()%>/main.do" style="color: black">다있쏘 <i class="fa fa-codepen"></i></a>
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon">

        
         <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/product/list.do">Products</a>
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
        
        
        
        
        
      </span>


      
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/product/list.do">Products</a>
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

      <div class="d-flex" style="margin-left: 700px;color: white;">

        <div style="margin-right: 40px;">
           <strong> <a href="/project/member/login.do" style="color: white;">로그인</a></strong>
       
           <strong>    <a href="#" style="color: white;">회원가입</a></strong>

          <a style="font-size: 28px;margin-left: 60px;"> <i class="fa-solid fa-bag-shopping"></i></a>
        </div>

      </div>

    </div>
  </div>
</nav>
</body>
</html>