<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	
	<div class="container">
		<h1>사칙 연산 계산기</h1>
		<form method="post" action="/lesson02/quiz05_1.jsp">
			
			<div class="d-flex">
				<input type="text" name="number1" placeholder="숫자1 을 입력하세요." class="form-control col-4" id="num1">
				<select name="calculation" class="form-control col-2 mx-2">
					<option checked>선택</option>
					<option>+</option>
					<option>-</option>
					<option>*</option>
					<option>/</option>
				</select>
				<input type="text" name="number2" placeholder="숫자2 을 입력하세요." class="form-control col-4" id="num2">
				<input type="submit" class="btn btn-success ml-2" value="계산하기" id="check">
			</div>
		
		
		</form>
	
	</div>


	<script>
		$(document).ready(function(){
			
			$('#check').on('click', function(){
				let number1 = $('#num1').val();
				let number2 = $('#num2').val();
				
				if (number1 == null){
					alert("숫자 1을 입력하세요");
					return;
				}
				
				if (number2 == null){
					alert("숫자 2를 입력하세요")
					return;
				}
				
			});
		});
	</script>
	
</body>
</html>