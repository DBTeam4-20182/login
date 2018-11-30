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

insert into location values(1, '1�� A', 1);
insert into location values(2, '1�� B', 1);
insert into location values(3, '2�� A', 2);
insert into location values(4, '2�� B', 2);
insert into location values(5, '3�� A', 3);
insert into location values(6, '3�� B', 3);
insert into location values(7, '4�� A', 4);
insert into location values(8, '4�� B', 4);

create table appendix (
    appendix_id int,
    appendix_type varchar2(20),
    name varchar2(20),
    primary key(appendix_id)
);

insert into appendix values(1, 'CD', 'TOEIC ���');
insert into appendix values(2, '����', '����ó����� �ش�');
insert into appendix values(3, '����', '��������');

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

insert into book values(1, '��Ŀ�� TOEIC', 'David cho', '��Ŀ�����п�����', '2018/10/10', '�����ٶ󸶹ٻ�', 5, 567, 1, 1);
insert into book values(2, '�ó��� ����ó����� �ʱ�', '���', '���', '2018/11/5', '�����ٶ󸶹ٻ�',7, 488, 1, 2);
insert into book values(3, '�ó��� ����ó����� �Ǳ�', '���', '���', '2018/11/5', '�����ٶ󸶹ٻ�',7, 488, 1, 2);
insert into book values(4, '2019 ���μ� ������ �ѱ��� �ʾ��� �ʱ��Ʈ', '���μ�', '�ܲ޵帲', '2018/11/8', '�����ٶ󸶹ٻ�',3, 224, 1, null);
insert into book values(5, '12���� �λ��� ��Ģ', '���� B ��Ŀ��', '���̺�', '2018/10/07', '�����ٶ󸶹ٻ�',3, 552, 2, null);
insert into book values(6, '�ư����� ��', '��� ����', '���� ����', '2018/11/11', '�����ٶ󸶹ٻ�',4, 403, 2, null);
insert into book values(7, '������', '��� ����', '���� ����', '2007/4/15', '�����ٶ󸶹ٻ�',5, 320, 2, null);
insert into book values(8, '���� ����', '��� ����', '���� ����', '2010/12/13', '�����ٶ󸶹ٻ�',4, 488, 3, null);
insert into book values(9, '�ȴ� ��� ������', '������', '���е���', '2018/11/1', '�����ٶ󸶹ٻ�',2, 296, 3, null);
insert into book values(10, '���� ���̵�', '������', '�����ø�', '2018/11/3', '�����ٶ󸶹ٻ�',8, 344, 3, null);
insert into book values(11, '�츮�� ���� ���� �� ��', '�̼���', '��', '2018/11/12', '�����ٶ󸶹ٻ�',1, 352, 3, null);
insert into book values(12, '���̳� ����', '�����', '���ȴ�', '2018/10/27', '�����ٶ󸶹ٻ�',3, 264, 4, null);
insert into book values(13, '������ �︲', '����', '���ƽþ�', '2017/3/25', '�����ٶ󸶹ٻ�',2, 272, 4, null);
insert into book values(14, '���� ��', '���� �ǿ��� ��������', '�������ǻ�', '2016/11/9', '�����ٶ󸶹ٻ�',3, 216, 5, null);
insert into book values(15, '��0ȣ', '�򺣸�Ʈ ����', '����å��', '2017/5/3', '�����ٶ󸶹ٻ�',5, 336, 5, null);
insert into book values(16, '�ٸ����� ����', '���� �մ���', '���е���', '2018/11/19', '�����ٶ󸶹ٻ�',2, 500, 5, null);
insert into book values(17, '���ϴ� ����', '������', '��ũ�ν�', '2017/9/10', '�����ٶ󸶹ٻ�',1, 256, 5, null);
insert into book values(18, '���� �̷����� 2019', '���� �۷�', '����Ͻ��Ͻ�', '2018/11/10', '�����ٶ󸶹ٻ�',1, 376, 5, null);
insert into book values(19, '����� �̻��� ����', '������', 'RHK', '2013/8/6', '�����ٶ󸶹ٻ�',5, 272, 6, null);
insert into book values(20, '���ƿ�', '�̱���', '�帧����', '2018/10/10', '�����ٶ󸶹ٻ�',3, 440, 6, null);
insert into book values(21, '����� �Ǵ�', '������', '�س�', '2018/9/30', '�����ٶ󸶹ٻ�',2, 316, 6, null);
insert into book values(22, '����Ҽ��� ������� �͵�', '���� ����', '��������', '2017/12/5', '�����ٶ󸶹ٻ�',2, 276, 6, null);
insert into book values(23, '���Ƕ� �����ΰ�', '����Ŭ ����', '�������', '2014/11/24', '�����ٶ󸶹ٻ�',8, 444, 7, null);
insert into book values(24, '���ú��� �ް�', '�迬��', '��ó�׶���', '2018/7/18', '�����ٶ󸶹ٻ�',3, 264, 7, 3);
insert into book values(25, '������ �����ϱ� ȫ�� ��ī��', '�����', '���', '2018/9/5', '�����ٶ󸶹ٻ�',3, 716, 7, 3);
insert into book values(26, '����ī 100�� ����', 'RHK ������', 'RHK', '2018/4/8', '�����ٶ󸶹ٻ�',5, 576, 8, 3);
insert into book values(27, 'VOGUE', '�λ�Ű���', '�λ�Ű���', '2018/11/1', '�����ٶ󸶹ٻ�',3, 300, 8, null);
insert into book values(28, '�ڽ�������ź', '�ڽ�������ź', '�ڽ�������ź', '2018/11/1', '�����ٶ󸶹ٻ�',3, 260, 8, null);
insert into book values(29, '�̱��� ������', '��ó�� ��Ų��', '������ȭ��', '2018/10/31', '�����ٶ󸶹ٻ�',6, 632, 8, null);
insert into book values(30, '���ַ�', '���ݷ� ��Ű�ƺ���', '��ġ', '2015/2/11', '�����ٶ󸶹ٻ�',6, 267, 8, null);

/*���ڷ� �˻�
select b.book_name, b.author, b.publisher, b.stock, l.location_name, a.appendix_type, a.name
from ((select book_name, author, publisher, stock, location_id, appendix_id from book where author like '%���%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id;

å�̸����� �˻�
select b.book_name, b.author, b.publisher, b.stock, l.location_name, a.appendix_type, a.name
from ((select book_name, author, publisher, stock, location_id, appendix_id from book where book_name like '%����%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id;
*/

<-- ��� +- 1 Ʈ���� -->
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