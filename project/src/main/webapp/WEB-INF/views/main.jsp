<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&family=Noto+Sans+KR:wght@300&family=Open+Sans:ital@1&display=swap');
#brand-logo {
  font-size: 34px;
}

#app-navbar {
  background: white;
}

body {
  background: white;
}

li,a{
color: black;
}


.peo{

background-image: url("/resources/image/abc.png");
 
        width: 2000px;
        height: 700px;

}
</style>
<script src="https://kit.fontawesome.com/6c060c00b1.js" crossorigin="anonymous"></script>
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
    background: #f9f9f9;
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
   
    object-fit: cover;
    border-radius: 50%;
}



</style>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js" crossorigin="anonymous"></script>

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

</head>





 <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />

    <!-- Demo styles -->
    <style>
      html,
      body {
        position: relative;
        height: 100%;
      }

      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }

      .swiper {
        width: 100%;
        padding-top: 50px;
        padding-bottom: 50px;
      }

      .swiper-slide {
        background-position: center;
        background-size: cover;
        width: 300px;
        height: 300px;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
      }
    </style>













<body>


<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="bootstrap" viewBox="0 0 118 94">
    <title>Bootstrap</title>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
  </symbol>
  <symbol id="facebook" viewBox="0 0 16 16">
    <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
  </symbol>
  <symbol id="instagram" viewBox="0 0 16 16">
      <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
  </symbol>
  <symbol id="twitter" viewBox="0 0 16 16">
    <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
  </symbol>
</svg>



<!-- nav -->


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

 
<!-- <div class="peo" style="background: url('resources/image/cc.jpg') no-repeat ;width: 1800px;height: 500px;margin: auto;margin-top: 30px;">

</div>

<hr style="margin-left: 100px;background-color: black;height: 1px;border: 0;color: black;margin-top: 100px;"> -->

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="resources/image/dd.png" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="resources/image/gg.png" class="d-block w-100" >
    </div>
    <div class="carousel-item">
      <img src="resources/image/cc.jpg" class="d-block w-100" >
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



<br>

<div style="width: 1600px;height: 400px;display: flex;margin-left: 400px;">

    <SPAN style="margin-top: 50px;text-align: center;font-size: 24px;font-family: 'Nanum Gothic', sans-serif;">브랜드별</SPAN>
   
    <div class="card" style="width: 300px;height:300px;margin-top: 150px;background-color:white;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">ROLEX</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;margin: auto;">
                        <img src="https://newsimg.sedaily.com/2022/01/01/260P4GNZZK_2.jpg"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src="https://www.pngmart.com/files/4/Rolex-Logo-PNG-Photos.png"
                        alt="" style="width: 100px;height: 50px;">
                 
                </div>
            </div>
             </div>
             
             
               <div class="card" style="width: 300px;height:300px;margin-top: 150px;background-color: white;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">Patek Philippe </span>
             
            </div>
          <div class="profile" style="margin-left: 6px;margin: auto;">
                        <img src="https://cdn-images.farfetch-contents.com/14/68/12/42/14681242_32675013_480.jpg"
                            alt="" style="background-color: #f9f9f9;">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src="https://img.danawa.com/images/news/images/000356/20190820085348646_Z4UGNWFL.png"
                        alt="" style="width: 100px;height: 50px;">
                 
                </div>
            </div>
             </div>
             
               <div class="card" style="width: 300px;height:300px;margin-top: 150px;background-color: white;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">TAGHeuer</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;margin: auto;">
                        <img src="http://image.auction.co.kr/itemimage/10/b5/1f/10b51f5e26.jpg"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src="https://mblogthumb-phinf.pstatic.net/20160817_193/ppanppane_1471402360269K04Lz_PNG/%C5%C2%B1%D7%C8%A3%C0%CC%BE%EE_%B7%CE%B0%ED_%282%29.png?type=w800"
                        alt="" style="width: 100px;height: 100px;">
                 
                </div>
            </div>
             </div>
             
               <div class="card" style="width: 300px;height:300px;margin-top: 150px;background-color: white;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">Breguet</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;margin: auto;">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ11AtnKzqUuGwj2k6D9DdD-fFPuk7ALmw6sA&usqp=CAU"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src=https://img.danawa.com/images/news/images/000997/20211217100822581_TR14E7ZQ.png
                        alt="" style="width: 100px;height: 50px;">
                 
                </div>
            </div>
             </div>
             
               <div class="card" style="width: 300px;height:300px;margin-top: 150px;background-color: white;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">VACHERON CONSTANTIN</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;margin: auto;">
                        <img src="https://boorank.com/getImage.php?l=vendor_inventory/574a/90acb24fafb2346587513cfa5cbdd40cf8d6caaf353c03aa0f977390f95d.jpg"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src=https://m.vintageye.kr/web/product/big/202010/a9c004c98ba3ba65fdd4351312535743.png
                        alt="" style="width: 100px;height: 100px;">
                 
                </div>
            </div>
             </div>
    
      <div class="card" style="width: 300px;height:300px;margin-top: 150px;background-color: white;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">BREITLING</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;margin: auto;">
                        <img src="https://cdn2.chrono24.com/images/uhren/24274574-vncjgjnmp3wkvayxurneupy2-ExtraLarge.jpg"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src="https://mblogthumb-phinf.pstatic.net/MjAxOTAyMjZfMTcw/MDAxNTUxMTUzOTE0NjUy.yEf3EZ9tQP1nxnYbxQBa2q93o5gihaBY1lVTEyCRUj8g.kS5X6y7JX4_nKI_TRWH9LH48rIAg2HhUE7cifG3ni0Ag.PNG.aojun3728/BRL1.png?type=w800"
                        alt="" style="width: 100px;height: 50px;margin-bottom: 10px;" >
                 
                </div>
            </div>
             </div>
             
             
    </div>
   
















<br><br><br>






<hr style="margin-left: 100px;background-color: black;height: 1px;margin-top: 100px;">
 <Br>
 
<div style="width: 1900px;height: 300px;align-items: center;display: flex;" >

<div style="width: 300px;text-align: center;align-items: center;">
<p style="margin: auto;margin-left: 200px;font-size: 24px;font-family: 'Nanum Gothic', sans-serif;">신상품
</p>
  <span class="text-grey fs-12" style="color: black;margin-left: 200px;font-size: 12px;">(최신등록)</span>
</div>
<div class="row" style="width: 1600px;margin-left: 140px;margin-right: 10px;">

            <div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
                <div class="product">
                    <img src="resources/image1/1.webp"
                        alt="" style="width: 250px;height: 250px;">
                           <div style="text-align:center; margin-top: 28px;"><span class="text-grey fs-12" style="color: black;margin-top:18px; font-size: 16px;text-align: right;margin-top: 6px;">3.680.000 원</span></div>
  </div>
</div>

<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
                <div class="product">
                    <img src="resources/image1/2.jpg"
                        alt="" style="width: 250px;height: 250px;">
                         <div style="text-align:center; margin-top: 28px;"><span class="text-grey fs-12" style="color: black;margin-top:18px; font-size: 16px;text-align: right;margin-top: 6px;">1.680.000 원</span></div>
  </div>
</div>

<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
                <div class="product">
                    <img src="resources/image1/3.webp"
                        alt="" style="width: 250px;height: 250px;">
                         <div style="text-align:center; margin-top: 28px;"><span class="text-grey fs-12" style="color: black;margin-top:18px; font-size: 16px;text-align: right;margin-top: 6px;">5.680.000 원</span></div>
  </div>
</div>

<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
                <div class="product">
                    <img src="resources/image1/4.jpg"
                        alt="" style="width: 250px;height: 250px;">
                          <div style="text-align:center; margin-top: 28px;"><span class="text-grey fs-12" style="color: black;margin-top:18px; font-size: 16px;text-align: right;margin-top: 6px;">6.680.000 원</span></div>
  </div>
</div>




</div>
</div>





  <br><br><br>
  
  
  
  <hr style="background-color:black;height: 1px;	margin-left: 100px;">


  <br><br><br>


  
 <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-1.jpg" />
          <span>ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</span>
        </div>
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-2.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-3.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-4.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-5.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-6.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-7.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-8.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="https://swiperjs.com/demos/images/nature-9.jpg" />
        </div>
      </div>
      <div class="swiper-pagination"></div>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        coverflowEffect: {
          rotate: 50,
          stretch: 0,
          depth: 100,
          modifier: 1,
          slideShadows: true,
        },
        pagination: {
          el: ".swiper-pagination",
        },
      });
    </script>
  
  

     
     
     
     
     
     
     
     
      <br><br><br>
      
    <hr style="background-color:black;height: 1px;	margin-left: 100px;">
        <br><br><br>
     
  <div style="width: 1700px;height: 2000px;margin: auto;"> 
  <div style="height: 200px;display: flex;justify-content: center;">
  
  
  
  <div style="font-family: 'Nanum Gothic', sans-serif;font-size: 34px;">젊은 감각,대중적 인기 자랑하는 시계 컬렉션</div>

  
  
  </div>
  
  
<div style="height: 400px;">
   <div class="profile" style="margin-left: 6px;margin: auto;display: flex;margin-left: 200px;">
                        <img src="resources/image1/1.webp"
                            alt="">
                        <div style="font-family: 'Nanum Gothic', sans-serif;font-size: 18px;margin-left: 100px;margin-top: 150px;">롤렉스 데이토나 (116523)<Br>
                          <span class="text-grey fs-12" style="color: black;margin-left: 70px;font-size: 14px;">ROLEX </span>
                        
                         </div>
                       
                    </div>
    <div style="width: 260px;height: 150px;background-color: #f9f9f9;margin-bottom: 50px;margin-left: 200px;"></div>
     </div> 
     
     
     <div style="height: 400px;margin-top: 40px;">
   <div class="profile" style="margin-left: 6px;margin: auto;display: flex;margin-left: 800px;">
   
    
   
   <div style="font-family: 'Nanum Gothic', sans-serif;font-size: 18px;margin-right: 100px;margin-top: 150px;">파텍필립 그랜드 마스터 차임(Ref.6300A)<Br>
                          <span class="text-grey fs-12" style="color: black;margin-left: 110px;font-size: 14px;">Patek Philippe </span>
                        
                         </div>
                        <img src="resources/image1/2.jpg"
                            alt="">
                       
                       
                    </div>
    <div style="width: 280px;height: 150px;background-color: #f9f9f9;margin-bottom: 50px;margin-left: 1200px;"></div>
     </div> 
     
     
     <div style="height: 400px;margin-top: 40px;">
   <div class="profile" style="margin-left: 6px;margin: auto;display: flex;margin-left: 200px;">
                        <img src="resources/image1/3.webp"
                            alt="">
                        <div style="font-family: 'Nanum Gothic', sans-serif;font-size: 18px;margin-left: 100px;margin-top: 150px;">태그호이어 아쿠아레이서 (BAO0928)<Br>
                          <span class="text-grey fs-12" style="color: black;margin-left: 100px;font-size: 14px;">TAGHeuer </span>
                        
                         </div>
                       
                    </div>
    <div style="width: 260px;height: 150px;background-color: #f9f9f9;margin-bottom: 50px;margin-left: 200px;"></div>
     </div> 
     
     
      <div style="height: 400px;margin-top: 40px;">
   <div class="profile" style="margin-left: 6px;margin: auto;display: flex;margin-left: 700px;">
                        <img src="resources/image1/4.jpg"
                            alt="">
                        <div style="font-family: 'Nanum Gothic', sans-serif;font-size: 18px;margin-left: 100px;margin-top: 150px;">브라이틀링 네비타이머(B01)<Br>
                          <span class="text-grey fs-12" style="color: black;margin-left: 80px;font-size: 14px;">BREITLING </span>
                        
                         </div>
                       
                    </div>
    <div style="width: 260px;height: 150px;background-color: #f9f9f9;margin-bottom: 50px;margin-left: 700px;"></div>
     </div> 
     
     
     
     
  </div>
  
   <br><br><br>
    <hr style="background-color:black;height: 1px;	margin-left: 100px;margin: 20px;">
<div style="display: flex;justify-content: center;">

<div>
<img src="resources/image1/6.png" style="width: 600px;height: 600px;margin: 40px;">
</div>

<div>
<img src="resources/image1/5.png" style="width: 600px;height: 600px;margin: 40px;">
</div>


</div>



<!-- footer -->
<Div style="height: 400px;align-items: center;display: flex;">


<div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      </a>
      <span class="text-muted">&copy; 2021 Company, Inc</span>
    </div>

    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
    </ul>
   
  </footer>
</div>


</Div>
</body>
</html>