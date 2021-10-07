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
businessNumber varchar2(20) not null,
bossName varchar2(10) not null,
bossTel varchar2(10) not null,
cafeName varchar2(10) not null,
cafeAddress varchar2(10) not null,
cafeTel varchar2(10) not null,
ameIndex varchar2(10),
lat float,
lng float,
cafeHours varchar2(10),
bestMenu varchar2(10), 
tableNum varchar2(10),
wifi varchar2(10),
groupseat varchar2(10),
beansell varchar2(10),
companion varchar2(10),
smokingArea varchar2(10),
roasting varchar2(10),
subsidy varchar2(10),
board varchar2(50),
image1 varchar2(50),
image2 varchar2(50),
image3 varchar2(50),
image4 varchar2(50),
image5 varchar2(50),
image6 varchar2(50),
constraint cafeInfo_pk primary key(BusinessNumber)
);

/* ���� ������ */
Create sequence cafeInfo_num
increment by 1
start with 1

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