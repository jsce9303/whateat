<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Connect.JDBCConnection"  %>
<%@ page import="DTO.ShopDTO" %>
<%@ page import="DAO.ShopDAO" %>
<%
	request.setCharacterEncoding("UTF-8");
	// web.xml에서 가져온 DB 연결 정보
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String passwd = application.getInitParameter("OraclePasswd");
	//String shopname = request.getParameter("shopname");
	String shopname = request.getParameter("shopname");
	String loginid = (String)session.getAttribute("loginidinfo");
	// 테이블 DAO를 통해 DTO로 회원정보 획득
	ShopDAO dao = new ShopDAO(driver, url, id, passwd);
	ShopDTO dto = dao.getShopDTODetail(shopname);
	
	int ownnum = dto.getOwnnum();
	ShopDTO dtoimage = dao.getShopDTOImage(ownnum);
	
	if(dto.getShopname() != null) {
		
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
      <img class="detaillogo" src="img/<%=dto.getImage() %>"/>
    </figure>
    <!-- 상세 메인 메뉴 선택 -->
      <div class="detail_Main">
        <div class="detail_DetailView">
          <p style="font-weight: bold; margin:1px;">영업 정보</p>
          <div class="detail_Menu_Content">
            <p class="detail_Tag">상호명 </p>
            <p class="detail_Text"><%=dto.getShopname() %></p>
          </div>
          <div class="detail_Menu_Content">
            <p class="detail_Tag">연락처 </p>
            <p class="detail_Text"><%=dto.getPhone() %></p>
          </div>
          <div class="detail_Menu_Content">
            <p class="detail_Tag">상세주소 </p>
            <p class="detail_Text"><%=dto.getAddress() %></p>
          </div>
        </div>
        <div class="detail_MainMenu">
          <p class="detail_MainMenu_Tag">대표메뉴</p>
          <%if (dtoimage.getImage1() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage1() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext1() != null) {%> <%=dtoimage.getImagetext1() %><%} %></p>
          </div>
	          <%} %>
          <%if (dtoimage.getImage2() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage1() %>" class="detail_Dummy_Image"/>
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext2() != null) {%> <%=dtoimage.getImagetext2() %><%} %></p>
          </div>
          <%} %>
          <%if (dtoimage.getImage3() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage1() %>"  class="detail_Dummy_Image"/>
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext3() != null) {%> <%=dtoimage.getImagetext3() %><%} %></p>
          </div>
          <%} %>
          <%if (dtoimage.getImage4() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage1() %>" class="detail_Dummy_Image"/>
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext4() != null) {%> <%=dtoimage.getImagetext4() %><%} %></p>
          </div>
          <%} %>
          <%if (dtoimage.getImage5() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage1() %>" class="detail_Dummy_Image"/>
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext5() != null) {%> <%=dtoimage.getImagetext5() %><%} %></p>
          </div>
          <%} %>
          <%if (dtoimage.getMenuboard1() != null)  {%>
          <div class="detail_MainMenu_List">
          	<img src="img/<%=dtoimage.getMenuboard1() %>" class="detail_Menuboard" onclick="location.href='img/<%=dtoimage.getMenuboard1() %>'" />
          </div>
          <%} %>
          <%if (dtoimage.getMenuboard2() != null)  {%>
          <div class="detail_MainMenu_List">
          	<img src="img/<%=dtoimage.getMenuboard2() %>" class="detail_Menuboard" onclick="location.href='img/<%=dtoimage.getMenuboard2() %>'" />
          </div>
          <%} %>
          <%if (dtoimage.getMenuboard3() != null)  {%>
          <div class="detail_MainMenu_List">
          	<img src="img/<%=dtoimage.getMenuboard3() %>" class="detail_Menuboard" onclick="location.href='img/<%=dtoimage.getMenuboard3() %>'" />
          </div>
          <%} %>
          <%if (dtoimage.getMenuboard4() != null)  {%>
          <div class="detail_MainMenu_List">
          	<img src="img/<%=dtoimage.getMenuboard4() %>" class="detail_Menuboard" onclick="location.href='img/<%=dtoimage.getMenuboard4() %>'" />
          </div>
          <%} %>
          <%if (dtoimage.getMenuboard5() != null)  {%>
          <div class="detail_MainMenu_List">
          	<img src="img/<%=dtoimage.getMenuboard5() %>" class="detail_Menuboard" onclick="location.href='img/<%=dtoimage.getMenuboard5() %>'" />
          </div>
          <%} %>
          <%if (dtoimage.getPriceboard1() != null)  {%>
          <div class="detail_MainMenu_List">
          	<img src="img/<%=dtoimage.getPriceboard1() %>" class="detail_Menuboard" onclick="location.href='img/<%=dtoimage.getPriceboard1() %>'" />
          </div>
          <%} %>
          <%if (dtoimage.getPriceboard2() != null)  {%>
          <div class="detail_MainMenu_List">
          	<img src="img/<%=dtoimage.getPriceboard2() %>" class="detail_Menuboard" onclick="location.href='img/<%=dtoimage.getPriceboard2() %>'" />
          </div>
          <%} %>
          <%if (dtoimage.getPriceboard3() != null)  {%>
          <div class="detail_MainMenu_List">
          	<img src="img/<%=dtoimage.getPriceboard3() %>" class="detail_Menuboard" onclick="location.href='img/<%=dtoimage.getPriceboard3() %>'" />
          </div>
          <%} %>
          <%if (dtoimage.getMenuboard1() != null) {%> 
          	<p style="text-align:center;">등록된 메뉴판은 실제 메뉴판과 다를 수 있습니다.</p>
          <%} %>
        </div>
      </div>
  </div>
	<div class="under_Menu_Bar">
		<%if (loginid == null) {%><a href="#" class="under_Nav">로그인</a> <%} %>
		<a href="index.do" class="under_Nav">처음으로</a>
		<a href="main.do" class="under_Nav" id="maintest">지도보기</a>
		<a href="#" class="under_Nav">회원가입</a>
	</div>
	<div style="width:100%; height:50px;"></div>
</body>
</html>

<%	}
	else {
		out.println("잘못된 연결입니다.");
	}
	
	dao.close(); 
%>