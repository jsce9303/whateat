CREATE TABLE ShopTestDB (
ownnum NUMBER PRIMARY KEY,
shopname VARCHAR2(200) NOT NULL,
address VARCHAR2(200) NOT NULL,
category VARCHAR2(100) NOT NULL,
image VARCHAR2(50) NOT NULL,
regidate DATE  default sysdate,
phone VARCHAR2(50) NOT NULL,
manu1 VARCHAR2(80),
menuimage1 VARCHAR2(50),
manu2 VARCHAR2(80),
menuimage2 VARCHAR2(50),
manu3 VARCHAR2(80),
menuimage3 VARCHAR2(50),
manu4 VARCHAR2(80),
menuimage4 VARCHAR2(50),
manu5 VARCHAR2(80),
menuimage5 VARCHAR2(50)
);

INSERT INTO ShopTestDB VALUES (3, '롯데리아', '경기 수원시 영통구 덕영대로 1499', '패스트푸드', 'macdonald.png', 
TO_DATE('2022-07-20 09:51:27', 'YYYY-MM-DD HH24:MI:SS'), '070-7209-0589', '상하이 스파이시 치킨버거', 'mac1.png', '빅맥 버거', 'mac2.png', '베이컨 토마토 디럭스 버거', 'mac3.png', '불고기 버거', 'mac4.png', 
'더블 쿼터파운드 치즈버거', 'mac5.png');


