CREATE DATABASE library_demo;

USE library_demo;

CREATE TABLE readers(
readers_id VARCHAR(6),
fname VARCHAR(20),
lname VARCHAR(20),
moibileno VARCHAR(11),
occopation VARCHAR(15),
dob date,
CONSTRAINT readers_pk primary key(readers_id)
);
INSERT INTO  readers VALUES('01','afia','anjum','0123456789','student','1976-12-6');
INSERT INTO  readers VALUES('02','sayeda','kasphia','01234567891','beautician','1976-11-6');
INSERT INTO  readers VALUES('03','amir','hamza','0123456782','actor','1978-10-7');
INSERT INTO  readers VALUES('04','kingshuk','paul','0123456783','student','1976-05-7');
INSERT INTO  readers VALUES('05','fahad','alam','0123456784','business man','1977-01-6');
INSERT INTO  readers VALUES('06','reshad','hasan','0123456785','student','1974-12-12');
INSERT INTO  readers VALUES('07','jubaer','hasan','0123456786','imam saheb','1976-05-23');
INSERT INTO  readers VALUES('08','abul','hasnat','0123456787','teacher','1976-11-12');
INSERT INTO  readers VALUES('09','maruf','prodhan','0123456788','officer','1976-12-6');
INSERT INTO  readers VALUES('10','anika','tabassum','0123456789','shef','1976-12-6');
INSERT INTO  readers VALUES('11','nayem','mia','0123456711','cricketer','1975-04-7');
INSERT INTO  readers VALUES('12','rafat','meraj','0123456712','engineer','1976-01-6');
INSERT INTO  readers VALUES('13','fuad','iram','0123456713','student','1976-12-6');

SELECT*FROM readers;
CREATE TABLE book(
bid VARCHAR(6),
bname VARCHAR(20),
Wname VARCHAR(20),
CONSTRAINT BOOK_id_PK primary key(bid)
);
INSERT INTO  book VALUES('01','paradoxical sajit','unknown');
INSERT INTO  book VALUES('02','ovomanini','mowri morium');
INSERT INTO  book VALUES('03','massage','mizanur rahman');
INSERT INTO  book VALUES('04','A golden age','tahmina alam');
INSERT INTO  book VALUES('05','brick lane',',monica ali');
INSERT INTO  book VALUES('06','lazza','taslima nasrin');
INSERT INTO  book VALUES('07','i remember abbu','humayun azad');
INSERT INTO  book VALUES('08','rickshaw girl','mitali perkins');
INSERT INTO  book VALUES('09','the strom','arif anwar');

SELECT *FROM book;

CREATE TABLE active_readers(
acc_id VARCHAR(6),
readers_id VARCHAR(6),
bid VARCHAR(6),
atype VARCHAR(8),
CONSTRAINT active_readers_acc_id_pk primary key (acc_id),
CONSTRAINT active_readers_fk foreign key(readers_id)references readers(readers_id),
CONSTRAINT active_b_id_fk foreign key(bid)references book(bid)
);
INSERT INTO active_readers  VALUES('001','01','01','primium');
INSERT INTO active_readers  VALUES('002','02','02','primium');
INSERT INTO active_readers  VALUES('003','03','03','regular');
INSERT INTO active_readers  VALUES('004','04','04','primium');
INSERT INTO active_readers  VALUES('005','05','05','primium');
INSERT INTO active_readers  VALUES('006','06','06','regular');
INSERT INTO active_readers  VALUES('007','06','07','regular');
INSERT INTO active_readers  VALUES('008','07','08','primium');
INSERT INTO active_readers  VALUES('009','09','09','regular');
INSERT INTO active_readers  VALUES('010','10','01','primium');

SELECT *FROM active_readers ;
drop table active_readers;

CREATE TABLE book_issues(
issue_n VARCHAR(8),
acc_id VARCHAR(6),
bid VARCHAR(6),
book_name VARCHAR(20),
number_of_book_issued INT(7),
CONSTRAINT book_issue_id_pk primary key(issue_n),
CONSTRAINT book_issue_readers_id_fk foreign key(acc_id) references active_readers(acc_id),
CONSTRAINT book_issue_b_id_fk foreign key(bid) references book(bid)
);

INSERT INTO book_issues  VALUES('0001','001','01','paradoxical sajit','5');
INSERT INTO book_issues  VALUES('0002','002','02','ovomanini','6');
INSERT INTO book_issues  VALUES('0003','003','03','massage','2');
INSERT INTO book_issues  VALUES('0004','004','04','A golden age','2');
INSERT INTO book_issues  VALUES('0005','005','05','brick lane','4');
INSERT INTO book_issues  VALUES('0006','006','06','lazza','7');
INSERT INTO book_issues  VALUES('0007','007','07','i remember abbu','4');
INSERT INTO book_issues  VALUES('0008','008','08','rickshaw girl','8');
INSERT INTO book_issues  VALUES('0009','009','09','the strom','5');

SELECT*FROM book_issues;
SELECT*FROM book_issues where number_of_book_issued<2 ;
SELECT count(acc_id) FROM active_readers where atype='primium' ;



