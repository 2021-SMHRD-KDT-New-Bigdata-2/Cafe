drop table joinInfo; /* 테이블 수정했으니 삭제하고 다시 만드세용 */

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

/*정렬 시퀀스*/
Create sequence joinInfo_num
increment by 1
start with 1

select * from joinInfo;

/* ----------------구분선 ------------------ */
drop table cafeRequest; /* 테이블 수정했으니 삭제하고 다시 만드세용 */

create table cafeRequest(
num number,
bossName varchar2(10) not null,
businessNumber varchar2(10) not null,
bossTel varchar2(10) not null,
cafeName varchar2(10) not null,
cafeAddress varchar2(10) not null,
cafeTel varchar2(10) not null,
constraint cafeRequest_pk primary key(BusinessNumber)
);

/*정렬 시퀀스*/
Create sequence cafeRequest_num
increment by 1
start with 1

select * from cafeRequest;

/* ----------------구분선 ------------------ */
drop table cafeDetail;

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
constraint cafeDetail_fk foreign key(businessNumber, cafeName, cafeTel, cafeAddress)
);

select * from cafeDetail;


create table evaluation(
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
constraint evaluation_pk primary key(id)
constraint evaluation_fk foreign key(businessNumber, cafeName, id)
);

select * from evaluation;

create table cafeKeyword(
cafeName varchar2(10) not null,
businessNumber varchar2(10) not null,
wifi varchar2(10) not null,
groupSeat varchar2(10) not null,
beanSell varchar(10) not null,
allTime varchar2(10) not null,
smokingArea varchar2(10) not null,
loasting varchar2(10) not null,
constraint cafeKeyword_pk primary key(businessNumber)
constraint cafeKeyword_fk foreign key(businessNumber, cafeName)
);

select * from cafeKeyword;