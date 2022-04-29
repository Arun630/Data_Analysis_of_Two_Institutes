-- 1.Create new schema as alumni
create database alumni;

-- 2.Import all .csv files into MySQL
-- first dowload all csv files and go sql workbench 
-- right click on alumni schema 
-- click on table data import wizard then select one by one csv files and import it 
-- 3.Run SQL command to see the structure of six tables
use alumni;
desc college_a_hs;
desc college_a_se;
desc college_a_sj;
desc college_b_hs;
desc college_b_se;
desc college_b_sj;

-- 4.Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, 
-- College_B_SE, College_B_SJ) with Python.

-- college_a_hs--
        -- testdb=mysql.connector.connect(host='localhost',user='root',password='789329',database='alumni')
        -- cursor_obj=testdb.cursor()
        --  cursor_obj.execute('select * from college_a_hs limit 1000')
        -- cursor_obj.fetchall()
  
-- college_a_se--
        -- testdb=mysql.connector.connect(host='localhost',user='root',password='789329',database='alumni')
        -- cursor_obj=testdb.cursor()
        -- cursor_obj.execute('select * from college_a_se limit 1000')
        -- cursor_obj.fetchall()
        
-- college_a_sj--
        -- testdb=mysql.connector.connect(host='localhost',user='root',password='789329',database='alumni')
        -- cursor_obj=testdb.cursor()
        --  cursor_obj.execute('select * from college_a_sj limit 1000')
        -- cursor_obj.fetchall()
        
-- college_b_hs--
        -- testdb=mysql.connector.connect(host='localhost',user='root',password='789329',database='alumni')
        -- cursor_obj=testdb.cursor()
        --  cursor_obj.execute('select * from college_b_hs limit 1000')
        -- cursor_obj.fetchall()
        
-- college_a_se--
        -- testdb=mysql.connector.connect(host='localhost',user='root',password='789329',database='alumni')
        -- cursor_obj=testdb.cursor()
        --  cursor_obj.execute('select * from college_a_se limit 1000')
        -- cursor_obj.fetchall()
        
-- college_a_sj--
        -- testdb=mysql.connector.connect(host='localhost',user='root',password='789329',database='alumni')
        -- cursor_obj=testdb.cursor()
        --  cursor_obj.execute('select * from college_a_sj limit 1000')
        -- cursor_obj.fetchall()
        
-- 5.Import first 1500 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ)
-- into MS Excel.

-- college_a_hs
     -- open ms excel click on data open sql for excel click on local instance and enter 
       -- the password select alumni (schema) click on college_a_hs import data limit = 1500 rows
-- college_a_se
     -- open ms excel click on data open sql for excel click on local instance and enter 
      -- the password select alumni (schema) click on college_a_se import data limit = 1500 rows
-- college_a_sj
     -- open ms excel click on data open sql for excel click on local instance and enter 
     -- the password select alumni (schema) click on college_a_sj import data limit = 1500 rows
-- college_b_hs
      -- open ms excel click on data open sql for excel click on local instance and enter 
      -- the password select alumni (schema) click on college_b_hs import data limit = 1500 rows
-- college_b_se
     -- open ms excel click on data open sql for excel click on local instance and enter 
     -- the password select alumni (schema) click on college_b_se import data limit = 1500 rows
-- college_b_sj
-- open ms excel click on data open sql for excel click on local instance and enter 
-- the password select alumni (schema) click on college_b_sj import data limit = 1500 rows

-- 6.Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values.

CREATE VIEW college_a_hs_v AS
    SELECT 
        *
    FROM
        college_a_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;
        
select * from college_a_hs_v;

-- 7.Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.

CREATE VIEW college_a_se_v AS
    SELECT 
        *
    FROM
        college_a_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_a_se_v;

-- 8.Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.

CREATE VIEW college_a_sj_v AS
    SELECT 
        *
    FROM
        college_a_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_a_sj_v;

-- 9.Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.

CREATE VIEW college_b_hs_v AS
    SELECT 
        *
    FROM
        college_b_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_b_hs_v;
-- 10.Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.

CREATE VIEW college_b_se_v AS
    SELECT 
        *
    FROM
        college_b_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_b_se_v;

-- 11.Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V.

CREATE VIEW college_b_sj_v AS
    SELECT 
        *
    FROM
        college_b_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL;
            
select * from college_b_sj_v;

-- 12.Make procedure to use string function/s for converting record of Name, FatherName, MotherName 
-- into lower case for views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
-- solution --
-- College_A_HS_V--
delimiter //
create procedure string_functions()
begin 
select lower(Name) Name ,lower(FatherName) FatherName ,lower(MotherName) MotherName from college_a_hs_v ;
end //
delimiter ;
call string_functions();
-- College_A_SE_V--
delimiter //
create procedure string_functions_1()
begin 
select lower(Name) Name ,lower(FatherName) FatherName ,lower(MotherName) MotherName from college_a_se_v ;
end //
delimiter ;
call string_functions_1();
-- College_A_SJ_V--
delimiter //
create procedure string_functions_2()
begin 
select lower(Name) Name ,lower(FatherName) FatherName ,lower(MotherName) MotherName from college_a_sj_v ;
end //
delimiter ;
call string_functions_2();
-- College_B_HS_V--
delimiter //
create procedure string_functions_3()
begin 
select lower(Name) Name ,lower(FatherName) FatherName ,lower(MotherName) MotherName from college_b_hs_v ;
end //
delimiter ;
call string_functions_3();
-- College_B_SE_V--
delimiter //
create procedure string_functions_4()
begin 
select lower(Name) Name ,lower(FatherName) FatherName ,lower(MotherName) MotherName from college_b_se_v ;
end //
delimiter ;
call string_functions_4();
-- College_B_SJ_V--
delimiter //
create procedure string_functions_5()
begin 
select lower(Name) Name ,lower(FatherName) FatherName ,lower(MotherName) MotherName from college_b_sj_v ;
end //
delimiter ;
call string_functions_5();


-- 13.Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, 
-- College_B_HS_V, College_B_SE_V, College_B_SJ_V) into MS Excel and make pivot chart for location of Alumni. 
-- solution --
-- 13.1 College_A_HS_V check the attachement(word document)
-- 13.2 College_A_SE_V check the attachement(word document)
-- 13.3 College_A_SJ_V check the attachement(word document)
-- 13.4 College_B_HS_V check the attachement(word document)
-- 13.5 College_B_SE_V check the attachement(word document)
-- 13.6 College_B_SJ_V check the attachement(word document)

-- 14.Write a query to create procedure get_name using the cursor to fetch names of all students from college A.
-- solution--
delimiter //
create procedure get_name()
begin
declare fet text;
declare finished int default 0;
declare name_of_student text default "";
declare namedetail cursor for select name from college_a;
declare continue handler for not found set finished =1;
open namedetail;
k_var : loop
fetch namedetail into fet;
    if finished = 1 then leave k_var;
    end if;
    set name_of_student = concat(fet,";",name_of_student);
end loop;
select name_of_student;
close namedetail;
end //
delimiter ;
call get_name();

-- 15.Write a query to create procedure get_name using the cursor to fetch names of all students from college B.
-- solution--
delimiter //
create procedure get_name_1()
begin
declare cur text;
declare finished int default 0;
declare name_of_students text default "";
declare namesdetail cursor for select name from college_b;
declare continue handler for not found set finished =1;
open namesdetail;
k_var : loop
fetch namesdetail into cur;
    if finished = 1 then leave k_var;
    end if;
    set name_of_students = concat(cur,";",name_of_students);
end loop;
select name_of_students;
close namesdetail;
end //
delimiter ;
call get_name_1();
-- 16.Calculate the percentage of career choice of College A and College B Alumni (w.r.t Higher Studies, Self Employed and Service/Job) 
-- solution --
-- college A--
SELECT 
    'Percent in Higher studies' AS 'Career choice in percentage',
    (COUNT(college_a_hs.rollno) / 5884) * 100 'College A'
FROM
    college_a_hs 
UNION SELECT 
    'Percent in Self Employes',
    (COUNT(college_a_se.rollno) / 5884) * 100
FROM
    college_a_se 
UNION SELECT 
    'Percent in Service/Job',
    (COUNT(college_a_sj.rollno) / 5884) * 100
FROM
    college_a_sj;
-- college B--
select'Percent in Higher studies' as 'Career choice in percentage', 
    (COUNT(college_b_hs.rollno) / 2259) * 100 'College B'
FROM
    college_b_hs 
UNION SELECT 
    'Percent in Self Employes',
    (COUNT(college_b_se.rollno) / 2259) * 100
FROM
    college_b_se 
UNION SELECT 
    'Percent in Service/Job',
    (COUNT(college_b_sj.rollno) / 2259) * 100
FROM
    college_b_sj;
    
    -- end --
    