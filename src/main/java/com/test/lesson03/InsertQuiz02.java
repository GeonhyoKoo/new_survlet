package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert_quiz02")
public class InsertQuiz02 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// request parameter
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		
		// db connect
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert query
		String insertQuery = "insert into `bookmark`\n"
				+ "(`name`, `url`)\n"
				+ "value\n"
				+ "('" + name +"', '" + url +"')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//db disconnect
		ms.disconnect();
		
		// redirect
		response.sendRedirect("/lesson03/quiz02_1.jsp");
		
	}
	
}
