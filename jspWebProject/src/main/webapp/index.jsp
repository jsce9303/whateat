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
    <figure>
      <img id="indexlogo" src="img/dummy.png"/>
    </figure>
    <div id="image_Box">
    	<img src="">
    </div>
	<div class="under_Menu_Bar">
		<%if (loginid == null) {%><a href="#" class="under_Nav">로그인</a> <%} %>
		<a href="index.do" class="under_Nav">처음으로</a>
		<a href="main.do" class="under_Nav" id="maintest">지도보기</a>
		<a href="#" class="under_Nav">회원가입</a>
	</div>
 </div>
  <script>
  
  </script>
</body>
</html>