create table EMPLOYEES_TABLE (Employee_id  Number(6) not null, First_Name varchar(20) , Last_Name  varchar(20) not null , Email varchar(25) not null , Phone_Number  varchar(20), Hire_date date not null , Job_id varchar(20) not null, salary Number(8,2) , commission_pet Number(2,2), Manager_id Number(6), Department_id Number(4));
select * from EMPLOYEES_TABLE;
create table DEPARTMENT_TABLE (Dept_id Number(6) Not null , Dept_name Varchar(20) not null , Manager_id Number(6) not null , Location_id Number(4));
create table JOB_GRADE_TABLE (Grade_level; vARCHAR(2) , Lowest_sal number , Highest_sal Number);
create table LOCATION_TABLE (Location_id  Number(4) Not null ,St_addr Varchar(40),Postal_code Varchar(12),City Varchar(30) Not null,State_province Varchar(25),Country_id Char(2));
create table DEPT (ID NUMBER(7), NAME VARCHAR2(25));
DESC DEPT;
create table EMP (ID NUMBER(7) , LAST_NAME VARCHAR2(25), FIRST_NAME VARCHAR2(25), DEPT_ID NUMBER(7));
DESC EMP;
alter table EMP
modify (LAST_NAME VARCHAR2(50));
create table EMPLOYEES2( ID NUMBER(7), First_Name varchar2(25), Last_name varchar2(25), salary number(10),  Dept_id number(7));
drop table EMP;
rename EMPLOYEES2 TO EMP;
COMMENT ON COLUMN DEPT.NAME IS 'DEPT_NAME';
ALTER TABLE EMP 
DROP COLUMN First_name;
comment on table EMP is 'emp_name';


