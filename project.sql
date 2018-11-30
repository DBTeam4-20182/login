drop table rental;
drop table member;
drop table employee;
drop table book;
drop table appendix;
drop table location;

create table member(
    id varchar2(20),
    name varchar2(10),
    pwd varchar2(20),
    primary key(id)
);

create table rental(
    id varchar2(20),
    book_id int,
    foreign key(id) references member(id),
    foreign key(book_id) references book(book_id)
);

create table location (
    location_id int,
    location_name varchar2(20),
    mgr_eid int,
    primary key(location_id),
    foreign key(mgr_eid) references employee(emp_id)
);

insert into location values(1, '1층 A', 1);
insert into location values(2, '1층 B', 1);
insert into location values(3, '2층 A', 2);
insert into location values(4, '2층 B', 2);
insert into location values(5, '3층 A', 3);
insert into location values(6, '3층 B', 3);
insert into location values(7, '4층 A', 4);
insert into location values(8, '4층 B', 4);

create table appendix (
    appendix_id int,
    appendix_type varchar2(20),
    name varchar2(20),
    primary key(appendix_id)
);

insert into appendix values(1, 'CD', 'TOEIC 듣기');
insert into appendix values(2, '답지', '정보처리기사 해답');
insert into appendix values(3, '지도', '여행지도');

create table book(
    book_id int,
    book_name varchar2(50),
    author varchar2(20),
    publisher varchar2(20),
    publication_year Date,
    contents varchar2(100),
    stock int,
    page int,
    location_id int,
    appendix_id int default null,
    primary key(book_id),
    unique(book_name),
    foreign key(location_id) references location(location_id),
    foreign key(appendix_id) references appendix(appendix_id)
);

insert into book values(1, '해커스 TOEIC', 'David cho', '해커스어학연구소', '2018/10/10', '가나다라마바사', 5, 567, 1, 1);
insert into book values(2, '시나공 정보처리기사 필기', '길벗', '길벗', '2018/11/5', '가나다라마바사',7, 488, 1, 2);
insert into book values(3, '시나공 정보처리기사 실기', '길벗', '길벗', '2018/11/5', '가나다라마바사',7, 488, 1, 2);
insert into book values(4, '2019 설민석 공무원 한국사 초압축 필기노트', '설민석', '단꿈드림', '2018/11/8', '가나다라마바사',3, 224, 1, null);
insert into book values(5, '12가지 인생의 법칙', '조던 B 해커슨', '메이븐', '2018/10/07', '가나다라마바사',3, 552, 2, null);
insert into book values(6, '아가씨와 밤', '기욤 뮈소', '밝은 세상', '2018/11/11', '가나다라마바사',4, 403, 2, null);
insert into book values(7, '구해줘', '기욤 뮈소', '밝은 세상', '2007/4/15', '가나다라마바사',5, 320, 2, null);
insert into book values(8, '종이 여자', '기욤 뮈소', '밝은 세상', '2010/12/13', '가나다라마바사',4, 488, 3, null);
insert into book values(9, '걷는 사람 하정우', '하정우', '문학동네', '2018/11/1', '가나다라마바사',2, 296, 3, null);
insert into book values(10, '룬의 아이들', '전민희', '엘릭시르', '2018/11/3', '가나다라마바사',8, 344, 3, null);
insert into book values(11, '우리가 보낸 가장 긴 밤', '이석원', '달', '2018/11/12', '가나다라마바사',1, 352, 3, null);
insert into book values(12, '수미네 반찬', '김수미', '성안당', '2018/10/27', '가나다라마바사',3, 264, 4, null);
insert into book values(13, '떨림과 울림', '김상욱', '동아시아', '2017/3/25', '가나다라마바사',2, 272, 4, null);
insert into book values(14, '악의 꽃', '샤를 피에르 보를레르', '문예출판사', '2016/11/9', '가나다라마바사',3, 216, 5, null);
insert into book values(15, '제0호', '움베르트 에코', '열린책들', '2017/5/3', '가나다라마바사',5, 336, 5, null);
insert into book values(16, '바르도의 링컨', '죠지 손더스', '문학동네', '2018/11/19', '가나다라마바사',2, 500, 5, null);
insert into book values(17, '일하는 마음', '제현주', '어크로스', '2017/9/10', '가나다라마바사',1, 256, 5, null);
insert into book values(18, '세계 미래보고서 2019', '제롬 글렌', '비즈니스북스', '2018/11/10', '가나다라마바사',1, 376, 5, null);
insert into book values(19, '나라는 이상한 나라', '송형석', 'RHK', '2013/8/6', '가나다라마바사',5, 272, 6, null);
insert into book values(20, '골든아워', '이국종', '흐름출판', '2018/10/10', '가나다라마바사',3, 440, 6, null);
insert into book values(21, '당신이 옳다', '정혜신', '해냄', '2018/9/30', '가나다라마바사',2, 316, 6, null);
insert into book values(22, '고요할수록 밝아지는 것들', '혜민 스님', '수오서재', '2017/12/5', '가나다라마바사',2, 276, 6, null);
insert into book values(23, '정의란 무엇인가', '마이클 샌델', '와이즈베리', '2014/11/24', '가나다라마바사',8, 444, 7, null);
insert into book values(24, '오늘부터 휴가', '김연수', '컬처그라퍼', '2018/7/18', '가나다라마바사',3, 264, 7, 3);
insert into book values(25, '무작정 따라하기 홍콩 마카오', '김수정', '길벗', '2018/9/5', '가나다라마바사',3, 716, 7, 3);
insert into book values(26, '오사카 100배 즐기기', 'RHK 여행팀', 'RHK', '2018/4/8', '가나다라마바사',5, 576, 8, 3);
insert into book values(27, 'VOGUE', '두산매거진', '두산매거진', '2018/11/1', '가나다라마바사',3, 300, 8, null);
insert into book values(28, '코스모폴리탄', '코스모폴리탄', '코스모폴리탄', '2018/11/1', '가나다라마바사',3, 260, 8, null);
insert into book values(29, '이기적 유전자', '리처드 도킨스', '을유문화사', '2018/10/31', '가나다라마바사',6, 632, 8, null);
insert into book values(30, '군주론', '니콜로 마키아벨리', '까치', '2015/2/11', '가나다라마바사',6, 267, 8, null);

/*저자로 검색
select b.book_name, b.author, b.publisher, b.stock, l.location_name, a.appendix_type, a.name
from ((select book_name, author, publisher, stock, location_id, appendix_id from book where author like '%기욤%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id;

책이름으로 검색
select b.book_name, b.author, b.publisher, b.stock, l.location_name, a.appendix_type, a.name
from ((select book_name, author, publisher, stock, location_id, appendix_id from book where book_name like '%정보%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id;
*/

<-- 재고 +- 1 트리거 -->
create or replace trigger stock_updown
after insert or delete on rental 
for each row
begin
    if inserting then
        update book set stock = stock - 1 where book_id=:new.book_id;
    elsif deleting then
        update book set stock = stock + 1 where book_id=:old.book_id;
    end if;
end;
/