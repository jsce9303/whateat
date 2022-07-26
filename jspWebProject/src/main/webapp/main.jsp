<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- 지도 API 삽입 예정 -->
    <div id="map" style=" width: 93%; height: 300px;"></div>
  </div>
  
  <div class="main" style="text-align:left">
    <!-- 탭구분 -->
    <input id="tab1" type="radio" name="tabs" checked> 
    <label for="tab1">패스트푸드</label>
    <input id="tab2" type="radio" name="tabs">
    <label for="tab2">분식</label>
    <input id="tab3" type="radio" name="tabs">
    <label for="tab3">도시락</label>
    <input id="tab4" type="radio" name="tabs">
    <label for="tab4">한식</label>
    <input id="tab5" type="radio" name="tabs">
    <label for="tab5">양식</label>
    <input id="tab6" type="radio" name="tabs">
    <label for="tab6">일식</label>
    <input id="tab7" type="radio" name="tabs">
    <label for="tab7">제과</label>
    <input id="tab8" type="radio" name="tabs">
    <label for="tab8">중식</label>
    <input id="tab9" type="radio" name="tabs">
    <label for="tab9">면류</label>
 
    <!-- 상세 정보 ( 패스트 푸드 ) -->
    <section id="content1">
      <a href="detail.do?shopname=맘스터치+영통1호점">맘스터치</a>
    </section>
    <section id="content1">
      <a href="detail.do?shopname=롯데리아+망포역점">롯데리아</a>
    </section>
    <section id="content1">
      <a href="detail.do?shopname=맥도날드+수원망포DT점">맥도날드</a>
    </section>
    <section id="content1">
      <a href="detail.do?shopname=UFO버거+수원망포점">UFO버거</a>
    </section>

    <!-- 상세 정보 ( 분식 ) -->
    <section id="content2">
      <a href="detail.do?shopname=김밥천국+영통점">김밥천국</a>
    </section>
    <section id="content2">
      <a href="detail.do?shopname=고봉민김밥인+수원벽적골망포역점">고봉민김밥</a>
    </section>
   <section id="content2">
      <a href="detail.do?shopname=김가네김밥+망포역사거리점">김가네김밥</a>
    </section>
    <section id="content2">
      <a href="detail.do?shopname=김밥천국+망포점">김밥천국(망포역)</a>
    </section>
    <section id="content2">
      <a href="detail.do?shopname=본죽비빔밥+수원영통벽적골점">본죽비빔밥</a>
    </section>
    <section id="content2">
      <a href="detail.do?shopname=신전떡볶이+수원영통1호점">신전떡볶이</a>
    </section>

    <!-- 상세 정보 ( 도시락 ) -->
    <section id="content3">
      <a href="detail.do?shopname=한솥도시락+수원태장고앞점">한솥도시락</a>
    </section>
    <section id="content3">
      <a href="detail.do?shopname=지지고+수원영통점">지지고</a>
    </section>
    
    <!-- 상세 정보 ( 한식 ) -->
    <section id="content4">
      <a href="detail.do?shopname=압구정한식부페">압구정한식뷔페</a>
    </section>
    <section id="content4">
      <a href="detail.do?shopname=큰맘할매순대국+망포점">큰맘할매순대국</a>
    </section>
    <section id="content4">
      <a href="detail.do?shopname=망포할매순대국">망포할매순대국</a>
    </section>

    <!-- 상세 정보 ( 양식 ) -->
    <section id="content5">
      <a href="detail.do?shopname=닐리+망포역점">닐리</a>
    </section>
    <section id="content5">
      <a href="detail.do?shopname=샐러디+수원망포역점">샐러디</a>
    </section>

    <!-- 상세 정보 ( 일식 ) -->
    <section id="content6">
      <a href="detail.do?shopname=미소야+수원벽적골점">미소야</a>
    </section>
    <section id="content6">
      <a href="detail.do?shopname=오공복이+수원망포점">오공복이</a>
    </section>
    <section id="content6">
      <a href="detail.do?shopname=최고당돈까스+망포역점">최고당돈까스</a>
    </section>
    <section id="content6">
      <a href="detail.do?shopname=상화돈까스">상화돈까스</a>
    </section>

    <!-- 상세 정보 ( 제과 ) -->
    <section id="content7">
      <a href="detail.do?shopname=이삭토스트+수원영통벽적골점">이삭토스트</a>
    </section>
    <section id="content7">
      <a href="detail.do?shopname=써브웨이+수원망포점">서브웨이</a>
    </section>
    <section id="content7">
      <a href="detail.do?shopname=하얀풍차제과점+망포점">하얀풍차</a>
    </section>
    <section id="content7">
      <a href="detail.do?shopname=파리바게뜨+영통롯데점">파리바게뜨</a>
    </section>
    <section id="content7">
      <a href="detail.do?shopname=던킨도너츠+수원망포점">던킨도너츠</a>
    </section>
    <section id="content7">
      <a href="detail.do?shopname=">오버플로우테스트</a>
    </section>
    <section id="content7">
      <a href="detail.do?shopname=">오버플로우테스트</a>
    </section>
    <section id="content7">
      <a href="detail.do?shopname=">오버플로우테스트</a>
    </section>
    
    <!-- 상세 정보 ( 중식 ) -->
    <section id="content8">
      <a href="detail.do?shopname=다복향마라탕+망포점">다복향마라탕</a>
    </section>
    <section id="content8">
      <a href="detail.do?shopname=홍콩반점0410+수원망포역점">홍콩반점0410</a>
    </section>

    <!-- 상세 정보 ( 면류 )-->
    <section id="content9">
      <a href="detail.do?shopname=국수나무+수원벽적골점">국수나무</a>
    </section>
    <section id="content9">
      <a href="detail.do?shopname=미정국수0410+수원영통점">미정국수0410</a>
    </section>
    <section id="content9">
      <a href="detail.do?shopname=전티마이베트남쌀국수+망포점">전티마이베트남쌀국수</a>
    </section>
    <section id="content9">
      <a href="detail.do?shopname=두둑한샤브칼국수">두둑한샤브칼국수</a>
    </section>
    </div>
    
    <div class="under_Menu_Bar">
		<a href="#" class="under_Nav">로그인</a>
		<a href="index.do" class="under_Nav">처음으로</a>
		<a href="main.do" class="under_Nav">지도보기</a>
		<a href="#" class="under_Nav">회원가입</a>
	</div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f13e5aba836e60a8655b08212947c636"></script>
	<script src="JavaScript.js">
	</script>
	
</body>
</html>