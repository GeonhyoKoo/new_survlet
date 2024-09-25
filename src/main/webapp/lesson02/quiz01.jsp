<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>


	<%
		Scanner scan = new Scanner(System.in);
	
		int n = scan.nextInt();
		int sum = getSum(n);
	%>

	<%!
		// field
		
		// method
		public int getSum(int n){
		
			int sum = 0;
			for(int i = 1; i <= n; i++){
				sum += i;
			}
			return sum;
		}
	%>
	
	
	<%
		int[] scores = {81, 90, 100, 95, 80};
		int resultScores = 0;
		for (int i = 0; i < scores.length; i++){
			resultScores += scores[i];
		}
		double average = resultScores / (double)scores.length;
	%>
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O",
				"O", "O", "X", "O"});
		
		int cnt = 0;
		Iterator<String> iter = scoreList.iterator();
		while (iter.hasNext()){
			String tar = iter.next();
			if(tar.equals("O")){
				cnt++;
			}
		}
		cnt *= 10;
	%>
	
	
	<%
		String birthDay = "20010820";
		String bd = birthDay.substring(0, 4);
		// 바로 출력해보는 방법
		// out.print();
		// out.print(bd);
		int age = Integer.valueOf(bd);
		age = 2024 - age;
	
	%>
	
	<%-- 1 --%>
	<b>1부터 </b>
	<b><%= n %></b>
	<b>까지의 합은</b>
	<b><%= sum %></b>
	<b>입니다.</b><br>
	
	<%-- 2 --%>
	<b>평균 점수는 </b>
	<b><%= average %></b>
	<b>입니다.</b><br>
	
	<%-- 3 --%>
	<b>채점 결과는 </b>
	<b><%= cnt %></b>
	<b>점입니다.</b><br>
	
	<%-- 4 --%>
	<b><%= birthDay %></b>
	<b>의 나이는</b>
	<b><%= age %></b>
	<b>세입니다.</b>

</body>
</html>