<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
		
		<div>
			<label>제목</label>
			<input type="text" class="form-control" name="name" id="nameInput">
		</div>
		<div class="mt-2">
			<label>주소</label>
			<div class="d-flex">
				<input type="text" class="form-control" name="url" id="urlInput">
				<button type="submit" class="btn btn-info ml-2" id="confirmBtn">중복확인</button>
			</div>
		</div>
		<button type="submit" class="btn form-control btn-success mt-3" id="addBtn">추가</button>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	
	<script>
		$(document).ready(function() {
			
			$("#addBtn").on("click", function() {
				// 유효성 검사
				let name = $("#nameInput").val();
				let url = $("#urlInput").val();
				
				if(name == "") {
					alert("이름을 입력하세요");
					return;
				}
				
				if(url.startsWith("http://") || url.startsWith("https://")) {
					$.ajax({
						type:"get"
						, url:"/ajax/favorite/add"
						, data:{"name":name, "url":url}
						, success:function(data) {
							if(data.result == "success") {
								location.href = "/ajax/favorite/list";
							} else {
								alert("추가 실패");
							}
						
						}
						, error:function() {
							alert("추가 에러!!");
						}
					});
				} else {
					alert("주소를 정확히 입력해주세요");
					return ;
				}

				
			});
			
			$("#confirmBtn").on("click", function() {
				let url = $("#urlInput").val();
				
				
				
			});
			
		});
	</script>
</body>
</html>