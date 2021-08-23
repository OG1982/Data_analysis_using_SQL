--Data Analysis Using SQL

--Show all customer records
SELECT * FROM customers


--Show total number of customers
SELECT COUNT(*) FROM customers


--Show transactions for Chennai market (market code for Chennai is Mark001)
SELECT * FROM transactions
WHERE market_code = 'Mark001'


--Show distinct product codes that were sold in Chennai
SELECT DISTINCT product_code
FROM transactions
WHERE market_code = 'Mark001'


--Show transactions where currency is US dollars
SELECT * FROM transactions
WHERE currency = 'USD'


--Show transactions in 2020 join by date table
SELECT transactions.*, date.*
FROM transactions
INNER JOIN date
ON transactions.order_date = date.date
WHERE year = 2020


--Show total revenue in year 2020
SELECT SUM(sales_amount) as Revenue_2020
FROM transactions
INNER JOIN date
ON transactions.order_date = date.date
WHERE year = 2020


--Show total revenue in year 2020 in Chennai
SELECT SUM(sales_amount) as Revenue_2020_Chennai
FROM transactions
INNER JOIN date
ON transactions.order_date = date.date
WHERE year = 2020
AND market_code = 'Mark001'









