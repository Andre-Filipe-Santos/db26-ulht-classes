-- André Santos a22508126

-- 1. Create customers_short table
SELECT customer_id, first_name, last_name, city, state
INTO sales.customers_short
FROM sales.customers
WHERE first_name LIKE '[ABCDXYZ]%';

SELECT * FROM sales.customers_short;
GO

-- 2. Create view for rich states
CREATE VIEW sales.customers_rich_states AS
SELECT first_name, last_name, email
FROM sales.customers
WHERE state IN ('TX', 'CA');
GO

SELECT * FROM sales.customers_rich_states;
GO

-- 3. Create view for special customers
CREATE VIEW sales.customers_special AS
SELECT first_name, last_name, email
FROM sales.customers
WHERE last_name LIKE '[abt]%' 
  AND (city LIKE '%o' OR city LIKE '%on');
GO

SELECT * FROM sales.customers_special;
GO

-- 4. Create view for last trimester orders (Joined with customers)
CREATE VIEW sales.last_trimester AS
SELECT c.first_name, c.last_name, c.email
FROM sales.orders o
JOIN sales.customers c ON o.customer_id = c.customer_id
WHERE MONTH(o.order_date) > 9;
GO

SELECT * FROM sales.last_trimester;
GO

-- 5. Create view for second semester orders shipped in a different year
CREATE VIEW sales.second_semester AS
SELECT c.first_name, c.last_name, c.email
FROM sales.orders o
JOIN sales.customers c ON o.customer_id = c.customer_id
WHERE MONTH(o.order_date) > 6 
  AND YEAR(o.order_date) <> YEAR(o.shipped_date);
GO

SELECT * FROM sales.second_semester;
GO

-- 6. Create view for long email addresses
CREATE VIEW sales.long_emails AS
SELECT *
FROM sales.customers
WHERE LEN(email) > 20;
GO

SELECT * FROM sales.long_emails;
GO