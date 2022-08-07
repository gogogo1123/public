<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

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


<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	padding: 0;
	margin: 0;
	font-family: 'Poppins', sans-serif
}

section {
	position: relative;
	min-height: 100vh;
	background-color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px
}

section .container {
	overflow: hidden;
	position: relative;
	width: 800px;
	height: 500px;
	background-color: white;
	box-shadow: 0 15px 50px rgba(0, 0, 0, 0.1)
}

section .container .user {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex
}

section .container .user .imagebox {
	position: relative;
	width: 50%;
	height: 100%;
	transition: 1s
}

section .container .user .imagebox img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover
}

section .container .user .formbox {
	position: relative;
	width: 50%;
	height: 100%;
	background-color: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 40px;
	transition: 1s
}

section .container .user .formbox .form h2 {
	font-size: 22px;
	font-weight: 800;
	letter-spacing: 2px;
	text-transform: uppercase;
	text-align: center;
	margin-bottom: 15px;
	color: #555
}

section .container .user .formbox .form input {
	position: relative;
	width: 100%;
	height: 50px !important;
	padding: 0px 10px;
	background-color: #f5f5f5;
	color: #333;
	border: none;
	outline: none;
	margin: 10px 0;
	box-shadow: none;
	letter-spacing: 1px;
	font-weight: 400;
	font-size: 14px
}

section .container .user .formbox .form input[type='submit'] {
	max-width: 100px;
	background-color: #677eff;
	color: #fff;
	cursor: pointer
}

section .container .user .formbox .form .signup-text {
	position: relative;
	margin-top: 10px;
	font-size: 12px;
	letter-spacing: 1px;
	color: #555;
	text-transform: uppercase
}

section .container .user .formbox .form .signup-text a {
	text-decoration: none;
	color: #677eff;
	cursor: pointer
}

section .container .signupbox {
	pointer-events: none
}

section .container.active .signupbox {
	pointer-events: initial
}

section .container .signupbox .formbox {
	left: 100%
}

section .container.active .signupbox .formbox {
	left: 0
}

section .container .signupbox .imagebox {
	left: -100%
}

section .container.active .signupbox .imagebox {
	transform: rotate(360deg);
	left: 0
}

section .container.active .signupbox+.main-section {
	background-color: blue !important
}

section .container .signinbox .formbox {
	left: 0
}

section .container.active .signinbox .formbox {
	left: 100%;
	transform: rotate(360deg)
}

section .container .signinbox .imagebox {
	left: 0
}

section .container.active .signinbox .imagebox {
	left: -100%
}

@media ( max-width :750px) {
	section .container {
		max-width: 400px
	}
	section .container .imagebox {
		display: none
	}
	section .container .user .formbox {
		width: 100%
	}
}

section .container .user .formbox .form input[type='button'] {
	max-width: 80px;
	background-color: #677eff;
	color: #fff;
	cursor: pointer
}
</style>




<script>


$(function(){

	$("#checkId").click(function(){
		
		let member_id = $("#member_id").val();
	 
 		
		$.ajax({
			type:'post',
			url:"<%=request.getContextPath()%>/member/checkId.do",
			data: {"member_id":member_id},
			success: function(data){
				if(data == "N"){
					alert('사용가능한 아이디입니다.');
				    code = data;
				 
			 }else{
					alert('사용불가능한 아이디입니다.');	
					code = data;
			 }
				 
		 },
			error : function(error){
				alert(error);
				}
		});
		
	});
	

});







function check(){
	
	
	var frm = document.joinform;
	
	
	if(frm.member_id.value=="code"){
	  alert("아이디를 입력해주세요");
	  frm.member_id.focus();
	  return;
	}else if(frm.member_pw.value==""){
		alert("비밀번호를 입력해주세요")
		return;
	}
	else if(frm.member_name.value==""){
		alert("이름를 입력해주세요")
		return;
	}else if(frm.member_addr1.value==""){
		alert("주소를 입력해주세요")
		return;
	}else if(frm.member_addr2.value==""){
		alert("상세주소를 입력해주세요")
		return;
	}else if(frm.member_addr3.value==""){
		alert("주소를 입력해주세요")
		return;
	}else if(frm.member_email.value==""){
		alert("이메일을 입력해주세요")
		return;
	}
	
	
	
	
	frm.action = "<%=request.getContextPath()%>
	/member/joinprocess.do";
		frm.method = "post";
		frm.submit();

		return;

	}
</script>


<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.

						} else {

						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>




<script>
	
</script>











</head>
<body>
	<form name="joinform" method="post">

		<%@ include file="../menu/include.jsp"%>





		<section class="main-section">


			<div class="container" style="width: 900px; height: 800px;">
				<div class="user signinbox">
					<div class="imagebox" style="width: 400px; height: 800px;">
						<img src="../resources/image2/2.png">
					</div>
					<div class="formbox" style="width: 500px;">
						<div class="form">

							<h2>회원가입</h2>
							<input type="text" placeholder="아이디를 입력하세요" name="member_id"
								id="member_id"> <input type="button" onclick=""
								value="중복확인" style="background-color: black" id="checkId">
							<input type="password" placeholder="비밀번호를 입력하세요" name="member_pw">
							<input type="text" placeholder="이름을 입력하세요" name="member_name">
							<Div style="display: flex;">
								<input type="text" placeholder="우편번호 입력하세요"
									id="sample6_postcode" name="member_addr1"> <input
									type="button" onclick="sample6_execDaumPostcode()"
									value="주소 찾기" style="background-color: black">
							</Div>
							<input type="text" placeholder="주소를 입력하세요" id="sample6_address"
								name="member_addr2"> <input type="text"
								placeholder="상세주소 입력하세요" id="sample6_detailAddress"
								name="member_addr3"> <input type="text"
								placeholder="이메일을 입력하세요" name="member_email"> <input
								type="button" onclick="check();" value="전송" />



						</div>
					</div>
				</div>

			</div>

		</section>






	</form>






</body>
</html>