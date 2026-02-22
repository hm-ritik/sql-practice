--creating a table
create table student(
  id INT primary key ,  --primary key unique 
  name varchar (15),    -- varchar for string values
  age int ,
  marks float
);

--inserting values in it.
insert into student(id , name , age , marks) -- inserting order 
values
(85 , 'ritik' , 21 , 9.1),
(12 , 'shalu' , 24 , 8.1),   -- values iserted in the table
(13 , 'rupesh', 16 , 7.7),
(14 , 'choti' , 22 , 8.4),    -- i want to laugh
(15 , 'reyansh' , 10 , 8.0),  -- i write my entire bloodline name and we are actually 12.
(31 , 'surbhi' , 23 , 5.5),   -- only few of them are not genius in study
(32 , 'Gunjan' , 30 , 6.7),   -- but everyone is fucking too much intresting and unique.
(33 , 'balag' , 18 , 8.7),
(34 , 'payal' , 20 , 8.4),
(35 , 'Kavaya' , 14 , 8.0),
(36 , 'Ansh' , 7 , 7.0),
(37 , 'Ayansh' , 1 , 10.0);


INSERT INTO student(id , name , age , marks)
VALUES
(16 , 'Aman' , 20 , 7.5),
(17 , 'Priya' , 22 , 8.3),
(18 , 'Neha' , 19 , 6.9),
(19 , 'Karan' , 23 , 8.8),
(20 , 'Pooja' , 21 , 7.2),
(21 , 'Rahul' , 24 , 9.0),
(22 , 'Ankit' , 20 , 6.5),
(23 , 'Sneha' , 22 , 8.7),
(24 , 'Vikas' , 25 , 7.9),
(25 , 'Meena' , 21 , 8.4),
(26 , 'Suresh' , 26 , 7.1),
(27 , 'Deepak' , 23 , 8.0),
(28 , 'Komal' , 20 , 9.2),
(29 , 'Arjun' , 22 , 7.8),
(30 , 'Nisha' , 21 , 8.6);

select * from student;    -- getting the entire table ______________________________
select *from student where marks>7.5;  --applying condition                         |
select *from student where age between 19 and 21;  -- using condition between       |filtering
update student set name='Ritik sharma' where id=85; --______________________________
delete from student where id=24;


-- sorting and --applying filtering 
select * from student order by  
age desc;                         -- get older at top of the table

select * from student order by 
marks desc;                        -- top performing students.

select * from student where age between 
18 and 22 order by marks desc;          -- top performer in age between 18 - 22 

--Aggregation function 
-- count , max , min , avg 
select count(*) from student; --___________
select avg(age) from student;--            \basic 
select avg (marks) from student;--_________\
select max(marks) from student;
select min(marks) from student;

select * from student where marks =(
   select max(marks) from student
);






select * from student where marks > (
      select avg(marks) from student
);

select * from student where age < (
   select avg(age) from student
);  

select * from student where marks>(
 select avg(marks) from student
)
order by marks desc
limit 5; 


-- Group by & having 

--group by is for grouping same rows that have 
--same values in specific column 
select age , count(*)
from student Group by age;
/*
age | count 
-----+-------
  22 |     4
  26 |     1
  19 |     1
  30 |     1
  21 |     4
  10 |     1
  14 |     1
  16 |     1
   7 |     1
  24 |     2
  20 |     4
   1 |     1
  18 |     1
  23 |     3

*/

select age , avg(marks)
from student group by age;

select age , max(marks)
from student group by age;

select age , min (marks)
from student group by age;

--having
select age , count(*)
from student group by age
having count(*)>2;

SELECT age, COUNT(*)
FROM student
WHERE marks > 8         -- using where
GROUP BY age;

select age , avg(marks)
from student group by age
having avg(marks)>4;

--where is used before grouping 
--having is used after grouping


--Thanks keep learning , there will be 2 more partition
--one will explore Basics and one for advance topics.