<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Karla:wght@200;300;400;500&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/6c060c00b1.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/image/style.css">
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
               
                
                } else {
                  
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>



</head>
<body>

<nav class="bg-white">
    <div class="d-flex align-items-center">
        <div class="logo">
            <a href="#" class="text-uppercase">결제페이지</a>
        </div>
       
    </div>
</nav>
<header>
    <div class="d-flex justify-content-center align-items-center pb-3">
        <div class="px-sm-5 px-2">장바구니
        </div>
        <div class="px-sm-5 px-2 active">결제페이지
        <span class="fas fa-check"></span>
        </div>
            
        <div class="px-sm-5 px-2">결제완료</div>
    </div>
    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="50"
            aria-valuemax="100"></div>
    </div>
</header>
<div class="wrapper" style="margin-left: 200px;height: 800px;">
    <div class="h5 large">배송지 입력</div>
    <div class="row">
        <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1">
            <div class="mobile h5">배송지 입력</div>
            <div id="details" class="bg-white rounded pb-5" style="height: 600px;">
                <form action="<%=request.getContextPath()%>/order/update.do" method="post">
                
                <input type="hidden" name="order_product" value="${map.product_name}">
                <input type="hidden" name="order_sum" value="${map.sumMoney}">
                <input type="hidden" name="order_cart" value="${map.cart}">
                <input type="hidden" name="order_code" value="${map.code}">
                <input type="hidden" name="order_id" value="${map.id}">
                
                
                
                
                    <div class="form-group" style="margin-top: 60px;">
                        <label class="text-muted">이 름</label>
                        <input type="text" value="${map.name}" class="form-control" name="order_name">
                    </div>
                    <div class="form-group" style="margin-top: 40px;">
                        <label class="text-muted">이 메 일</label>
                        <div class="d-flex jusify-content-start align-items-center rounded p-2">
                            <input type="email" value="${map.email}" name="order_email">
                            <span class="fas fa-check text-success pr-sm-2 pr-0"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group" style="margin-top: 40px;">
                                <label>우편번호</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2">
                                    <input type="text" name="order_addr1" id="sample6_postcode" value="${map.addr1}" >
                                    <span class="fas fa-check text-success pr-2"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group" style="margin-top: 40px;">
                                <label></label>
                             
                             
                              <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn btn-sm bg-dark text-white" style="background-color: gray;margin-top: 10px;opacity: 1;margin-top: 29px;" >
                             
                             
                             
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group" style="margin-top: 40px;">
                                <label>지번주소</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2">
                                    <input type="text" type="text" name="order_addr2" id="sample6_address" value="${map.addr2}">
                                    <span class="fas fa-check text-success pr-2"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group" style="margin-top: 40px;">
                                <label>상세주소</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2">
                                    <input type="text"  type="text"name="order_addr3" id="sample6_detailAddress" value="${map.addr3}">
                                    <span class="fas fa-check text-success pr-2"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                   
               
            </div>
           
           
        </div>
        <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1 pt-lg-0 pt-3">
            <div id="cart" class="bg-white rounded">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="h6">Cart Summary</div>
                    <div class="h6">
                        <a href="#">Edit</a>
                    </div>
                </div>
                <div class="d-flex jusitfy-content-between align-items-center pt-3 pb-2 border-bottom">
                    
                    <div class="d-flex flex-column px-3">
                        <b class="h5">총 결제 금액</b>
                      
                    </div>
                    <div class="ml-auto">
                        <b class="h5">${map.sumMoney}</b>
                    </div>
                </div>
              
                
                <div class="d-flex align-items-center py-2">
                    <div class="display-5">Total</div>
                    <div class="ml-auto d-flex">
                        <div class="text-primary text-uppercase px-3">금액</div>
                        <div class="font-weight-bold">${map.sumMoney}</div>
                    </div>
                </div>
            </div>
          
            <div class="h4 pt-3">
                <span class="fas fa-shield-alt text-primary pr-2"></span>
                Security of your shopping</div>
            <div id="summary" class="bg-white rounded py-2 my-4">
                <div class="table-responsive">
                    <table class="table table-borderless w-75">
                        <tbody>
                            <tr class="text-muted">
                                <td>안녕하세요</td>
                                
                            </tr>
                            <tr class="text-muted">
                                <td>다있소에 찾아주셔서 감사합니다</td>
                              
                            </tr>
                            <tr class="text-muted">
                                <td>행복한 하루 되세요</td>
                               
                                   
                                
                                  
                               
                                </td>
                            </tr>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        </tbody>
                    </table>
                </div>
                <div class="border-top py-2 d-flex align-items-center ml-2 font-weight-bold">
                    <div>Total</div>
                    <div class="ml-auto text-primary">총 결제 금액</div>
                    <div class="px-2">${map.sumMoney}</div>
                </div>
            </div>
            
            <div class="row pt-lg-3 pt-2 buttons mb-sm-0 mb-2" style="margin-left: 70px;">
                <div class="col-md-3">
                    <button type="button" style="border: none;" onclick="location.href='<%=request.getContextPath()%>/product/list.do'"><div class="btn text-uppercase">목록으로</div></button>
                </div>
              
               <div class="col-md-3" style="margin-right: 30px;">
                  <button style="border: none;"><div class="btn text-uppercase">결제하기 </div></button>
                
                </div>
              
              
              
            </div>
             </form>
       
        </div>
    </div>
  
</div>






</body>
</html>