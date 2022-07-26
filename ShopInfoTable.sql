create table ShopInfo(
ownnum number primary key,
shopname VARCHAR2 (50) not null,
address VARCHAR2 (200) not null,
category VARCHAR2 (20) not null,
image VARCHAR2 (30) not null,
regidate DATE default sysdate,
phone VARCHAR2 (30) not null);

drop table shopinfo;
drop table shopimage;
<-- 대표이미지는 숫자없이 가게 영문이름 앞 4글자 (예시 : 맥도날드 대표이미지 -> mac.png) -->
<-- 테이블의 순서는 자바스크립트의 배열을 기준으로한다. -->
<-- 중복되는 지점의 이미지 같은 경우에는 알파벳 순서대로 뒤에 붙인다 (예시 : 맥도날드 A지점 -> maca.png B지점 -> macb.png) -->

CREATE SEQUENCE ShopInfo_seq;

INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '맥도날드 수원망포DT점', '경기 수원시 영통구 덕영대로 1499', '패스트푸드', 'macd.png', SYSDATE, '070-7209-0589');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '롯데리아 망포역점', '경기 수원시 영통구 덕영대로 1515', '패스트푸드', 'lott.png', SYSDATE, '031-206-7678');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '맘스터치 영통1호점', '경기 수원시 영통구 덕영대로1555번길 13 세일빌딩 101, 102호', '패스트푸드', 'moms.png', SYSDATE, '0507-1430-8114');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, 'UFO버거 수원망포점', '경기 수원시 영통구 덕영대로 1535 현대프라자 1층', '패스트푸드', 'ufob.png', SYSDATE, '031-203-4404');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '김밥천국 영통점', '경기 수원시 영통구 덕영대로1555번길 13', '분식', 'kimba.png', SYSDATE, '031-204-5373');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '국수나무 수원벽적골점', '경기 수원시 영통구 덕영대로1555번길 13 세일빌딩', '면류', 'kuks.png', SYSDATE, '031-206-5262');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '고봉민김밥인 수원벽적골망포역점', '경기 수원시 영통구 덕영대로1555번길 13 세일빌딩', '분식', 'gobo.png', SYSDATE, '031-204-6672');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '지지고 수원영통점', '경기 수원시 영통구 덕영대로1555번길 13 112호 지지고 수원영통점', '도시락', 'jiji.png', SYSDATE, '031-216-5843');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '이삭토스트 수원영통벽적골점', '경기 수원시 영통구 영통로 232 우성아파트 상가 105호', '제과', 'issa.png', SYSDATE, '031-206-8861');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '본죽비빔밥 수원영통벽적골점', '경기 수원시 영통구 덕영대로1555번길 16 벽적골롯데아파트', '한식', 'bonj.png', SYSDATE, '031-205-6288');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '파리바게뜨 영통롯데점', '경기 수원시 영통구 덕영대로1555번길 16 (영통동) 벽적골롯데아파트', '제과', 'pari.png', SYSDATE, '031-203-0600');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '미소야 수원벽적골점', '경기 수원시 영통구 영통로214번길 55 세일빌딩', '일식', 'miso.png', SYSDATE, '031-205-9589');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '홍콩반점0410 수원망포역점', '경기 수원시 영통구 덕영대로 1543 2층', '중식', 'hong.png', SYSDATE, '0507-1329-6918');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '망포할매순대국', '경기 수원시 영통구 영통로214번길 9', '한식', 'mang.png', SYSDATE, '0507-1404-9922');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '오공복이 수원망포점', '경기 수원시 영통구 영통로214번길 9', '한식', 'ogon.png', SYSDATE, '070-8880-8015');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '미정국수0410 수원영통점', '경기 수원시 영통구 영통로 215 정원빌딩 1층', '한식', 'mije.png', SYSDATE, '031-273-0410');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '신전떡볶이 수원영통1호점', '경기 수원시 영통구 영통로 232 상가2동 104호', '분식', 'sinj.png', SYSDATE, '0507-1478-2666');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '던킨도너츠 수원망포점', '경기 수원시 영통구 영통로217번길 6 망포역센타프라자 1층 109호', '제과', 'dunk.png', SYSDATE, '031-202-0100');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '샐러디 수원망포역점', '경기 수원시 영통구 영통로217번길 6 1층 108호 영통동, 센터프라자', '양식', 'sala.png', SYSDATE, '031-203-3388');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '김가네김밥 망포역사거리점', '경기 수원시 영통구 영통로217번길 6 1층 104호', '분식', 'kimg.png', SYSDATE, '031-202-0882');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '다복향마라탕 망포점', '경기 수원시 영통구 영통로217번길 6 103호', '중식', 'dabo.png', SYSDATE, '031-203-6677');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '압구정한식부페', '경기 수원시 영통구 덕영대로1499번길 39', '한식', 'abgu.png', SYSDATE, '031-273-8289');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '콰이찬 영통점', '경기 수원시 영통구 영통로241번길 12-43 지하2층', '중식', 'quai.png', SYSDATE, '031-203-8333');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '한솥도시락 수원태장고앞점', '경기 수원시 영통구 영통로241번길 12-39', '도시락', 'hans.png', SYSDATE, '031-202-8128');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '김밥천국 망포점', '경기 수원시 영통구 영통로 195', '분식', 'kimbb.png', SYSDATE, '031-206-3006');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '전티마이베트남쌀국수 망포점', '경기 수원시 영통구 영통로 195', '면류', 'jeon.png', SYSDATE, '031-203-4929');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '최고당돈까스 망포역점', '경기 수원시 영통구 영통로 195 골든스퀘어 119호', '일식', 'choi.png', SYSDATE, '031-202-3720');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '하얀풍차제과점 망포점', '경기 수원시 영통구 영통로 195', '제과', 'haya.png', SYSDATE, '0507-1407-0031');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '큰맘할매순대국 망포점', '경기 수원시 영통구 덕영대로1556번길 16 a동101호', '한식', 'kunm.png', SYSDATE, '031-203-9370');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '상화돈까스', '경기 수원시 영통구 덕영대로1556번길 16 C 동 110호', '일식', 'sang.png', SYSDATE, '031-273-6432');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '두둑한샤브칼국수', '경기 수원시 영통구 덕영대로1556번길 16', '면류', 'dudu.png', SYSDATE, '0507-1309-3349');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '닐리 망포역점', '경기 수원시 영통구 영통로 195 110호', '양식', 'nill.png', SYSDATE, '031-205-3877');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '써브웨이 수원망포점', '경기 수원시 영통구 영통로 195 골든스퀘어 116호', '제과', 'subw.png', SYSDATE, '0507-1426-0713');

COMMIT;

SELECT * FROM ShopInfo;