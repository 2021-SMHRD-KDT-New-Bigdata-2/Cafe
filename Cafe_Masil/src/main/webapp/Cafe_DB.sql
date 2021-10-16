drop table joinInfo; /* ���̺� ���������� �����ϰ� �ٽ� ���弼�� */

/* ȸ������ ���̺� */
create table joinInfo(
num number,
id varchar2(10) not null,
pw varchar2(10) not null,
nickname varchar2(10) not null,
tel varchar2(20) not null,
bestMenu varchar2(20) not null,
qna varchar2(100) not null,
answer varchar2(10) not null,
constraint joinInfo_pk primary key(id)
);

/*���� ������*/
Create sequence joinInfo_num
increment by 1
start with 1

select * from joinInfo;

/* ----------------���м� ------------------ */
drop table cafeInfo; /* ���̺� ���������� �����ϰ� �ٽ� ���弼�� */

/* ī������ ���̺� */
create table cafeInfo(
num number,
businessNumber varchar2(30) not null,
bossName varchar2(30) not null,
bossTel varchar2(20) not null,
cafeName varchar2(30) not null,
cafeAddress varchar2(100) not null,
cafeTel varchar2(30) not null,
ameIndex varchar2(50),
lat float,
lng float,
cafeHours varchar2(30),
bestMenu varchar2(50), 
tableNum varchar2(30),
delivery varchar2(50),
groupseat varchar2(50),
beansell varchar2(50),
companion varchar2(50),
smokingArea varchar2(50),
roasting varchar2(50),
dessert varchar2(50),
board varchar2(300),
image1 varchar2(300),
image2 varchar2(300),
image3 varchar2(300),
image4 varchar2(300),
image5 varchar2(300),
image6 varchar2(300),
etc varchar2(1000)
constraint cafeInfo_pk primary key(BusinessNumber)
);

/* ���� ������ */
Create sequence cafeInfo_num
increment by 1
start with 1

/*�ʿ��� �� ���� ���� ������ ����*/
drop sequence cafeInfo_num

/* ���� ������ insert */
insert into cafeInfo values(cafeInfo_num.nextval,'2','��oo','010-123-4567','�δ��Ͽ콺','���� ���� �߾ӷ�196���� 31-9','0622256515','2500',35.149192,126.918772,'09:00~23:00','�Ƹ޸�ī��','20','1','1','1','1','1','1','1','�޴���','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MjhfODIg%2FMDAxNjI3NDYyMTIxODg2.mIiBtE_s3Qh4q0tGcag4OnkIVhh658-WJ0R0VOdbgaMg.XkeNz437xseej82XGCGTzT7zfu4rmUv_xrR8F64EJT0g.JPEG.wjddk1004god%2FIMG_4632.jpg&type=a340','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MTJfMjQy%2FMDAxNTg2NjQ5MjkwNDc1.t9thxhspuKgyYNogV8ZpI5SFqhJKBuD9n9mGN3TAZPMg.IK_87GRcilby3MyTcwTiWYAwJm8MPjpdmzWZoQayjlUg.JPEG.indong2_%2FIMG_5997.jpg&type=a340','3','4','5','6');

select * from cafeInfo;

/* ----------------���м� ------------------ */
drop table evaluation; /* ���̺� ���������� �����ϰ� �ٽ� ���弼�� */

/* ����� �� ���̺� */
create table evaluation(
num number,
id varchar2(10) not null,
businessNumber varchar2(30) not null,
cafeName varchar2(30) not null,
evaluation varchar2(500) not null,
constraint evaluation_pk primary key(num)
);

/*���� ������*/
Create sequence evaluation_num
increment by 1
start with 1

/*�ʿ��� �� ���� ���� ������ ����*/
drop sequence evaluation_num

select * from evaluation;

/* ----------------���м� ------------------ */
/* ����ȸ������ */
create table bossJoinInfo(
businessNumber varchar2(10) not null,
bossPw varchar2(10) not null,
constraint BossJoinInfo_pk primary key(businessNumber)
);

drop table bossJoinInfo;

select * from bossJoinInfo;

/* ----------------���м� ------------------ */

/* �������̺� */
create table subscribe(
num number,
id varchar2(10) not null,
businessNumber varchar2(10) not null,
message varchar2(500),
cafeName varchar2(50) not null,
constraint subscribe_pk primary key(num)
);

/*���� ������*/
Create sequence subscribe_num
increment by 1
start with 1

/*�ʿ��� �� ���� ���� ������ ����*/
drop sequence subscribe_num;

drop table subscribe;

select * from subscribe;

/* ----------------���м� ------------------ */

/* ���������̺� */
create table stamp(
num number,
tel varchar2(20) not null,
businessNumber varchar2(10) not null,
cafeName varchar2(50) not null,
allStamp number,
constraint stamp_pk primary key(num)
);

/*���� ������*/
Create sequence stamp_num
increment by 1
start with 1

/*�ʿ��� �� ���� ���� ������ ����*/
drop sequence stamp_num

drop table stamp;

select * from stamp;