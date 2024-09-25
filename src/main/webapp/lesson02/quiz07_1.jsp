<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>

		<!--  강사님 풀이 -->
		<%
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
		%>
		
		<div class="container">
		
			<h1 class="text-center">검색 결과</h1>
			
			
			<table class="table text-center">
				<thead>
					<tr>
						<th>메뉴</th>
						<th>상호</th>
						<th>별점</th>
					</tr>
				</thead>
				
				<tbody>
				<%
				
					String keyword = request.getParameter("keyword");
			    	String filter = request.getParameter("starPointFilter");
					boolean exclude = filter != null;  // true : 제외 (체크됨)
			    	
			    	
					for (Map<String , Object> item : list) {
						if (item.get("menu").equals(keyword)){
							// skip 조건 : check가 되어 있고 4.0 이하인 것 -> 출력 x
							// Object를 다운캐스팅해서 원래의 타입으로 만들기 가능
							if (exclude && (double)item.get("point") <= 4.0){
								continue;
							}
				%>
					<tr>
						<%-- 디버깅하고 싶을 때 구별하기 위해 :::: 로 칸 구분해서 확인 --%>
						<%-- <td><%=filter %> :::::::::</td>--%>
						<td><%= item.get("menu") %></td>
						<td><%= item.get("name") %></td>
						<td><%= item.get("point") %></td>
					</tr>
				<% 
						}
					}
				%>	
					
				</tbody>
			</table>
			
		
	
		</div>


</body>
</html>