package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// Request Parameter
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age"));
		
		
		PrintWriter out = response.getWriter();
//		out.println("결과");
//		out.println("사용자 아이디: " + userId);
//		out.println("이름 : " + name);
//		out.println("나이 : " + age);
		
		// json
		// {"user_id":"koo" , "name" : "구건효" , "age" : 32} 단건 
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" +
		name + "\", \"age\":" + age + "}");
		
		
		
		
		
		
	}

}
