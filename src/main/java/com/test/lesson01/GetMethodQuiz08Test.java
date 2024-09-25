package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08Test")
public class GetMethodQuiz08Test extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		String search = request.getParameter("search");
		
		PrintWriter out = response.getWriter();
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "오늘 생일이에요. 그래서 오늘이 좋아요.",
		        "자축 저 오늘 생일 이에요."));
		
	
		
		// substirng , indexOf 활용
		out.print("<html><head><title>검색 결과</title></head><body>");
		
		Iterator<String> iter = list.iterator();
		while(iter.hasNext()) {
			String tar = iter.next();
			if(tar.contains(search)) {
				
				int start = 0;
				int end = 1;
				
				while(end > 0) {
					end = tar.indexOf(search , start);
					out.print(tar.substring(start, end));
					//String a = tar.substring(start, end);
					out.print("<b>" + tar.substring(end, end + search.length()) + "</b>");
					//String b = tar.substring(end, end + search.length());
					start = (tar.indexOf(search , start) + search.length());
					end = tar.indexOf(search , start);
				}
				
				if (start == tar.length()) {
					out.print("<br>");
					break;
				} else {
					out.print(tar.substring(start, tar.length()) + "<br>");
					//String c = tar.substring(start , tar.length());
				}	
				
			}
			
		}
		
		out.print("</body></html>");
		
		
		
	}
	
	
	
}
