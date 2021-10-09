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
ameIndex varchar2(10),
lat float,
lng float,
cafeHours varchar2(30),
bestMenu varchar2(30), 
tableNum varchar2(30),
wifi varchar2(10),
groupseat varchar2(10),
beansell varchar2(10),
companion varchar2(10),
smokingArea varchar2(10),
roasting varchar2(10),
subsidy varchar2(10),
board varchar2(300),
image1 varchar2(300),
image2 varchar2(300),
image3 varchar2(300),
image4 varchar2(300),
image5 varchar2(300),
image6 varchar2(300),
constraint cafeInfo_pk primary key(BusinessNumber)
);

/* ���� ������ */
Create sequence cafeInfo_num
increment by 1
start with 1

/*�ʿ��� �� ���� ���� ������*/
drop sequence cafeInfo_num

/* ���� ������ insert */
insert into cafeInfo values(cafeInfo_num.nextval,'2','��oo','010-123-4567','�δ��Ͽ콺','���� ���� �߾ӷ�196���� 31-9','0622256515','2500',35.149192,126.918772,'09:00~23:00','�Ƹ޸�ī��','20','1','1','1','1','1','1','1','�޴���','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MjhfODIg%2FMDAxNjI3NDYyMTIxODg2.mIiBtE_s3Qh4q0tGcag4OnkIVhh658-WJ0R0VOdbgaMg.XkeNz437xseej82XGCGTzT7zfu4rmUv_xrR8F64EJT0g.JPEG.wjddk1004god%2FIMG_4632.jpg&type=a340','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MTJfMjQy%2FMDAxNTg2NjQ5MjkwNDc1.t9thxhspuKgyYNogV8ZpI5SFqhJKBuD9n9mGN3TAZPMg.IK_87GRcilby3MyTcwTiWYAwJm8MPjpdmzWZoQayjlUg.JPEG.indong2_%2FIMG_5997.jpg&type=a340','3','4','5','6');

select * from cafeInfo;

/* ----------------���м� ------------------ */
drop table cafeDetail; /* ���̺� ���������� �����ϰ� �ٽ� ���弼�� */

/* ī�� ������ ���̺� */
create table cafeDetail(
num number,
cafeName varchar2(10) not null,
businessNumber varchar2(10) not null,
cafeTel varchar2(10) not null,
ameIndex varchar2(10) not null,
tableNum varchar2(10) not null,
bestMenu varchar2(10) not null, 
cafeAddress varchar2(10) not null,
cafeHours date not null,
locationLati varchar2(10) not null,
locationLongi varchar2(10) not null,
constraint cafeDetail_pk primary key(businessNumber)
);

/*���� ������*/
Create sequence cafeDetail_num
increment by 1
start with 1

select * from cafeDetail;

/* ----------------���м� ------------------ */
drop table evaluation; /* ���̺� ���������� �����ϰ� �ٽ� ���弼�� */

/* ����� �� ���̺� */
create table evaluation(
num number,
id varchar2(10) not null,
cafeName varchar2(10) not null,
businessNumber varchar2(10) not null,
clean varchar2(10) not null,
area varchar2(10) not null,
flavor varchar2(10) not null, 
dessert varchar2(10) not null,
service varchar2(10) not null,
reVisit varchar2(10) not null,
picture varchar2(10) not null,
notGood varchar2(10) not null,
constraint evaluation_fk foreign key(businessNumber) /* id�� pk�� �����ع����� ��� ����ڰ� �� ī�信 ���並 �ѹ��� �����ְԵǼ� �������� ���並 �� ���� ��� ���� */  
references cafeRequest(businessNumber) /* cafeRequest�� ����ڹ�ȣ ���� */
);

/*���� ������*/
Create sequence cafeDetail_num
increment by 1
start with 1

select * from evaluation;

/* ----------------���м� ------------------ */
drop table cafeKeyword; /* ���̺� ���������� �����ϰ� �ٽ� ���弼�� */

/*Ű���� ���̺�*/
create table cafeKeyword(
num number,
cafeName varchar2(10) not null,
businessNumber varchar2(10) not null,
wifi varchar2(10) not null,
groupSeat varchar2(10) not null,
beanSell varchar(10) not null,
companion varchar2(10) not null,
smokingArea varchar2(10) not null,
roasting varchar2(10) not null,
constraint cafekeyword_fk foreign key(businessNumber) /* �� ���̺����� ����ڹ�ȣ�� �ܷ�Ű ���� */ 
references caferequest(businessNumber) /* caferequest�� ����� ����ڹ�ȣ ���� */
);

/*���� ������*/
Create sequence cafeKeyword_num
increment by 1
start with 1

select * from cafeKeyword;

/* ----------------���м� ------------------ */
/* drop table subscription Ȥ�� �� ������ ����ؼ� ���� */ 

/* ����,������ ���̺� */
create table subscription(
num number,
cafeName varchar2(10) not null,
businessNumber varchar2(10) not null,
subs number not null,
stamp number not null,
constraint subscription_fk foreign key(businessNumber)
references caferequest(businessNumber)
)

/*���� ������*/
Create sequence subscription_num
increment by 1
start with 1

select * from subscription;

select * from cafeInfo where cafeName='�δ��Ͽ콺'