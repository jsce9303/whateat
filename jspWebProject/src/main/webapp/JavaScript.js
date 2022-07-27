var container = document.getElementById('map');
var options = {
	center: new kakao.maps.LatLng(37.247525, 127.057592),
	level: 4
};
var map = new kakao.maps.Map(container, options);

// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
  {
    title: '맥도날드 수원망포DT점', 
    latlng: new kakao.maps.LatLng(37.246050, 127.054462),
    content: 
    '<div class="InfoView">맥도날드(패스트푸드)<br>' 
    +
    '<a href="detail.do?shopname=맥도날드+수원망포DT점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/Fds7nui5" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '롯데리아 망포역점', 
    latlng: new kakao.maps.LatLng(37.246184,127.056639),
    content: 
    '<div class="InfoView">롯데리아(패스트푸드)<br>' 
    +
    '<a href="detail.do?shopname=롯데리아+망포역점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/FUGTpV6j" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '맘스터치 영통1호점', 
    latlng: new kakao.maps.LatLng(37.246655,127.060635),
    content: 
    '<div class="InfoView">맘스터치(패스트푸드)<br>' 
    +
    '<a href="detail.do?shopname=맘스터치+영통1호점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/5thFOnTc" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: 'UFO버거 수원망포점',
    latlng: new kakao.maps.LatLng(37.246239, 127.058944),
    content: 
    '<div class="InfoView">UFO버거(패스트푸드)<br>' 
    +
    '<a href="detail.do?shopname=UFO버거+수원망포점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/5JPfnjzq" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '김밥천국 영통점',
    latlng: new kakao.maps.LatLng(37.246662, 127.060732),
    content: 
    '<div class="InfoView">김밥천국(분식)<br>' 
    +
    '<a href="detail.do?shopname=김밥천국+영통점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/xScNqtL5" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '국수나무 수원벽적골점',
    latlng: new kakao.maps.LatLng(37.246672, 127.060816),
    content: 
    '<div class="InfoView">국수나무(면류)<br>' 
    +
    '<a href="detail.do?shopname=국수나무+수원벽적골점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/xry7List" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    itle: '고봉민김밥인 수원벽적골망포역점',
    latlng: new kakao.maps.LatLng(37.246860, 127.060891),
    content: 
    '<div class="InfoView">고봉민김밥(분식)<br>' 
    +
    '<a href="detail.do?shopname=고봉민김밥인+수원벽적골망포역점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/IIZBOhBl" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '지지고 수원영통점',
    latlng: new kakao.maps.LatLng(37.246922, 127.060750),
    content: 
    '<div class="InfoView">지지고(도시락)<br>' 
    +
    '<a href="detail.do?shopname=지지고+수원영통점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GVMciPbD" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '이삭토스트 수원영통벽적골점',
    latlng: new kakao.maps.LatLng(37.247053, 127.060830),
    content: 
    '<div class="InfoView">이삭토스트(제과)<br>' 
    +
    '<a href="detail.do?shopname=이삭토스트+수원영통벽적골점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/FCb3aqjz" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '본죽비빔밥 수원영통벽적골점',
    latlng: new kakao.maps.LatLng(37.246629, 127.061388),
    content: 
    '<div class="InfoView">본죽&비빔밥(한식)<br>' 
    +
    '<a href="detail.do?shopname=본죽비빔밥+수원영통벽적골점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GaMUY0QI" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '파리바게뜨 영통롯데점',
    latlng: new kakao.maps.LatLng(37.246793, 127.061397),
    content: 
    '<div class="InfoView">파리바게뜨(제과)<br>' 
    +
    '<a href="detail.do?shopname=파리바게뜨+영통롯데점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/Fgi50UMG" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '미소야 수원벽적골점',
    latlng: new kakao.maps.LatLng(37.246648, 127.060353),
    content: 
    '<div class="InfoView">미소야(일식)<br>' 
    +
    '<a href="detail.do?shopname=미소야+수원벽적골점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/x0ahPELM" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '홍콩반점0410 수원망포역점',
    latlng: new kakao.maps.LatLng(37.246316, 127.060185),
    content: 
    '<div class="InfoView">홍콩반점0410(중식)<br>' 
    +
    '<a href="detail.do?shopname=홍콩반점0410+수원망포역점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GdJ1Fawq" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '망포할매순대국',
    latlng: new kakao.maps.LatLng(37.246518, 127.057743),
    content: 
    '<div class="InfoView">망포할매순대국(한식)<br>' 
    +
    '<a href="detail.do?shopname=망포할매순대국" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/FEJgmEeg" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '오공복이 수원망포점',
    latlng: new kakao.maps.LatLng(37.246517, 127.057718),
    content: 
    '<div class="InfoView">오공복이(한식)<br>' 
    +
    '<a href="detail.do?shopname=오공복이+수원망포점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/IIqfEv8i" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '미정국수0410 수원영통점',
    latlng: new kakao.maps.LatLng(37.246486, 127.056764),
    content: 
    '<div class="InfoView">미정국수0410(한식)<br>' 
    +
    '<a href="detail.do?shopname=미정국수0410+수원영통점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GKoxdbpf" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '신전떡볶이 수원영통1호점',
    latlng: new kakao.maps.LatLng(37.246997, 127.057225),
    content: 
    '<div class="InfoView">신전떡볶이(분식)<br>' 
    +
    '<a href="detail.do?shopname=신전떡볶이+수원영통1호점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/5B1vDe8u" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '던킨도너츠 수원망포점',
    latlng: new kakao.maps.LatLng(37.247032, 127.056912),
    content: 
    '<div class="InfoView">던킨도너츠(제과)<br>' 
    +
    '<a href="detail.do?shopname=던킨도너츠+수원망포점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/Fb9KtkGP" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '샐러디 수원망포역점',
    latlng: new kakao.maps.LatLng(37.246986, 127.056907),
    content: 
    '<div class="InfoView">샐러디(양식)<br>' 
    +
    '<a href="detail.do?shopname=샐러디+수원망포역점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/5YiuLXzp" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '김가네김밥 망포역사거리점',
    latlng: new kakao.maps.LatLng(37.246882, 127.056772),
    content: 
    '<div class="InfoView">김가네김밥(분식)<br>' 
    +
    '<a href="detail.do?shopname=김가네김밥+망포역사거리점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GNyOesBm" target="_blank">'
    +
    ' 네이버보기</a></div>'
  },
  {
    title: '다복향마라탕 망포점',
    latlng: new kakao.maps.LatLng(37.246891, 127.056658),
    content: 
    '<div class="InfoView">다복향마라탕(중식)<br>' 
    +
    '<a href="detail.do?shopname=다복향마라탕+망포점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GC6gcU7w" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '압구정한식부페',
    latlng: new kakao.maps.LatLng(37.247428, 127.055180),
    content: 
    '<div class="InfoView">압구정한식부페(한식)<br>' 
    +
    '<a href="detail.do?shopname=압구정한식부페" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GNyOesBm" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '한솥도시락 수원태장고앞점',
    latlng: new kakao.maps.LatLng(37.249280, 127.057783),
    content: 
    '<div class="InfoView">한솥도시락(도시락)<br>' 
    +
    '<a href="detail.do?shopname=한솥도시락+수원태장고앞점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GLKlI4C6" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '김밥천국 망포점',
    latlng: new kakao.maps.LatLng(37.245308, 127.055922),
    content: 
    '<div class="InfoView">김밥천국(분식)<br>' 
    +
    '<a href="detail.do?shopname=김밥천국+망포점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/FbRYTjxN" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '전티마이베트남쌀국수 망포점',
    latlng: new kakao.maps.LatLng(37.245305, 127.055482),
    content: 
    '<div class="InfoView">전티마이베트남(면류)<br>' 
    +
    '<a href="detail.do?shopname=전티마이베트남쌀국수+망포점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/GFperm7c" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '최고당돈까스 망포역점',
    latlng: new kakao.maps.LatLng(37.245296, 127.055356),
    content: 
    '<div class="InfoView">최고당돈까스(일식)<br>' 
    +
    '<a href="detail.do?shopname=최고당돈까스+망포역점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/5xlOd0hf" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '하얀풍차제과점 망포점',
    latlng: new kakao.maps.LatLng(37.245026, 127.056318),
    content: 
    '<div class="InfoView">하얀풍차(제과)<br>' 
    +
    '<a href="detail.do?shopname=하얀풍차제과점+망포점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/FdsGGZvb" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '큰맘할매순대국 망포점',
    latlng: new kakao.maps.LatLng(37.245390, 127.059022),
    content: 
    '<div class="InfoView">큰맘할매순대국(한식)<br>' 
    +
    '<a href="detail.do?shopname=큰맘할매순대국+망포점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/Fye5KwlE" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '상화돈까스',
    latlng: new kakao.maps.LatLng(37.245381, 127.059696),
    content: 
    '<div class="InfoView">상화돈까스(일식)<br>' 
    +
    '<a href="detail.do?shopname=상화돈까스" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/xOCSp8pT" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
  ,
  {
    title: '두둑한샤브칼국수',
    latlng: new kakao.maps.LatLng(37.245448, 127.060560),
    content: 
    '<div class="InfoView2">두둑한샤브칼국수(한식)<br>' 
    +
    '<a href="detail.do?shopname=두둑한샤브칼국수" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/5y4qre4t" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }
    ,
  {
    title: '닐리 망포역점',
    latlng: new kakao.maps.LatLng(37.245448, 127.060560),
    content: 
    '<div class="InfoView2">닐리(양식)<br>' 
    +
    '<a href="detail.do?shopname=닐리+망포역점" target="_blank">상세보기</a>'
    +
    '<a href="https://naver.me/FeeAw40P" target="_blank">'
    +
    ' 네이버보기</a></div>'
  }

];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "img/MapPin.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
  // 마커 이미지의 이미지 크기 입니다
  var imageSize = new kakao.maps.Size(24, 35); 
  
  // 마커 이미지를 생성합니다    
  var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
  
  // 마커를 생성합니다
  var marker = new kakao.maps.Marker({
        map: map, 
       // 마커를 표시할 지도
        position: positions[i].latlng, 
        // 마커를 표시할 위치
        title : positions[i].title, 
        // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage 
        // 마커 이미지 
    });
    // 인포윈도우에 표시할 내용
    var infowindow = new kakao.maps.InfoWindow({
    content: positions[i].content 
    });
    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
// 이벤트 리스너로는 클로저를 만들어 등록합니다
// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
kakao.maps.event.addListener(marker, 'click', makeOverListener(map, marker, infowindow));
  
kakao.maps.event.addListener(marker, 'mouseover', makeOutListener(infowindow));

function makeOverListener(map, marker, infowindow) {
  return function() { infowindow.open(map, marker); };}
  // 인포윈도우를 닫는 클로저를 만드는 함수입니다

function makeOutListener(infowindow) {
  return function() { infowindow.close(); };}
}

