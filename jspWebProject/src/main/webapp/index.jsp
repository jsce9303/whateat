<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.ShopDAO" %>
<%@ page import="DTO.ShopDTO" %>
    
<%
	request.setCharacterEncoding( "UTF-8" );
	// web.xml에서 가져온 DB 연결 정보
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String passwd = application.getInitParameter("OraclePasswd");
	
	String loginid = null;
	// 테이블 DAO를 통해 DTO로 회원정보 획득
	ShopDAO dao = new ShopDAO(driver, url, id, passwd);
	
	ShopDTO dtocount = dao.getCount();
	int count = dtocount.getShopcount();
	int[] random = new int[5];
	for (int i = 0; i < random.length; i++) {
		random[i] = (int)(Math.random()*count+1)+1;
	}
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title> 

<link rel="stylesheet" href="DefaultScreenCSS.css">
</head>
<body>
  <div id="wrap">
    <div id="slideShow">
      <ul class="slides">
      	<% for(int x : random) {
    			 ShopDTO dto = dao.getRandomImage(x);
     	 %>
       	<li><img src="img/<%=dto.getRandomimage1() %>"></li>
      	<%} %>
      </ul>
      <div style="width:100%; height:275px;"></div>
      <p style="text-align:center;">오늘은 이 집 어떨까?</p>
     </div>
	<div class="under_Menu_Bar">
		<%if (loginid == null) {%><a href="#" class="under_Nav">로그인</a> <%} %>
		<a href="index.do" class="under_Nav">처음으로</a>
		<a href="main.do" class="under_Nav" id="maintest">지도보기</a>
		<a href="#" class="under_Nav">회원가입</a>
	</div>
 </div>
 <script>
 	let slideindex = 0;
 	
 	showSlides();
 	
 	function showSlides() {
 		let slides = document.querySelectorAll("li > img");
 		
 		for (let i = 0; i < slides.length; i++) {
 			slides[i].style.display = "none";
 		}
 		
 		slideindex++;
 		
 		if (slideindex > slides.length) 
 		{slideindex = 1;}
 		
 		slides[slideindex - 1].style.display = "block";
		setTimeout(showSlides, 3000);
 	}
 	
 	function nextSlides() {
	
 		
 	}
 </script>
</body>
</html>