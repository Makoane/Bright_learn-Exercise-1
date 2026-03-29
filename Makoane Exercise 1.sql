--question 1
select *
from bright_learning.default.employee;

--question 2
---Find the unique departments
select distinct department
from bright_learning.default.employee;

--question 3
---Retrieve all employee names and order by salary in descending
select first_name,
last_name,
salary
from bright_learning.default.employee
order by salary desc;

--question 4
---Top 5 highest paid
select *
from bright_learning.default.employee
order by salary desc
limit 5;

--question 5
---Employees that work in IT
select *
from bright_learning.default.employee
where department="IT";

--question 6
---Employees that work in Finance and salary > 58000
select *
from bright_learning.default.employee
where department = "Finance" 
and salary > 58000;

--question 7
---Employees that work in HR OR Marketing
select *
from bright_learning.default.employee
where department = "Marketing" 
or department = "HR";

--question 8
---Employees that do not work in IT
select *
from bright_learning.default.employee
where department <> "IT";

--question 9
---Employees that work in HR, IT and Finance
select *
from bright_learning.default.employee
where department in("IT" , "HR", "Finance");

--question 10
---Employees that work in IT, lives in New York and earns more than 50 000
select *
from bright_learning.default.employee
where department = "IT"
and city ="New York"
and salary >50000;


--question 11
---Retrieve fisrt and last name where they work in Finance or Marketing and earns more than 52000 order in desc
select first_name,
last_name,
salary,
department
from bright_learning.default.employee
where department = "Finance"
or department = "Marketing"
and salary > 52000
order by salary desc;

--question 12
---Combine select distince, where, in statement
---unique cities and exclude those IT and HR
SELECT DISTINCT city,
department
from bright_learning.default.employee
where department NOT IN ('HR', 'IT');

--question 13
---Employees that are not in finance
SELECT *
from bright_learning.default.employee
where department <> "Finance"
and salary > 50000
ORDER BY hire_date ASC;

--question 14
---Employees that are not in finance
SELECT *
from bright_learning.default.employee
where city = 'Chicago'
or city = "Los Angeles"
and department = "IT"
or department = "Marketing"
LIMIT 3;
