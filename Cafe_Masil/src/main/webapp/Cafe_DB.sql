create table joinInfo (
id varchar2(10) not null,
pw varchar2(10) not null,
nickname varchar2(10) not null,
tel varchar2(20) not null,
bestmenu varchar2(20) not null,
qna varchar2(100) not null,
constraint id_pk primary key(id)
);

select * from joinInfo;