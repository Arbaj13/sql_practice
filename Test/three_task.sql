-- TODO: CONCAT

-- SELECT * from students;

-- SELECT CONCAT (stu_fname,' ', stu_lname ) AS full_Name from students;

-- SELECT CONCAT(stu_fname,' ', stu_lname,' AND Login count is ',login_count ) 
-- AS 'Full info'
-- from students;

-- SELECT CONCAT(' Student login count is ',login_count,' And Course count is ',course_count)
-- AS 'Course info' from students;

-- SELECT login_count, course_count from students;

-- TODO: Replace 


-- SELECT REPLACE (stu_fname,'a','@') as 'Fun task' from students;

-- TODO: Substring


-- SELECT CONCAT(Substring(email,1,4),'.....') AS TRUNCATED from students;

-- SELECT SUBSTRING(email,1,7) from students;


-- TODO: Reverse


-- SELECT REVERSE (stu_fname) from students;


-- TODO: CHARLENGH

-- SELECT email, char_length(email) as LENGTH from students;

-- SELECT stu_fname,stu_lname from students;


--  TODO:  DISTINCT

-- SELECT DISTINCT stu_fname AS firstName from students;

-- TODO:    ORDER BY

-- SELECT DISTINCT stu_fname, login_count, course_count
--  from students ORDER BY login_count ASC;

-- SELECT DISTINCT stu_fname, login_count, course_count
-- from students ORDER BY stu_fname DESC;

-- SELECT DISTINCT stu_fname, login_count, course_count
-- from students ORDER BY course_count DESC;


-- SELECT DISTINCT login_count from students ORDER BY  1 DESC;

-- TODO: LIMIT

-- SELECT DISTINCT stu_fname,login_count FROM students ORDER BY login_count DESC LIMIT 2,5;


-- TODO: LIKE


-- SELECT stu_fname,email FROM students WHERE stu_fname LIKE 'a____';


-- TODO: COUNT

-- SELECT  COUNT(DISTINCT stu_fname) as count from students;
--  TODO:  GROUP BY

-- SELECT stu_fname,signup_month,COUNT(*) FROM students 
-- GROUP BY signup_month ;


-- TODO:  Subquery


-- SELECT stu_fname,login_count,email
-- FROM students WHERE login_count= (SELECT MAX(login_count) FROM students) ;



-- SELECT stu_fname,login_count,email
-- FROM students WHERE login_count= (SELECT MIN(login_count) FROM students) ;

-- SELECT stu_fname,login_count,MIN(login_count) FROM students ;

-- TODO: GROUP BY MIN MAX


-- SELECT MAX(login_count),signup_month from students
-- GROUP BY signup_month ORDER BY signup_month;


-- SELECT stu_fname, login_count,signup_month from students
-- WHERE login_count=(SELECT MAX(login_count) FROM students)
-- GROUP BY signup_month ORDER BY signup_month ;

-- TODO: SUM AND AVG

-- SELECT signup_month,login_count FROM students
-- WHERE signup_month=7;


-- SELECT signup_month,SUM(login_count) FROM students
-- GROUP BY signup_month;


-- SELECT signup_month,SUM(course_count) FROM students
-- GROUP BY signup_month ORDER BY SUM(course_count) DESC;



-- SELECT email,login_count,course_count, signup_month FROM students
-- WHERE login_count>=20 AND course_count>=5
-- ORDER BY login_count;


-- SELECT email,login_count,course_count,signup_month FROM students
-- WHERE signup_month=7 OR signup_month=10;

-- TODO: RANGE BETWEEN AND

-- SELECT email,course_count,signup_month FROM students
-- WHERE signup_month BETWEEN 7 AND 10;


-- TODO:  CASES ( Not Often used)


-- SELECT stu_fname,signup_month,
--         CASE
--             WHEN signup_month BETWEEN 7 AND 10 THEN 'EARLY BIRDS'
--             WHEN signup_month BETWEEN 11 AND 12 THEN 'Regular Peep'
--             ELSE '###'
--         END AS categories
-- FROM students;        
