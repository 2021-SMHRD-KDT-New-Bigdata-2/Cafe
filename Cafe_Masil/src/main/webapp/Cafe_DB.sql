drop table joinInfo; /* 테이블 수정했으니 삭제하고 다시 만드세용 */

/* 회원가입 테이블 */
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
drop table cafeInfo; /* 테이블 수정했으니 삭제하고 다시 만드세용 */

/* 카페정보 테이블 */
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

/* 정렬 시퀀스 */
Create sequence cafeInfo_num
increment by 1
start with 1

/*필요할 때 쓰는 정렬 시퀀스 삭제*/
drop sequence cafeInfo_num

/* 더미 데이터 insert */
insert into cafeInfo values(cafeInfo_num.nextval,'2','김oo','010-123-4567','인더하우스','광주 동구 중앙로196번길 31-9','0622256515','2500',35.149192,126.918772,'09:00~23:00','아메리카노','20','1','1','1','1','1','1','1','메뉴판','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MjhfODIg%2FMDAxNjI3NDYyMTIxODg2.mIiBtE_s3Qh4q0tGcag4OnkIVhh658-WJ0R0VOdbgaMg.XkeNz437xseej82XGCGTzT7zfu4rmUv_xrR8F64EJT0g.JPEG.wjddk1004god%2FIMG_4632.jpg&type=a340','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MTJfMjQy%2FMDAxNTg2NjQ5MjkwNDc1.t9thxhspuKgyYNogV8ZpI5SFqhJKBuD9n9mGN3TAZPMg.IK_87GRcilby3MyTcwTiWYAwJm8MPjpdmzWZoQayjlUg.JPEG.indong2_%2FIMG_5997.jpg&type=a340','3','4','5','6');

select * from cafeInfo;

/* ----------------구분선 ------------------ */
drop table evaluation; /* 테이블 수정했으니 삭제하고 다시 만드세용 */

/* 사용자 평가 테이블 */
create table evaluation(
num number,
id varchar2(10) not null,
businessNumber varchar2(30) not null,
cafeName varchar2(30) not null,
evaluation varchar2(500) not null,
constraint evaluation_pk primary key(num)
);

/*정렬 시퀀스*/
Create sequence evaluation_num
increment by 1
start with 1

/*필요할 때 쓰는 정렬 시퀀스 삭제*/
drop sequence evaluation_num

select * from evaluation;

/* ----------------구분선 ------------------ */
/* 사장회원정보 */
create table bossJoinInfo(
businessNumber varchar2(10) not null,
bossPw varchar2(10) not null,
constraint BossJoinInfo_pk primary key(businessNumber)
);

drop table bossJoinInfo;

select * from bossJoinInfo;

/* ----------------구분선 ------------------ */

/* 구독테이블 */
create table subscribe(
num number,
id varchar2(10) not null,
businessNumber varchar2(10) not null,
message varchar2(500),
cafeName varchar2(50) not null,
constraint subscribe_pk primary key(num)
);

/*정렬 시퀀스*/
Create sequence subscribe_num
increment by 1
start with 1

/*필요할 때 쓰는 정렬 시퀀스 삭제*/
drop sequence subscribe_num;

drop table subscribe;

select * from subscribe;

/* ----------------구분선 ------------------ */

/* 스탬프테이블 */
create table stamp(
num number,
tel varchar2(20) not null,
businessNumber varchar2(10) not null,
cafeName varchar2(50) not null,
allStamp number,
constraint stamp_pk primary key(num)
);

/*정렬 시퀀스*/
Create sequence stamp_num
increment by 1
start with 1

/*필요할 때 쓰는 정렬 시퀀스 삭제*/
drop sequence stamp_num

drop table stamp;

select * from stamp;