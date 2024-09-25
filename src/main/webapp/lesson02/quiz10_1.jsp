<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<style>
	header {height:100px;}
	nav {height:40px;}
	.content {min-height: 500px;}
	footer {height:30px;}
	.nav_text {color:black;}
	#musician {height: 200px;}
	#music_info {height:30px;}
	
</style>
<body>


<%
//아이유 노래 리스트 
 List<Map<String, Object>> musicList = new ArrayList<>();

 Map<String, Object> musicInfo = new HashMap<>();
 musicInfo.put("id", 1);
 musicInfo.put("title", "팔레트");
 musicInfo.put("album", "Palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 2);
 musicInfo.put("title", "좋은날");
 musicInfo.put("album", "Real");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
 musicInfo.put("time", 233);
 musicInfo.put("composer", "이민수");
 musicInfo.put("lyricist", "김이나");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 3);
 musicInfo.put("title", "밤편지");
 musicInfo.put("album", "palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 253);
 musicInfo.put("composer", "제휘,김희원");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 4);
 musicInfo.put("title", "삐삐");
 musicInfo.put("album", "삐삐");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "이종훈");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 5);
 musicInfo.put("title", "스물셋");
 musicInfo.put("album", "CHAT-SHIRE");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 6);
 musicInfo.put("title", "Blueming");
 musicInfo.put("album", "Love poem");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);
%>

<%
	Map<String, Object> target = null; // 상세 정보를 보여줄 맵
	
	if(request.getParameter("name") == null){
	
		int id = Integer.valueOf(request.getParameter("id"));
		
		for (Map<String, Object> music : musicList) {
			if (id == (int)music.get("id")) {
				target = music;
				break;
			}
		}	
	} else {
		
		String name = request.getParameter("name");
		
		for (Map<String, Object> music : musicList) {
			if (name.equals(music.get("title"))) {
				target = music;
				break;
			}
		}
		
	}
	
	
	int time = (int)target.get("time");
	int m = time / 60;
	int s = time % 60;
	String playTime = String.valueOf(m) + " : " + String.valueOf(s); 
	
%>


<%--
	// 강사님 풀이
	// 1. 목록에서 클릭하고 들어오는 경우 (a태그)
	/* if(request.getParameter("id") != null){
		int id = Integer.valueOf(request.getParameter("id"));
		
		for (Map<String, Object> music : musicList) {
			if (id == (int)music.get("id")) {
				target = music;
				break;
			}
	} */

	// 2. 상단 헤더에서 검색으로 들어오는 경우 (form 태그) - name 파라미터
/* 	if(request.getParameter("name") != null){
		String name = request.getParameter("name");
		
		for (Map<String, Object> music : musicList) {
			if (music.get("title").equals(name)) {
				target = music;
				break;
			}
	} */
		

--%>



	<div class="container">
		<header class="d-flex align-items-center">
			<%-- 로고 영역 --%>
			<div class="col-2">
				<h3><a href="/lesson02/quiz10.jsp" class="text-success">Melong</a></h3>
			</div>
			
				<form action="/lesson02/quiz10_1.jsp" method="get">
				<div class="input-group">
					<input type="text" class="form-control col-10" name="name" value="<%=target.get("title") %>">
					<div>
						<button type="submit" class="btn btn-info">검색</button>
					</div>
				</div>
			</form>
		</header>
		
		<nav>
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-decoration:none nav_text">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link nav_text">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link nav_text">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link nav_text">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link nav_text">뮤직어워드</a></li>
			</ul>
		</nav>
		
		<section class="content mt-2">
			<div>
				<h5>곡 정보</h5>
				<!--  첫 네모 -->
				<div id="musician" class="d-flex align-items-center border border-success">
					<%-- 이미지 --%>
					<div class="col-3">
						<img src="<%=target.get("thumbnail")%>" alt="앨범 이미지" width="150">
					</div>
					
					<%-- 가수 정보 --%>
					<div class="ml-2">
						<div class="display-4"><%=target.get("title")%></div>
						<div>
							<span class="text-success font-weight-bold"><%=target.get("singer")%></span>
						</div>
						
						<div class="d-flex text-secondary mt-2">
							<div class="mr-3">
								<div>앨범</div>
								<div>재생시간</div>
								<div>작곡가</div>
								<div>작사가</div>
							</div>
							<div>
								<div><%=target.get("album")%></div>
								<div><%=playTime%></div>
								<div><%=target.get("composer")%></div>
								<div><%=target.get("lyricist")%></div>
							</div>
						</div>
						
						
						
					</div>
				</div>
				
			
				
				<!-- 가사 -->
				<div id="music_info" class="my-3">
					<h5 class="font-weight-bold">가사</h5>
					<hr>
				</div>
				
				<!--  가사 정보 -->
				<div class="mt-4">
					<span>가사 정보 없음</span>
				</div>
			</div>
		</section>
		
		<footer>
			<hr>
			<small>Copyright 2024, melong All Rights Reserved</small>
		</footer>
	</div>
	


</body>
</html>