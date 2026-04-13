create schema nairobi_tutorial;
show search_path;
set search_path = 'nairobi_tutorial';
create table students(student_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender varchar(20),
date_of_birth date,
class varchar(50) not null,
city varchar(50) not null);

select* from students;

insert into students(student_id,first_name,last_name,gender,date_of_birth,class,city)
values 
(1,'Amina','Wanjiku','F','2008-03-12','Form 3','Nairobi'),
(2,'Brian','Ochieng','M','2007-07-25','Form 4','Mombasa'),
(3,'Cynthia','Mutua','F','2008-11-05','Form 3','Kisumu'),
(4,'David','Kamau','M','2007-02-18','Form 4','Nairobi'),
(5,'Esther','Akinyi','F','2009-06-30','Form 2','Nakuru'),
(6,'Felix','Otieno','M','2009-09-14','Form 2','Eldoret'),
(7,'Grace','Mwangi','F','2008-01-22','Form 3','Nairobi'),
(8,'Hassan','Abdi','M','2007-04-09','Form 4','Mombasa'),
(9,'Ivy','Chebet','F','2009-12-01','Form 2','Nakuru'),
(10,'James','Kariuki','M','2008-08-17','Form 3','Nairobi');

create table subjects(subject_id int primary key,
subject_name varchar (50) not null,
department varchar (50) not null,
teacher_name varchar (50) not null,
credits int);

select* from subjects;

insert into subjects(subject_id,subject_name,department,teacher_name,credits)
values
(1,'Mathematics','Sciences','Mr.Njoroge','4'),
(2,'English','Languages','Ms.Adhiambo','3'),
(3,'Biology','Sciences','Ms.Atieno','4'),
(4,'Histroy','Humanities','Mr.Waweru','3'),
(5,'Kiswahili','Languages','Ms.Nduta','3'),
(6,'Physcis','Sciences','Mr.Kamande','4'),
(7,'Geography','Humanities','Ms.Chebet','3'),
(8,'Chemistry','Sciences','Ms.Muthoni','4'),
(9,'Computer Studies','Sciences','Mr.Oduya','3'),
(10,'Business Studies','Humanities','Ms.Wangari','3');

create table exam_results(results_id int primary key,
student_id int not null,
subject_id int not null,
marks_ int not null,
exam_date date,
grade varchar(2) not null);

select* from exam_results;

insert into exam_results(results_id,student_id,subject_id,marks_, exam_date,grade)
values
(1,'1','1','78','2024-03-15','B'),
(2,'1','2','85','2024-03-16','A'),
(3,'2','1','92','2024-03-15','A'),
(4,'2','3','55','2024-03-17','C'),
(5,'3','2','49','2024-03-16','D'),
(6,'3','4','71','2024-03-18','B'),
(7,'4','1','88','2024-03-15','A'),
(8,'4','6','63','2024-03-19','C'),
(9,'5','5','39','2024-03-20','F'),
(10,'6','9','95','2024-03-21','A');

ALTER TABLE students
ADD phone_number VARCHAR(20);

ALTER table subjects 
rename column CREDITS to CREDIT_HOURS;

alter table students 
drop column PHONE_NUMBER;

update students 
set CITY='NAIROBI'
where STUDENT_ID=5;

update exam_results
set MARKS_='59'
where RESULTS_ID ='5';

delete from exam_results 
where results_id='9';

select*
from students
where class='form4';

select*
from subjects
where department='sciences';

select*
from exam_results
where marks_>='70';

SELECT * 
FROM students
WHERE gender = 'F';

SELECT * 
FROM students
WHERE class = 'Form 3' AND city = 'Nairobi';

SELECT * 
FROM students
WHERE class = 'Form 2' OR class = 'Form 4';

select*
from exam_results
where marks_ between 50 and 80;

select*
from exam_results 
where exam_date between'2024-03-15' AND '2024-03-18';

SELECT * 
FROM students
WHERE city IN ('Nairobi', 'Mombasa', 'Kisumu');

SELECT * 
FROM students
WHERE class NOT IN ('Form 2', 'Form 3');

SELECT * 
FROM students
WHERE first_name LIKE 'A' OR first_name LIKE 'E';

SELECT * 
FROM subjects
WHERE subject_name LIKE 'Studies';

SELECT COUNT(*) AS total_students
FROM students
WHERE class = 'Form 3';

SELECT COUNT(*) AS total_results
FROM exam_results
WHERE marks_ >= 70;

SELECT 
    results_id,
    marks_,
    CASE
        WHEN marks_ >= 80 THEN 'Distinction'
        WHEN marks_ >= 60 THEN 'Merit'
        WHEN marks_ >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS performance
FROM exam_results;

SELECT 
    first_name,
    last_name,
    class,
    CASE
        WHEN class IN ('Form 3', 'Form 4') THEN 'Senior'
        WHEN class IN ('Form 1', 'Form 2') THEN 'Junior'
        ELSE 'Unknown'
    END AS student_level
FROM students;

