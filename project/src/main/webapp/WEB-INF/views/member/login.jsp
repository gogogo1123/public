<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
*{padding:0;margin:0;font-family: 'Poppins', sans-serif}
section{position:relative;min-height:100vh;background-color:white;display:flex;justify-content:center;align-items:center;padding:20px}
section .container{overflow:hidden;position:relative;width:800px;height:500px;background-color:white;box-shadow:0 15px 50px rgba(0,0,0,0.1)}
section .container .user{position:absolute;top:0;left:0;width:100%;height:100%;display:flex}
section .container .user .imagebox{position:relative;width:50%;height:100%;transition:1s}
section .container .user .imagebox img{position:absolute;top:0;left:0;width:100%;height:100%;object-fit:cover}
section .container .user .formbox{position:relative;width:50%;height:100%;background-color:#fff;display:flex;justify-content:center;align-items:center;padding:40px;transition:1s}
section .container .user .formbox .form h2{font-size:22px;font-weight:800;letter-spacing:2px;text-transform:uppercase;text-align:center;margin-bottom:15px;color:#555}
section .container .user .formbox .form input{position:relative;width:100%;height:50px !important;padding:0px 10px;background-color:#f5f5f5;color:#333;border:none;outline:none;margin:10px 0;box-shadow:none;letter-spacing:1px;font-weight:400;font-size:14px}
section .container .user .formbox .form input[type='button']{max-width:100px;background-color:#677eff;color:#fff;cursor:pointer}
section .container .user .formbox .form .signup-text{position:relative;margin-top:10px;font-size:12px;letter-spacing:1px;color:#555;text-transform:uppercase}
section .container .user .formbox .form .signup-text a{text-decoration:none;color:#677eff;cursor:pointer}section .container .signupbox{pointer-events:none}section .container.active .signupbox{pointer-events:initial}section .container .signupbox .formbox{left:100%}section .container.active .signupbox .formbox{left:0}section .container .signupbox .imagebox{left:-100%}section .container.active .signupbox .imagebox{transform:rotate(360deg);left:0}section .container.active .signupbox + .main-section{background-color:blue !important}section .container .signinbox .formbox{left:0}section .container.active .signinbox .formbox{left:100%;transform:rotate(360deg)}section .container .signinbox .imagebox{left:0}section .container.active .signinbox .imagebox{left:-100%}@media (max-width:750px){section .container{max-width:400px}section .container .imagebox{display:none}section .container .user .formbox{width:100%}}


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

<script>


function check(){
	let frm = document.frm;
	
	if(frm.member_id.value==""){
		alert('아이디를 입력해주세요');
		frm.member_id.focus();
		return;
	}else if(frm.member_pw.value==""){
		alert('비밀번호를 입력해주세요');
		frm.member_pw.focus();
		return;
		
	}
	
	frm.action = "<%=request.getContextPath()%>/member/loginprocess.do";
	frm.method="post";
	frm.submit();
	return;
}


</script>



</head>
<body>


<%@ include file="../menu/include.jsp" %>


         
         
<form name="frm">
<section class="main-section"> 
<div class="container"  style="width: 850px;">
 <div class="user signinbox"> 
 <div class="imagebox" style="width: 400px;height: 500px;">
  <img src="../resources/image2/1.png">
   </div>
    <div class="formbox"  style="width: 500px;">
     <div class="form">
      <h2>로그인</h2>
       <input type="text" placeholder="아이디를 입력하세요" name="member_id">
        <input type="password" placeholder="비밀번호를 입력하세요" name="member_pw">

         <input type="button" value="Login" style="background-color: black;" onclick="check();"> 
         <p class="signup-text">Don't have an account? 
         <a href="#" onClick="toggleform();"><Strong>Signup</Strong></a>
         </p> 
         </div> 
         </div> 
         </div> 
        
            </div>
</section>

</form>











</body>
</html>