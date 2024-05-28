package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		// response header
		response.setContentType("text/html");
		
		// request params
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		// 출력
		PrintWriter out = response.getWriter();
		
		
	}
}
