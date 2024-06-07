<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();	

	// select 쿼리 수행
	String query = "select * from site";
	ResultSet res = ms.select(query);
	
%>
	
	<h1>사용자 목록</h1>
	
	<table>
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>	
	</thead>
	<tbody>
	<%
		while (res.next()) {
	%>
		<tr>
			<td><%= res.getInt("id") %></td>
			<td><%= res.getString("name") %></td>
			<td><a href><%= res.getString("url") %></a></td>
		</tr>
	<%
		}
	%>	
	</tbody>
</table>
		
<%
 	// DB 연결 해제 
 	ms.disconnect();
%>	
</body>
</html>