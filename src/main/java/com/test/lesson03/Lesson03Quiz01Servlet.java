package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/Quiz01")
public class Lesson03Quiz01Servlet  extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// response header
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert query - db
		String insertQuery = "insert into `real_estate2`"
			+	"(`realtor1Id`,`address`,`area`,`type`,`price`)"
			+	"values"
			+	"(1, '레미얀 레이크 아파트 301동 905호', 84, '전세', 40000)";	
		try {		
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// select query - db => 출력
		String selectQuery = "select `address`, `area`, `type` from `real_estate2`"
			+ "order by `id` DESC"
			+ "limit 10";			
		try {
			ResultSet res = ms.select(selectQuery);
			PrintWriter out = response.getWriter();
			while (res.next()) {
				out.println("매물주소:" + res.getString("address"));
				out.println(", 면적:" + res.getInt("area"));
				out.println(", 타입:" + res.getString("type"));				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
	}
	
}
