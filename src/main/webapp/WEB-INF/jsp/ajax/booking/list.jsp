<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 팬션</title>
        
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/ajax/css/style.css" type="text/css">

</head>
<body>
	<div id="wrap" >
	    <header class="mt-4">
	        <div class="text-center display-4">통나무 팬션</div>
	        <nav class="mt-4">
	            <ul class="nav nav-fill">
	                <li class="nav-item"><a class="nav-link" href="#">팬션소개</a></li>
	                <li class="nav-item"><a class="nav-link" href="#">객실보기</a></li>
	                <li class="nav-item"><a class="nav-link" href="#">예약하기</a></li>
	                <li class="nav-item"><a class="nav-link" href="#">예약확인</a></li>
	            </ul>
	        </nav>
	    </header>
	
	    <section class="banner">
	        <img src="/ajax/images/banner1.jpg" id="bannerImage">
	    </section>
	    <section class="d-flex">
	        <article class="reservation d-flex justify-content-center align-items-center">
	            <div class="display-4">
	                실시간 <br>
	                예약 하기 
	            </div>
	        </article>
	        <article class="reservation-confirm">
	            <div class="m-4">
	                <div class="d-flex align-items-end">
	                    <h3 class="mr-4">예약 확인</h3>
	                </div>
	                <div class="member-input mt-3" id="member">
	                    <div class="input-gorup form-inline">
	                        <label class="input-label">아이디 :</label>
	                        <input type="text" class="form-control text-input" id="id">
	                    </div>
	                    <div class="input-gorup form-inline mt-3">
	                        <label class="input-label">비밀번호 :</label>
	                        <input type="password" class="form-control text-input" id="password">
	                    </div>
	
	                </div>
	                <div class="d-flex justify-content-end">
	                    <button class="btn btn-success mt-3 mr-5" id="lookupBtn">조회 하기</button>
	                </div>
	            </div>
	        </article>
	        <article class="reservation-call d-flex justify-content-center align-items-center">
	            <div>
	                <h3>예약문의 : </h3>
	                <h1>010-</h1>
	                <h1>000-1111</h1>
	            </div>
	        </article>
	    </section>
	
	    <footer class="mt-3 ml-4">
	        <address>
	            제주특별자치도 제주시 애월읍  <br>
	            사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목 <br>
	            Copyright 2025 tongnamu All right reserved
	        </address>
	
	    </footer>
	
	
	</div>


	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
	    $(document).ready(function() {
	
	        // 데이트 피커 셋팅
	        $( "#date" ).datepicker({
	            minDate:0, 
	            dateFormat: "yy년 m월 d일",
	        });
	
	        // 라디오 버튼 선택에 따른 인풋 변경
	
	        $("#lookupBtn").on('click', function() {
	
                // 회원 입력 항목 유효성 검사 
                if($("#id").val() == '')   {
                    alert("아이디를 입력하세요.");
                    return;
                }

                if($("#password").val() == '')   {
                    alert("비밀번호를 입력하세요.");
                    return;
                }

                alert("조회 성공");
	
	        });
	
	        var bannerList = ["/ajax/images/banner1.jpg", "/ajax/images/banner2.jpg", "/ajax/images/banner3.jpg", "/ajax/images/banner4.jpg"];
	        var currentImageIndex = 0;
	        setInterval(function() {
	            $("#bannerImage").attr("src", bannerList[currentImageIndex]);
	            currentImageIndex++;
	
	            if(currentImageIndex == bannerList.length) {
	                currentImageIndex = 0;
	            }
	        }, 3000); 
	    } );
	</script>
</body>
</html>