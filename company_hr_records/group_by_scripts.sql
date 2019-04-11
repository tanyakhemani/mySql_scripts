select * from employee;

-- simple groupby 
select department, sum(salary)
from employee
group by department;

-- running intro trouble with groupby and sql_mode
select department, city, count(*)
from employee
group by department;

/*MySQL - setting sql_mode*/
-- checking current session sql_mode
select @@session.sql_mode;

-- set the current session sql_mode to default
set session sql_mode = default;

-- turning on ONLY_FULL_GROUP
set session sql_mode = (select concat('ONLY_FULL_GROUP_BY,',@@sql_mode));

-- turning off ONLY_FULL_GROUP
set session sql_mode = (select replace(@@sql_mode,'ONLY_FULL_GROUP_BY,' ,''));


-- Aggregate functions count(), sum() etc
select department, count(city), sum(salary)
from employee
group by department, city

-- mysql specific group_concat
select department, group_concat(city), sum(salary)
from employee
group by department, city

-- group by multiple columns
select department, city, sum(salary)
from employee
group by department, city
order by country;

-- without roll up
select department, city, sum(salary) 
from employee
group by department, city;

-- with roll up
select department, city, sum(salary) 
from employee
group by department, city with rollup;

-- find the departments in which company spends more than 100000$ annually
-- wrong usage of where
select department, sum(salary)
from employee
where sum(salary)>100000
group by department

-- right usage of where 
select department, group_concat(name), sum(salary)
from employee
where name like 'J%'
group by department;

-- having : 
select department, group_concat(name), sum(salary)
from employee
group by department
having sum(salary)>100000;

