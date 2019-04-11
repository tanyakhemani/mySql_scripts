select * from customers;

select customerName, country , sum(creditLimit) 
from customers
order by country;

select country , city, creditLimit 
from customers
order by country;

/*GroupBy single column*/
select country, city, sum(creditLimit)
from customers
group by country
order by country;

-- Display the total(sum) creditLimit of all the customers grouped by country
-- Problem : only 1 city shown
select country,city, sum(creditLimit)
from customers
group by country
order by country;

-- Solution: get the count of cities
select country, GROUP_CONCAT(city), sum(creditLimit)
from customers
group by country
order by country;



/*GroupBy multiple columns*/
-- Display the total(sum) creditLimit of all the customers grouped by country, city
select country, city, sum(creditLimit)
from customers
group by country, city
order by city;

-- GroupBy using having clause
-- problem with WHERE clause in group by
select country, city, sum(creditLimit)
from customers
where sum(creditLimit)> 50000 
group by country, city
order by country;

-- Display the total(sum) creditLimit of all the customers having creditLimit>50000 grouped by country, city 
select country, count(city), sum(creditLimit)
from customers
where country like ('A%')
group by country
having sum(creditLimit)> 50000 
order by country;

-- without ROLL UP
select country, city, sum(creditlimit)
from customers
group by country, city; 

-- with ROLL UP
select country, city, sum(creditlimit)
from customers
group by country, city with rollup;

