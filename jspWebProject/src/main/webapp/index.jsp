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
	
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>index</title> 
<script defer src="./random.js"></script>
<link rel="stylesheet" href="DefaultScreenCSS.css">
<link rel="stylesheet" href="random.css">
<script defer src="./random.js"></script>
</head>
<body>
  <div id="wrap">
<<<<<<< HEAD
    <header>
        <div id="header-div">
            <p>오늘의 점심메뉴는?</p>
            <button id="btn" onclick=start()>시작하기</button>
            <button id="stop" onclick=stop()>멈추기</button>
=======
  <div style="height: 30px;"></div>
    <header>
        <div id="header-div">
            <p>오늘의 점심메뉴는?</p>
            <button id="btn" onclick=start()>&nbsp;시작하기&nbsp;</button>
            <button id="stop" onclick=stop()>&nbsp;멈추기&nbsp;</button>
>>>>>>> 0e7027ec2b47a6dc6a9a9149306634bd29a999be
        </div>
    </header>
    <div id="main-div">
    </div>
<<<<<<< HEAD
	<div class="under_Menu_Bar">
		<%if (loginid == null) {%><a href="#" class="under_Nav">로그인</a> <%} %>
		<a href="index.do" class="under_Nav">처음으로</a>
		<a href="main.do" class="under_Nav" id="maintest">지도보기</a>
		<a href="#" class="under_Nav">회원가입</a>
	</div>
 </div>
=======
    <div id="mainbtr" Onclick="location.href='main.do'">지도보기</div>
  </div>
>>>>>>> 0e7027ec2b47a6dc6a9a9149306634bd29a999be
</body>
</html>