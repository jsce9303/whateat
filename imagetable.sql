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

INSERT INTO ShopImage VALUES (1 , '', '', '', '', '', '', '', '', '', '', 'macdb1.png', 'macdb2.png', 'macdb3.png', 'macdp1.png', 'macdp1.png', '', '', '');
INSERT INTO ShopImage VALUES (2 , '', '', '', '', '', '', '', '', '', '', 'lottb1.png', 'lottb2.png', '', '', '', 'lottp1.png', '', '');
INSERT INTO ShopImage VALUES (3 , '', '', '', '', '', '', '', '', '', '', 'momsb1.png', 'momsb2.png', '', '', '', 'momsp1.png', 'momsp2.png', ''); 
INSERT INTO ShopImage VALUES (4 , '', '', '', '', '', '', '', '', '', '', 'ufobb1.png', 'ufobb2.png', 'ufobb3.png', '', '', '', '', ''); 
INSERT INTO ShopImage VALUES (5 , '', '', '', '', '', '', '', '', '', '', 'kimbb1.png', 'kimbb2.png', 'kimbb3.png', '', '', 'kimbpa1.png', '', '');
INSERT INTO ShopImage VALUES (6 , '', '', '', '', '', '', '', '', '', '', 'kuksb1.png', 'kuksb2.png', 'kuksb3.png', 'kuksb4.png', '', '', '', '');
INSERT INTO ShopImage VALUES (7 , '', '', '', '', '', '', '', '', '', '', 'gobob1.png', 'gobob2.png', 'gobob3.png', 'gobob4.png', '', '', '', '');
INSERT INTO ShopImage VALUES (8 , '', '', '', '', '', '', '', '', '', '', 'gggob1.png', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (9 , '', '', '', '', '', '', '', '', '', '', 'issab1.png', 'issab2.png', 'issab3.png', 'issab4.png', '', '', '', '');
INSERT INTO ShopImage VALUES (10 , '', '', '', '', '', '', '', '', '', '', 'bonjb1.png', 'bonjb2.png', 'bonjb3.png', 'bonjb4.png', '', '', '', '');
INSERT INTO ShopImage VALUES (11 , '', '', '', '', '', '', '', '', '', '', 'parib1.png', 'parib2.png', '', '', '', 'parip1.png', '', '');
INSERT INTO ShopImage VALUES (12 , '', '', '', '', '', '', '', '', '', '', 'misob1.png', 'misob2.png', 'misob3.png', 'misob4.png', 'misob5.png', '', '', '');
INSERT INTO ShopImage VALUES (13 , '', '', '', '', '', '', '', '', '', '', 'hongb1.png', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (14 , '', '', '', '', '', '', '', '', '', '', 'mangb1.png', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (15 , '', '', '', '', '', '', '', '', '', '', 'ogonb1.png', 'ogonb2.png', 'ogonb3.png', '', '', '', '', '');
INSERT INTO ShopImage VALUES (16 , '', '', '', '', '', '', '', '', '', '', 'mijub1.png', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (17 , '', '', '', '', '', '', '', '', '', '', 'sinjb1.png', 'sinjb2.png', 'sinjb3.png', 'sinjp1.png', '', '', '', '');
INSERT INTO ShopImage VALUES (18 , '', '', '', '', '', '', '', '', '', '', 'dunkb1.png', 'dunkb2.png', 'dunkb3.png', '', '', '', '', '');
INSERT INTO ShopImage VALUES (19 , '', '', '', '', '', '', '', '', '', '', 'salab1.png', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (20 , '', '', '', '', '', '', '', '', '', '', 'kimgb1.png', 'kimgb2.png', 'kimgb3.png', 'kimgb4.png', 'kimgb5.png', 'kimgp1.png', 'kimgp2.png', 'kimgp3.png');
INSERT INTO ShopImage VALUES (21 , '', '', '', '', '', '', '', '', '', '', 'dabob1.png', '', '', '', '', 'dabop1.png', '', '');
INSERT INTO ShopImage VALUES (22 , 'X', '메뉴변동O', 'X', '카드 6500원', 'x', '현금 6000원', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (23 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (24 , '', '', '', '', '', '', '', '', '', '', 'hansb1.png', 'hansb2.png', 'hansb3.png', 'hansb4.png', '', '', '', '');
INSERT INTO ShopImage VALUES (25 , '', '', '', '', '', '', '', '', '', '', 'kimbb1.png', 'kimbb2.png', 'kimbb3.png', '', '', 'kimbpa1.png', '', '');
INSERT INTO ShopImage VALUES (26 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'jeonp1.png', '', '');
INSERT INTO ShopImage VALUES (27 , '', '', '', '', '', '', '', '', '', '', 'choib1.png', 'choib2.png', '', '', '', 'choip1.png', '', '');
INSERT INTO ShopImage VALUES (28 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (29 , '', '', '', '', '', '', '', '', '', '', 'kunmb1.png', 'kunmb2.png', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (30 , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (31 , '', '', '', '', '', '', '', '', '', '', 'dudub1.png', '', '', '', '', '', '', '');
INSERT INTO ShopImage VALUES (32 , '', '', '', '', '', '', '', '', '', '', 'nillb1.png', 'nillb2.png', 'nillb3.png', '', '', '', '', '');
INSERT INTO ShopImage VALUES (33 , '', '', '', '', '', '', '', '', '', '', 'subwb1.png', 'subwb2.png', 'subwb3.png', '', '', '', '', '');
COMMIT;

select * from shopimage;