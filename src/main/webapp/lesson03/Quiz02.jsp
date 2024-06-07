<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트추가</title>
</head>
<body>
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
</body>
</html>