<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Connect.JDBCConnection"  %>
<%@ page import="DTO.ShopDTO" %>
<%@ page import="DAO.ShopDAO" %>
<%
	request.setCharacterEncoding( "UTF-8" );
	// web.xml에서 가져온 DB 연결 정보
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String passwd = application.getInitParameter("OraclePasswd");
	//String shopname = request.getParameter("shopname");
	String shopname = request.getParameter("shopname");
	// 테이블 DAO를 통해 DTO로 회원정보 획득
	ShopDAO dao = new ShopDAO(driver, url, id, passwd);
	ShopDTO dto = dao.getShopDTODetail(shopname);
	ShopDTO dtoimage = dao.getShopDTOImage(shopname);
	
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
          <p style="font-weight: bold;">영업 정보</p>
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
            <img src="img/<%=dtoimage.getImage1() %>" Onclick="location.href='/jspWebProject/img/<%= dtoimage.getImage1()%>'" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext1() != null) {%> <%=dtoimage.getImagetext1() %><%} %></p>
          </div>
          <%} %>
          <%if (dtoimage.getImage2() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage2() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext2() != null) {%> <%=dtoimage.getImagetext2() %><%} %></p>
          </div>
          <%} %>
          <%if (dtoimage.getImage3() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage3() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext3() != null) {%> <%=dtoimage.getImagetext3() %><%} %></p>
          </div>
          <%} %>
          <%if (dtoimage.getImage4() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage4() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext4() != null) {%> <%=dtoimage.getImagetext4() %><%} %></p>
          </div>
          <%} %>
          <%if (dtoimage.getImage5() != null) {%>
          <div class="detail_MainMenu_List">
            <img src="img/<%=dtoimage.getImage5() %>" class="detail_Dummy_Image">
            <p class="detail_MainMenu_Content"><%if (dtoimage.getImagetext5() != null) {%> <%=dtoimage.getImagetext5() %><%} %></p>
          </div>
          <%} %>
        </div>
        
      </div>
    <div id="divLink">
      <div class="LinkList" Onclick="location.href='main.html'">지도로 이동하기</div>
    </div>
  </div>
</body>
</html>

<%	}
	else {
		out.println("잘못된 연결입니다.");
	}
	
	dao.close(); 
%>