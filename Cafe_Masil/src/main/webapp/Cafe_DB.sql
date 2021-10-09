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

/* 정렬 시퀀스 */
Create sequence cafeInfo_num
increment by 1
start with 1

/*필요할 때 쓰는 정렬 시퀀스*/
drop sequence cafeInfo_num

/* 더미 데이터 insert */
insert into cafeInfo values(cafeInfo_num.nextval,'2','김oo','010-123-4567','인더하우스','광주 동구 중앙로196번길 31-9','0622256515','2500',35.149192,126.918772,'09:00~23:00','아메리카노','20','1','1','1','1','1','1','1','메뉴판','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MjhfODIg%2FMDAxNjI3NDYyMTIxODg2.mIiBtE_s3Qh4q0tGcag4OnkIVhh658-WJ0R0VOdbgaMg.XkeNz437xseej82XGCGTzT7zfu4rmUv_xrR8F64EJT0g.JPEG.wjddk1004god%2FIMG_4632.jpg&type=a340','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MTJfMjQy%2FMDAxNTg2NjQ5MjkwNDc1.t9thxhspuKgyYNogV8ZpI5SFqhJKBuD9n9mGN3TAZPMg.IK_87GRcilby3MyTcwTiWYAwJm8MPjpdmzWZoQayjlUg.JPEG.indong2_%2FIMG_5997.jpg&type=a340','3','4','5','6');

select * from cafeInfo;

/* ----------------구분선 ------------------ */
drop table cafeDetail; /* 테이블 수정했으니 삭제하고 다시 만드세용 */

/* 카페 상세정보 테이블 */
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

/*정렬 시퀀스*/
Create sequence cafeDetail_num
increment by 1
start with 1

select * from cafeDetail;

/* ----------------구분선 ------------------ */
drop table evaluation; /* 테이블 수정했으니 삭제하고 다시 만드세용 */

/* 사용자 평가 테이블 */
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
constraint evaluation_fk foreign key(businessNumber) /* id를 pk로 설정해버리면 평생 사용자가 한 카페에 리뷰를 한번만 쓸수있게되서 다음에는 리뷰를 쓸 수가 없어서 지움 */  
references cafeRequest(businessNumber) /* cafeRequest의 사업자번호 참조 */
);

/*정렬 시퀀스*/
Create sequence cafeDetail_num
increment by 1
start with 1

select * from evaluation;

/* ----------------구분선 ------------------ */
drop table cafeKeyword; /* 테이블 수정했으니 삭제하고 다시 만드세용 */

/*키워드 테이블*/
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
constraint cafekeyword_fk foreign key(businessNumber) /* 이 테이블에서는 사업자번호를 외래키 설정 */ 
references caferequest(businessNumber) /* caferequest에 저장된 사업자번호 참조 */
);

/*정렬 시퀀스*/
Create sequence cafeKeyword_num
increment by 1
start with 1

select * from cafeKeyword;

/* ----------------구분선 ------------------ */
/* drop table subscription 혹시 모를 삭제에 대비해서 생성 */ 

/* 구독,스탬프 테이블 */
create table subscription(
num number,
cafeName varchar2(10) not null,
businessNumber varchar2(10) not null,
subs number not null,
stamp number not null,
constraint subscription_fk foreign key(businessNumber)
references caferequest(businessNumber)
)

/*정렬 시퀀스*/
Create sequence subscription_num
increment by 1
start with 1

select * from subscription;

select * from cafeInfo where cafeName='인더하우스'