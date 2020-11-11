
create table face_member (
	num number,
	email varchar2(30) not null unique ,
	pw varchar2(30) not null,
	phone varchar2(13) not null,
	imagepath varchar2(100)
);

--lecture
create table lecture(
	lectureno number,
	name varchar2(100),
	episode number,
	path varchar2(1000),
	constraint pk_lec_no primary key (lectureno)
);

create sequence lec_seq;

insert into lecture values (lec_seq.nextval, '[고3 2018년 3월 모의고사 해설강의] 국어 1~45번 : 김민정T' , 1, '/resources/video/korean.mp4');
insert into lecture values (lec_seq.nextval, '[2020학년도 고3 수능 해설강의] 수학(나)- 미적분Ⅰ이하영쌤의 분석과 전략', 1, '/resources/video/math1.mp4');
insert into lecture values (lec_seq.nextval, '[2020학년도 고3 수능 해설강의] 수학(나)- 미적분Ⅰ이하영쌤의 분석과 전략', 2, '/resources/video/math2.mp4');
insert into lecture values (lec_seq.nextval, '[2019 고3 3월 모의고사 해설강의] 생명과학Ⅰ- 조은희쌤: 분석과 전략', 1, '/resources/video/science.mp4');

--mylecture
create table mylecture(
mylectureno number,
id varchar2(20),
lectureno number, 
constraint pk_mylec_no primary key (mylectureno),
constraint fk_lec_mylec_no foreign key (lectureno) references lecture(lectureno)
);

create sequence mylec_seq;

insert into mylecture values (mylec_seq.nextval, 'suin', '1');
insert into mylecture values (mylec_seq.nextval, 'suin', '2');
insert into mylecture values (mylec_seq.nextval, 'suin', '3');
insert into mylecture values (mylec_seq.nextval, 'suin', '4');

--concentration
create table concentration(
	mylectureno number,
	time number,
	score number,
	constraint fk_mylec_con_no foreign key (mylectureno) references mylecture(mylectureno)
);


SET serveroutput ON;      

BEGIN
    FOR I IN 1..344
    LOOP
    insert into concentration values(3,I,(select dbms_random.value from dual));
    END LOOP;
END;

--selfStudy
create table selfstudy (
	id varchar2(20),
	studydate varchar2(100),
	time number
);

insert into selfstudy values('suin', '20201015', '2780');
insert into selfstudy values('suin', '20201028', '403');
insert into selfstudy values('suin', '20201101', '1231');
insert into selfstudy values('suin', '20201102', '2352');
insert into selfstudy values('suin', '20201105', '3444');


create sequence num_seq;

drop sequence num_seq;

drop table face_member;