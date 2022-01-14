1 --display how many employees managed by each manager
SELECT MANAGER_ID, COUNT(*) FROM EMPLOYEES
GROUP BY MANAGER_ID;

2--DISPLAY HOW MANY EMPLOYEES ARE IT_PROG


select job_id ,count(*) from employees
WHERE JOB_ID='IT_PROG'
group by job_id;


3---DISPLAY SUM OF SALARY OF EACH DEPARTMENT 


SELECT SUM(SALARY) ,DEPARTMENT_ID,COUNT(*)
 FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID;


4--display average salary of each departmet or manger

SELECT ROUND(AVG(SALARY)) ,DEPARTMENT_ID,COUNT(*)
 FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID;
 
SELECT ROUND(AVG(SALARY)) ,MANAGER_ID,COUNT(*)
 FROM EMPLOYEES
 GROUP BY MANAGER_ID;
 
5--display average salary of each departmet or manger AND ROUND AVERAGE SALARY

SELECT ROUND(AVG(SALARY)) ,DEPARTMENT_ID,COUNT(*)
 FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID;
 
SELECT ROUND(AVG(SALARY)) ,MANAGER_ID,COUNT(*)
 FROM EMPLOYEES
 GROUP BY MANAGER_ID;
 
6--display how many employees join in each year

 SELECT to_char(hire_date,'YYYY'),COUNT(*)
 FROM EMPLOYEES
 GROUP BY to_char(hire_date,'YYYY');

7--display how many employees join in each month of year 2003

 SELECT to_char(hire_date,'mm'),COUNT(*)
 FROM EMPLOYEES
 where  to_char(hire_date,'YYYY')in(2003)
 GROUP BY to_char(hire_date,'mm')
 order by to_char(hire_date,'mm');
 
 8--dispaly how many employees join in each day of year 2003
 
  SELECT to_char(hire_date,'dd'),COUNT(*)
 FROM EMPLOYEES
 where  to_char(hire_date,'YYYY')in(2003)
 GROUP BY to_char(hire_date,'dd')
 order by to_char(hire_date,'dd');
 
9 --display the year  in which more than 10 employes join
 
 select to_char (hire_date,'yyyy'),  count(*)from employees
 group by  to_char (hire_date,'yyyy') 
 having count(*) >10;


--11 display the first name and its duplicate of first name 

select first_name ,count(*) from employees
group by first_name;

--11-display the repeated or duplicate  of first name 

select first_name ,count(*) from employees
group by first_name
having count(*)>1;

-- 12 display the count of employee in each department whose average salary >10000

select department_id,round(avg(salary)) ,count(*) from employees
group by department_id 
having avg(salary)>10000
