-- ASSIGNMENT #01 QUERRY SOLUTIONS --

-- QUESTION #01 --

select * from sales.customers;

select first_name, last_name, phone, city from sales.customers
where state = 'CA' AND phone IS NOT NULL; 

-- QUESTION #02 --

select * from production.products;

select product_id, product_name, model_year,
list_price from production.products
order by model_year Desc, list_price Asc;

-- QUESTION #03 --
-- Part A --
select * from production.products;
select top 5 * from production.products;
select top 5 product_name, list_price from production.products;

-- Part B --
-- 17 rows the 5% result return --
select top 5 percent * from production.products
order by list_price Asc;

-- QUESTION #04 --

-- page 1 --
select * from production.products;

select * from production.products
order by list_price Desc
offset 0 rows
fetch next 10 rows only;

-- page 2 --
select * from production.products
order by list_price Desc
offset 10 rows
fetch next 10 rows only;

-- page 3 --
select * from production.products
order by list_price Desc
offset 20 rows
fetch next 10 rows only;

-- QUESTION #5 --

-- Part A --
select distinct state from sales.customers
order by state Asc;

-- Part B --
select distinct state,city from sales.customers
order by state Asc, city Asc;

-- Part C --
select distinct model_year from production.products;

select COUNT(DISTINCT model_year) AS total_years 
from production.products;

-- QUESTION #6 --

select * from production.products;

select 
	product_id,product_name, 
	brand_id, category_id, 
	list_price 
from 
	production.products
where
	list_price between 500 And 1500
	And (model_year = 2019 Or model_year = 2020)
order by
	list_price Asc;


