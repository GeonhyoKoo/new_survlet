<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 결과</title>
</head>
<body>
	
	
	<%!
		public double getInch(int c){
			return (c / 2.54);
		}
	%>
	
	
	<%!
		public double getYard(int c){
			return (c / 91.44);
		}
	%>
	
	<%!
		public double getFeet(int c){
			return (c / 30.48);
		}
	%>
	
	<%!
		public double getMeter(int c){
			return (c / 100.0);
		}
	%>
	
	<%
		int centimetere = Integer.valueOf(request.getParameter("centimetere"));
		String[] checks = request.getParameterValues("converter");
	%>

	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h2><%= centimetere %>cm</h4>
		<hr>
		<%
			if (checks != null){
				for (int i = 0; i < checks.length; i++){
					if (checks[i].equals("inch")){
						out.print("<b>" + getInch(centimetere) + " in" + "</b>");
					} else if (checks[i].equals("yard")){
						out.print("<b>" + getYard(centimetere) + " yd"  + "</b>");
					} else if (checks[i].equals("feet")){
						out.print("<b>" + getFeet(centimetere) + " ft"  + "</b>");
					} else {
						out.print("<b>" + getMeter(centimetere) + " m"  + "</b>");
					}
					out.print("<br>");
				}
			}
		%>
	
	</div>
	
	
	

</body>
</html>