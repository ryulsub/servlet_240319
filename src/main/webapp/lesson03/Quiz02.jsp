<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트추가</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<h1>즐겨찾기 추가</h1>
	
	<form method="post" action="/lesson03/quiz02_insert">
		<p>
			<b>사이트명:</b><br>
			<input type="text" name="name">
		</p>
		<p>
			<b>사이트 주소:</b><br>
			<input type="text" name="url">
		</p>
		<p>
			<input class="text-success" type="submit" value="추가" >
		</p>
		
	</form>
	</div>
</body>
</html>