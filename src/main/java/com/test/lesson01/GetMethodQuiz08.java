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

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{

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
		        "자축 저 오늘 생일 이에요."));
		
		
		// 2중 for문
		
//		out.print("<html><head><title>검색단어추천</title></head><body>");
//		
//		for(int i = 0; i < list.size(); i++) {
//			String tar = list.get(i);
//			
//			if(tar.contains(search)) {
//				String tarArr[] = tar.split(" ");
//				
//				for (int j = 0; j < tarArr.length; j++) {
//					if(tarArr[j].contains(search)) {
//						out.print("<b>" +  tarArr[j] + "</b> ");
//					} else {
//						out.print(tarArr[j] + " ");
//					}
//				}
//				out.print("<br>");
//			}
//		}
//		
//		out.print("</body></html>");
		
		
		// substirng , indexOf 활용
//		out.print("<html><head><title>검색 결과</title></head><body>");
//		
//		Iterator<String> iter = list.iterator();
//		
//		while(iter.hasNext()) {
//			String tar = iter.next();
//			if(tar.contains(search)) {
//				
//				int start = tar.indexOf(search);
//				int length = search.length();
//				
//				out.print(tar.substring(0, start));
//				out.print("<b>" + tar.substring(start, (start + length)) + "</b>");
//				out.print(tar.substring((start + length) , tar.length()) + "<br>");
//				
//			}
//			
//		}
//		
//		out.print("</body></html>");
		
		
		
		// replace 활용 , replace 다시 저장하는거 확인
//		out.print("<html><head><title>검색 결과</title></head><body>");
//		
//		Iterator<String> iter = list.iterator();
//		
//		while(iter.hasNext()) {
//			String tar = iter.next();
//			if(tar.contains(search)) {
//				// 맛집 -> <b>맛집</b>
//				tar = tar.replace(search, "<b>" + search + "</b>");
//				out.print(tar + "<br>");
//			}
//			
//		}
//		
//		out.print("</body></html>");
		
		
		// split을 다르게 활용하는 방법
		out.print("<html><head><title>검색 결과</title></head><body>");
		
		Iterator<String> iter = list.iterator();
		
		while(iter.hasNext()) {
			String tar = iter.next();
			if(tar.contains(search)) {
				String[] words = tar.split(search);
				out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>");
			}
			
		}
		out.print("</body></html>");
		
	}
	
	
	
}
