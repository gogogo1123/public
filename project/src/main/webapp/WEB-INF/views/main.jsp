<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

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
    background: gray;
    background: gray;
    min-width: 300px;
    height: 380px;
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

</style>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js" crossorigin="anonymous"></script>


</head>


<body>


<nav style="background-image: url('resources/image/a.png');width: 1850px;height: 60px;margin: auto;">

      <div style="background-image: url('resources/image/a.png');width: 1850px;height: 60px;">
       
            	
        </div>
    </nav>

 


    <hr style="background-color:black;height: 1px;	margin-left: 100px;">
<div class="peo" style="background: url('resources/image/cc.jpg');width: 1900px;height: 500px;margin: auto;animation-play-state:running;">

</div>

<hr style="margin-left: 100px;background-color: black;height: 1px;border: 0;color: black;margin-top: 100px;">





<div style="width: 1600px;height: 800px;display: flex;margin-left: 280px;">

    
   
    <div class="card" style="width: 400px;height:600px;margin-top: 150px;background-color: #f9f9f9;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">ROLEX</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;">
                        <img src="https://newsimg.sedaily.com/2022/01/01/260P4GNZZK_2.jpg"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src="https://www.pngmart.com/files/4/Rolex-Logo-PNG-Photos.png"
                        alt="" style="width: 100%;height: 400px;">
                 
                </div>
            </div>
             </div>
             
             
               <div class="card" style="width: 400px;height:600px;margin-top: 150px;background-color: #f9f9f9;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">Patek Philippe </span>
             
            </div>
          <div class="profile" style="margin-left: 6px;">
                        <img src="https://cdn-images.farfetch-contents.com/14/68/12/42/14681242_32675013_480.jpg"
                            alt="" style="background-color: #f9f9f9;">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src="https://img.danawa.com/images/news/images/000356/20190820085348646_Z4UGNWFL.png"
                        alt="" style="width: 100%;height: 350px;">
                 
                </div>
            </div>
             </div>
             
               <div class="card" style="width: 400px;height:600px;margin-top: 150px;background-color: #f9f9f9;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">TAGHeuer</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;">
                        <img src="http://image.auction.co.kr/itemimage/10/b5/1f/10b51f5e26.jpg"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src="https://mblogthumb-phinf.pstatic.net/20160817_193/ppanppane_1471402360269K04Lz_PNG/%C5%C2%B1%D7%C8%A3%C0%CC%BE%EE_%B7%CE%B0%ED_%282%29.png?type=w800"
                        alt="" style="width: 100%;height: 400px;">
                 
                </div>
            </div>
             </div>
             
               <div class="card" style="width: 400px;height:600px;margin-top: 150px;background-color: #f9f9f9;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">Breguet</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ11AtnKzqUuGwj2k6D9DdD-fFPuk7ALmw6sA&usqp=CAU"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src=https://img.danawa.com/images/news/images/000997/20211217100822581_TR14E7ZQ.png
                        alt="" style="width: 100%;height: 350px;">
                 
                </div>
            </div>
             </div>
             
               <div class="card" style="width: 400px;height:600px;margin-top: 150px;background-color: #f9f9f9;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">VACHERON CONSTANTIN</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;">
                        <img src="https://boorank.com/getImage.php?l=vendor_inventory/574a/90acb24fafb2346587513cfa5cbdd40cf8d6caaf353c03aa0f977390f95d.jpg"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src=https://m.vintageye.kr/web/product/big/202010/a9c004c98ba3ba65fdd4351312535743.png
                        alt="" style="width: 100%;height: 400px;">
                 
                </div>
            </div>
             </div>
    
      <div class="card" style="width: 400px;height:600px;margin-top: 150px;background-color: #f9f9f9;">
            <div class="mb-3">
                <span class="text-grey fs-12" style="color: black;margin-left: 40px;font-size: 16px;">BREITLING</span>
             
            </div>
          <div class="profile" style="margin-left: 6px;">
                        <img src="https://cdn2.chrono24.com/images/uhren/24274574-vncjgjnmp3wkvayxurneupy2-ExtraLarge.jpg"
                            alt="">
                    </div>
            <div class="mt-auto">
                <div class="">
                     <img src="https://mblogthumb-phinf.pstatic.net/MjAxOTAyMjZfMTcw/MDAxNTUxMTUzOTE0NjUy.yEf3EZ9tQP1nxnYbxQBa2q93o5gihaBY1lVTEyCRUj8g.kS5X6y7JX4_nKI_TRWH9LH48rIAg2HhUE7cifG3ni0Ag.PNG.aojun3728/BRL1.png?type=w800"
                        alt="" style="width: 100%;height: 400px;">
                 
                </div>
            </div>
             </div>
             
             
    </div>
   























<hr style="margin-left: 100px;background-color: black;height: 1px;margin-top: 100px;">
 <Br><br><Br>
 
<div style="width: 1900px;height: 300px;align-items: center;display: flex;" >

<div style="width: 300px;text-align: center;align-items: center;">
<p style="margin: auto;margin-left: 200px;font-size: 18px;">신상품</p>
</div>
<div class="row" style="width: 1600px;margin-left: 140px;margin-right: 10px;">

            <div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
                <div class="product">
                    <img src="https://content.rolex.com/dam/watches/family-pages/gmt-master-ii/roller-history/professional-watches-gmt-master-ii-history-2014-red-blue_portrait.jpg?imwidth=420"
                        alt="" style="width: 250px;height: 250px;">
                           <div class="price" style="text-align: center;">$ 60.0</div>
  </div>
</div>

<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
                <div class="product">
                    <img src="https://content.rolex.com/dam/watches/family-pages/gmt-master-ii/roller-history/professional-watches-gmt-master-ii-history-2014-red-blue_portrait.jpg?imwidth=420"
                        alt="" style="width: 250px;height: 250px;">
                           <div class="price">$ 60.0</div>
  </div>
</div>

<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
                <div class="product">
                    <img src="https://content.rolex.com/dam/watches/family-pages/gmt-master-ii/roller-history/professional-watches-gmt-master-ii-history-2014-red-blue_portrait.jpg?imwidth=420"
                        alt="" style="width: 250px;height: 250px;">
                           <div class="price">$ 60.0</div>
  </div>
</div>

<div class="col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3">
                <div class="product">
                    <img src="https://content.rolex.com/dam/watches/family-pages/gmt-master-ii/roller-history/professional-watches-gmt-master-ii-history-2014-red-blue_portrait.jpg?imwidth=420"
                        alt="" style="width: 250px;height: 250px;">
                           <div class="price">$ 60.0</div>
  </div>
</div>




</div>
</div>

  <Br><br><Br>
  <hr style="background-color:black;height: 1px;	margin-left: 100px;">
  <Br><br><Br>
  
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="width: 1200px;height:600px;margin: auto;">
  <div class="carousel-indicators">
    <button type="button" style="background-color: black;border-radius: 50%;height: 10px;width: 10px;" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" style="background-color: black;border-radius: 50%;height: 5px;width: 5px;" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" style="background-color: black;border-radius: 50%;height: 5px;width: 5px;" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img style="width: 350px;height: 350px;margin-left: 440px;margin-top: 90px;"  src="https://www.autodaily.co.kr/news/photo/202010/422646_60139_56.png">
    </div>
    <div class="carousel-item">
      <img src="https://www.autodaily.co.kr/news/photo/202010/422646_60139_56.png"  alt="..." style="width: 350px;height: 350px;margin-left: 440px;margin-top: 90px;">
    </div>
    <div class="carousel-item">
      <img src="https://www.autodaily.co.kr/news/photo/202010/422646_60139_56.png"  alt="" style="width: 350px;height: 350px;margin-left: 440px;margin-top: 90px;">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev" style="border-color: black;color: black;">
    <span class="carousel-control-prev-icon-dark" aria-hidden="true" style="color: black;background-color: gray;background: gray;"></span>
    <span class="visually-hidden" style="color: black;background: black;">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
  
  
   <Br><br><Br>
    <hr style="background-color:black;height: 1px;	margin-left: 100px;">
     <Br><br><Br>
     
  <div style="width: 1700px;height: 1600px;background: black;margin: auto;"> 
  
  
  
  
  
  </div>
  
  

</body>
</html>