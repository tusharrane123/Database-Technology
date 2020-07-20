 show databases;


create database ex1;

use ex1;


create table SEMP
(
EMPNO char(4),
EMPNAME char(20),
Basic Float(9,2),
Deptno  char(2),
Depthead char(4)
);


create table sdept
(
Deptno char(2),
Deptname char(5)
);
alter table sdept modify Deptname char(15);

 
Insert into sdept values('10','Development');

Insert into sdept values('20','Training');


Select * from sdept;



Insert into semp(empno,empname,basic,deptno) values(0001,'SUNIL',6000,10);

Insert into semp(empno,empname,basic,deptno) values(0002,'HIREN',8000,20);

Insert into semp(empno,empname,basic,deptno,depthead) values(0003,'ALI',4000,10,0001);

Insert into semp(empno,empname,basic,deptno) values (0004,'GEORGE',6000,0002);



create table S
(
	`S#` char(2),
	Sname char(20),
	Stetus  int(2),
	City char(10)
);


create table P
(
	`P#` char(2),
	Pname char(20),
    Color char(20),
	Weight  int(3),
	City char(10)
);




create table Projects
(
	`J#` char(2),
	Jname char(20),
	City char(10)
);

#ALTER TABLE table_name RENAME TO new_table_name;


ALTER TABLE Projects RENAME TO J;




create table SPJ
(	
	`S#` char(2),
	`P#` char(2),
	`J#` char(2),
    Qty int(3)
);


show tables;


insert into s values('s1','Steeve',10,'London');

insert into s values('s2','Rob',30,'delhi');

insert into s values('s3','Mike',20,'paris');

insert into s values('s4','Eric',50,'athens');



insert into p values('p1','Keyboard','black',100,'delhi');

insert into p values('p2','Mouse','Grey',60,'paris');

insert into p values('p3','USB Cable','blue',40,'London');

insert into p values('p4','Sound Box','Neon',400,'athens');

insert into p values('p3','USB Cable','blue',13,'London');


select * from p;




insert into j values('j1','Ericson','athens');

insert into j values('j2','pattison','paris');

insert into j values('j3','Anderson','London');

insert into j values('j4','Johnson','delhi');


select * from j;




insert into spj values('s1','p2','j3',14);

insert into spj values('s2','p3','j2',5);

insert into spj values('s3','p1','j',3110);


select * from spj;







#5. Display all the data from the S table.-->
select * from s;




#6. Display only the S# and SNAME fields from the S table.-->
select 'S#', Sname from s;



#7. Display the PNAME and COLOR from the P table for the CITY=”London”.-->

select Pname,color from p where city = 'London';



#8. Display all the Suppliers from London.-->
select Sname from s where city = 'London';





#9. Display all the Suppliers from Paris or Athens.
-->select Sname from s where city = 'paris' or city='athens';



#10. Display all the Projects in Athens.-->

select city from j where city = 'Athens';



#11. Display all the Partnames with the weight between 12 and 14 (inclusive of both).-->

select pname from p where weight > 12 and  weight <14;



#12. Display all the Suppliers with a Status greater than or equal to 20.

-->select Sname from S where stetus >= 20;




#13. Display all the Suppliers except the Suppliers from London.-->

select * from s where city != 'London';



#14. Display only the Cities from where the Suppliers come from.-->

select city from s;



/*15. Assuming that the Part Weight is in GRAMS, display the same in 
 MILLIGRAMS and KILOGRAMS.*/
 -->select weight * 1000 from p;	# for milligram
 select weight/1000 from p; 	# for Killogram