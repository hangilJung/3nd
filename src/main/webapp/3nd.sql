
create table face_member (
	num number,
	email varchar2(30) not null unique ,
	pw varchar2(30) not null,
	phone varchar2(13) not null,
	imagepath varchar2(100)
);

create sequence num_seq;

drop sequence num_seq;

drop table face_member;