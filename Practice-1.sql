--1. Sql query to find name of employees whose name start with 'A'

Select Emp_Name from Employees where Emp_Name like 'A%';

/* Workers Table

	Id	First_Name	Last_Name	Salary	Joining_Date	Department
	1	Harry		Arora		100000	2014-09-08		ACCOUNT	

*/

--2. Sql query to fetch names from a workers table with alias name <Worker_Name>

Select first_name as Worker_Name from Workers;

--3. Sql query to fetch names from Workers table in upper-case

Select upper(first_name) as Upper_Name  from Workers;

--4. Sql query to select unique value of department from Workers table

Select distinct Department from Workers;

--5. Sql query to select first 3 character of firstname of workers

Select substring(first_name,1 , 3) as Trim_Name from Workers;

--6. Sql query to fetch no. of workers in Account department

Select count(*) from Workers where Department = 'Account';

--7. Sql query to get current date

Seelct sysdate();

--8. Sql query to find all Workers whose salary is in between 50000 to 1000000

Select * from Workers where salary between 50000 and 1000000;

--9. Sql query to fetch first_name and last_name of Worker whose name start with 'S';

Select First_Name, Last_Name from Workers where first_name like 'S%'

--10. Sql query to fetch top 400 records from workers

Select * from Workers limit 400;

--11. Sql query to fetch first_name and last_name in a single column as full_name from Workers

Select concat(first_name,' ',last_name) as full_name from Workers;

--12. Sql query to fetch number of Workers whose DOJ is between 02/05/2016 and 04/07/2020 and grouped by gender

Selct count(*) from Workers Joining_Date between '02/05/2016' and '04/07/2020' group by gender;

--13. Sql query to fetch all workers ordered by last name in descending and department in ascending

Select * from Workers order by last_name desc, department asc;

--14. Sql query to fetch details of Workers whose last name ends with 'A' and contains 5 alphabet

Select * from Workers where last_name like '____A';

--15. Sql query to fetch details of Workers excluding worker having first name 'Harry' and 'Ben'

Select * from Workers where first_name not in ('Harry','Ben');