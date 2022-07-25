CREATE TABLE ShopImage (
ownnum NUMBER,
IMAGE1 VARCHAR2(30),
IMAGETEXT1 VARCHAR2(100),
IMAGE2 VARCHAR2(30),
IMAGETEXT2 VARCHAR2(100),
IMAGE3 VARCHAR2(30),
IMAGETEXT3 VARCHAR2(100),
IMAGE4 VARCHAR2(30),
IMAGETEXT4 VARCHAR2(100),
IMAGE5 VARCHAR2(30),
IMAGETEXT5 VARCHAR2(100),
MENUBOARD1 VARCHAR2(30),
MENUBOARD2 VARCHAR2(30),
MENUBOARD3 VARCHAR2(30),
MENUBOARD4 VARCHAR2(30),
MENUBOARD5 VARCHAR2(30),
PRICEBOARD VARCHAR2(30),
PRICEBOARD2 VARCHAR2(30),
PRICEBOARD3 VARCHAR2(30),
FOREIGN KEY(ownnum) REFERENCES ShopInfo(ownnum) ON DELETE CASCADE);

<-- IMAGE에는 가게 영문이름 앞에 4글자와 숫자 조합 (예시 : 맥도날드 이미지1 -> macd1.png -->
<-- MENUBOARD에는 가게 영문이름 앞 4글자와 뒤에 m + 숫자 조합 (예시 : 맥도날드 메뉴판1 -> macdm1.png -->
<-- PRICEBOARD에는 가게 영문이름 앞 4글자와 뒤에 p + 숫자 조합 (예시 : 맥도날드 가격표1 -> macdp1.png -->
<-- 이미지테이블의 순서는 외래키로 지정해둔 SHOPINFO 테이블을 따라간다. -->

INSERT INTO ShopImage VALUES (1 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (2 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (3 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (4 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (5 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (6 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (7 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (8 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (9 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (10 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (11 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (12 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (13 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (14 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (15 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (16 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (17 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (18 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (19 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (20 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (21 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (22 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (23 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (24 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (25 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (26 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (27 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (28 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (29 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (30 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (31 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (32 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
INSERT INTO ShopImage VALUES (33 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''); <--  -->
COMMIT;

select * from shopimage;