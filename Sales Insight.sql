create database sales;
use sales;

SELECT * FROM sales.customers;
SELECT * FROM sales.transactions;
SELECT * FROM sales.markets;

SELECT count(*) FROM sales.customers;
SELECT count(*) FROM sales.transactions;
SELECT * FROM sales.transactions limit 5;
SELECT count(*) FROM sales.transactions where market_code = "mark001";
SELECT * FROM sales.transactions where market_code = "mark001";
SELECT * FROM sales.transactions where currency = "USD";

SELECT * FROM sales.transactions limit 5;

SELECT * FROM sales.date;

SELECT sales.transactions.*, sales.date.* from sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
where sales.date.year=2020;

SELECT sum(sales.transactions.sales_amount) from sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
where sales.date.year=2020;

SELECT sum(sales.transactions.sales_amount) from sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
where sales.date.year=2019;

SELECT sum(sales.transactions.sales_amount) from sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
where sales.date.year=2020 and sales.transactions.market_code="Mark001";

SELECT distinct product_code From sales.transactions where market_code="Mark001";

SELECT * from sales.transactions where sales_amount<=0;
SELECT * from sales.transactions where sales_amount=-1;

select distinct(transactions.currency) from transactions;

Select sum(transactions.sales_amount) from transactions Inner join date on transactions.order_date=date.date
where date.year=2020 and date.month_name="jaunary"
and (transactions.currency="INR\r" or transactions.currency="USD\r");

Select sum(transactions.sales_amount) from transactions Inner join date on transactions.order_date=date.date
where date.year=2020 and (transactions.currency="INR\r" or transactions.currency="USD\r");

select sum(transactions.sales_amount) from transactions
inner join date on transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001"