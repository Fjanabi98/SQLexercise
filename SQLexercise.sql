-- find all products

select *
from bestbuy.products;

-- find all products that cost $1400
select *
from bestbuy.products where price =1400;
-- find all products that cost $11.99 or $13.99
select *
from bestbuy.products where price = 11.99 or price= 13.99;
-- find all products that do NOT cost 11.99 - using NOT
select *
from bestbuy.products
 where not price=11.99;
-- find all products and sort them by price from greatest to least
select *
from bestbuy.products order by price desc;
-- find all employees who don't have a middle initial
select *
from employees
where MiddleInitial IS Null;
-- find distinct product prices
select distinct Price
from products;
-- find all employees whose first name starts with the letter ‘j’
select *
from employees
where FirstName like "J";
-- find all Macbooks
select *
from products
where Name like "%macbook";
-- find all products that are on sale
select *
from products
where OnSale = True;
-- find the average price of all products
select avg (Price) AS "The average product price"
from products;
-- find all Geek Squad employees who don't have a middle initial
select *
from employees
where MiddleInitial IS Null And Title = "Geek Squad";
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest
select *
from products 
where StockLevel between 500 And 1200 
Order by Price , StockLevel;