create table joinInfo (
id varchar2(10) not null,
pw varchar2(10) not null,
nickname varchar2(10) not null,
tel varchar2(20) not null,
bestMenu varchar2(20) not null,
qna varchar2(100) not null,
answer varcahr2(10) not null,
constraint joinInfo_pk primary key(id)
);

select * from joinInfo;

create table cafeRequest(
bossName varchar2(10) not null,
businessNumber varchar2(10),
bossTel varchar2(10) not null,
cafeName varchar2(10) not null,
cafeAddress varchar2(10) not null,
cafeTel varchar2(10) not null,
constraint cafeRequest_pk primary key(BusinessNumber)
);

select * from cafeRequest;


create table cafeDetail(
cafeName varchar2(10),
businessNumber varchar2(10),
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

select * from cafeDetail;

create table evaluation(
cafeName varchar2(10),
businessNumber varchar2(10),
clean varchar2(10) not null,
area varchar2(10) not null,
flavor varchar2(10) not null, 
dessert varchar2(10) null,
service varchar2(10) not null,
reVisit varchar2(10) not null,
picture varchar2(10) not null,
notGood varchar2(10) not null,
constraint cafeDetail_pk primary key(businessNumber)
);

select * from evaluation;

create table cafeKeyword(
cafeName varchar2(10),
businessNumber varchar2(10),
wifi varchar2(10) not null,
groupSeat varchar2(10) not null,
beanSell varchar(10) not null,
allTime varchar2(10) not null,
smokingArea varchar2(10) not null,
loasting varchar2(10) not null,
constraint cafeKeyword_pk primary key(businessNumber)
);

select * from cafeKeyword;