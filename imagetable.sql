CREATE TABLE ShopImageDBTEST (
Shopname VARCHAR(200),
Image1 VARCHAR2(50),
ImageText1 VARCHAR2(80),
Image2 VARCHAR2(50),
ImageText2 VARCHAR2(80),
Image3 VARCHAR2(50),
ImageText3 VARCHAR2(80),
Image4 VARCHAR2(50),
ImageText4 VARCHAR2(80),
Image5 VARCHAR2(50),
ImageText5 VARCHAR2(80),
MenuBoard1 VARCHAR2(50),
MenuBoard2 VARCHAR2(50),
MenuBoard3 VARCHAR2(50));

INSERT INTO ShopImageDB VALUES('맥도날드' ,'mac1.png', '상하이 스파이시 치킨 버거', 'mac2.png' ,'빅맥 버거' , 'mac3.png','베이컨 토마토 디럭스 버거' ,'mac4.png' ,'불고기 버거' ,'mac5.png', '더블 쿼터파운드 치즈버거', '', '', ''); 

COMMIT;

select * from shopimagedb;