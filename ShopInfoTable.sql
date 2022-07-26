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
<-- ��ǥ�̹����� ���ھ��� ���� �����̸� �� 4���� (���� : �Ƶ����� ��ǥ�̹��� -> mac.png) -->
<-- ���̺��� ������ �ڹٽ�ũ��Ʈ�� �迭�� ���������Ѵ�. -->
<-- �ߺ��Ǵ� ������ �̹��� ���� ��쿡�� ���ĺ� ������� �ڿ� ���δ� (���� : �Ƶ����� A���� -> maca.png B���� -> macb.png) -->

CREATE SEQUENCE ShopInfo_seq;

INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�Ƶ����� ��������DT��', '��� ������ ���뱸 ������� 1499', '�н�ƮǪ��', 'macd.png', SYSDATE, '070-7209-0589');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�Ե����� ��������', '��� ������ ���뱸 ������� 1515', '�н�ƮǪ��', 'lott.png', SYSDATE, '031-206-7678');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '������ġ ����1ȣ��', '��� ������ ���뱸 �������1555���� 13 ���Ϻ��� 101, 102ȣ', '�н�ƮǪ��', 'moms.png', SYSDATE, '0507-1430-8114');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, 'UFO���� ����������', '��� ������ ���뱸 ������� 1535 ���������� 1��', '�н�ƮǪ��', 'ufob.png', SYSDATE, '031-203-4404');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '���õ�� ������', '��� ������ ���뱸 �������1555���� 13', '�н�', 'kimba.png', SYSDATE, '031-204-5373');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�������� ������������', '��� ������ ���뱸 �������1555���� 13 ���Ϻ���', '���', 'kuks.png', SYSDATE, '031-206-5262');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '����α���� �����������������', '��� ������ ���뱸 �������1555���� 13 ���Ϻ���', '�н�', 'gobo.png', SYSDATE, '031-204-6672');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '������ ����������', '��� ������ ���뱸 �������1555���� 13 112ȣ ������ ����������', '���ö�', 'ggo.png', SYSDATE, '031-216-5843');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�̻��佺Ʈ �������뺮������', '��� ������ ���뱸 ����� 232 �켺����Ʈ �� 105ȣ', '����', 'issa.png', SYSDATE, '031-206-8861');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '���׺���� �������뺮������', '��� ������ ���뱸 �������1555���� 16 ������Ե�����Ʈ', '�ѽ�', 'bonj.png', SYSDATE, '031-205-6288');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�ĸ��ٰԶ� ����Ե���', '��� ������ ���뱸 �������1555���� 16 (���뵿) ������Ե�����Ʈ', '����', 'pari.png', SYSDATE, '031-203-0600');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�̼Ҿ� ������������', '��� ������ ���뱸 �����214���� 55 ���Ϻ���', '�Ͻ�', 'miso.png', SYSDATE, '031-205-9589');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, 'ȫ�����0410 ������������', '��� ������ ���뱸 ������� 1543 2��', '�߽�', 'hong.png', SYSDATE, '0507-1329-6918');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�����Ҹż��뱹', '��� ������ ���뱸 �����214���� 9', '�ѽ�', 'mang.png', SYSDATE, '0507-1404-9922');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�������� ����������', '��� ������ ���뱸 �����214���� 9', '�ѽ�', 'ogon.png', SYSDATE, '070-8880-8015');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '��������0410 ����������', '��� ������ ���뱸 ����� 215 �������� 1��', '�ѽ�', 'miju.png', SYSDATE, '031-273-0410');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '���������� ��������1ȣ��', '��� ������ ���뱸 ����� 232 ��2�� 104ȣ', '�н�', 'sinj.png', SYSDATE, '0507-1478-2666');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '��Ų������ ����������', '��� ������ ���뱸 �����217���� 6 ��������Ÿ������ 1�� 109ȣ', '����', 'dunk.png', SYSDATE, '031-202-0100');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '������ ������������', '��� ������ ���뱸 �����217���� 6 1�� 108ȣ ���뵿, ����������', '���', 'sala.png', SYSDATE, '031-203-3388');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�谡�ױ�� ��������Ÿ���', '��� ������ ���뱸 �����217���� 6 1�� 104ȣ', '�н�', 'kimg.png', SYSDATE, '031-202-0882');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�ٺ��⸶���� ������', '��� ������ ���뱸 �����217���� 6 103ȣ', '�߽�', 'dabo.png', SYSDATE, '031-203-6677');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�б����ѽĺ���', '��� ������ ���뱸 �������1499���� 39', '�ѽ�', 'abgu.png', SYSDATE, '031-273-8289');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '������ ������', '��� ������ ���뱸 �����241���� 12-43 ����2��', '�߽�', 'quai.png', SYSDATE, '031-203-8333');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�Ѽܵ��ö� ������������', '��� ������ ���뱸 �����241���� 12-39', '���ö�', 'hans.png', SYSDATE, '031-202-8128');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '���õ�� ������', '��� ������ ���뱸 ����� 195', '�н�', 'kimbb.png', SYSDATE, '031-206-3006');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '��Ƽ���̺�Ʈ���ұ��� ������', '��� ������ ���뱸 ����� 195', '���', 'jeon.png', SYSDATE, '031-203-4929');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�ְ�絷� ��������', '��� ������ ���뱸 ����� 195 ��罺���� 119ȣ', '�Ͻ�', 'choi.png', SYSDATE, '031-202-3720');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�Ͼ�ǳ�������� ������', '��� ������ ���뱸 ����� 195', '����', 'haya.png', SYSDATE, '0507-1407-0031');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, 'ū���Ҹż��뱹 ������', '��� ������ ���뱸 �������1556���� 16 a��101ȣ', '�ѽ�', 'kunm.png', SYSDATE, '031-203-9370');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '��ȭ���', '��� ������ ���뱸 �������1556���� 16 C �� 110ȣ', '�Ͻ�', 'sang.png', SYSDATE, '031-273-6432');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�ε��ѻ���Į����', '��� ������ ���뱸 �������1556���� 16', '���', 'dudu.png', SYSDATE, '0507-1309-3349');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '�Ҹ� ��������', '��� ������ ���뱸 ����� 195 110ȣ', '���', 'nill.png', SYSDATE, '031-205-3877');
INSERT INTO ShopInfo VALUES (ShopInfo_seq.nextval, '������ ����������', '��� ������ ���뱸 ����� 195 ��罺���� 116ȣ', '����', 'subw.png', SYSDATE, '0507-1426-0713');

COMMIT;

SELECT * FROM ShopInfo;