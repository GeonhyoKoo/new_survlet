package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
		
		int num1 = Integer.valueOf(request.getParameter("number1"));
		int num2 = Integer.valueOf(request.getParameter("number2"));
		
		//{"addtion": (num1+num2) , "subtraction" : "1430" ,
		// "multiplication" : 32 ,"division" : 21 }
		out.print("{\"additon\" : " + (num1 + num2) + ", \"subtraction\" : " + 
				(num1 - num2) + ", \"multiplication\" : " + (num1 * num2) + ",\"division\" :" +
				(num1 / num2) + "}");
		
		
		
	}
	
	
	
}
