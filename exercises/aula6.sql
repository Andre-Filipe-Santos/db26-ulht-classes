SELECT "customer_id", "first_name", "last_name", "city", "state"
INTO sales.Allcustomers
FROM sales.customers

SELECT * FROM sales.Allcustomers;

SELECT *
INTO sales.TexasCustomers
FROM sales.customers
WHERE state = 'TX'

SELECT * FROM sales.TexasCustomers;

TRUNCATE TABLE sales.Allcustomers; -- APAGA TODOS OS DADOS DA TABELA, MAS MANTEM A ESTRUTURA DA TABELA

SELECT * FROM sales.Allcustomers;

INSERT INTO sales.Allcustomers
SELECT * FROM sales.customers

SET IDENTITY_INSERT sales.Allcustomers ON
INSERT INTO sales.Allcustomers (customer_id,first_name,last_name,city,[state]) -- aqui tem de estar explicito pq das primary keys
SELECT customer_id, first_name,last_name, city, state FROM sales.TexasCustomers
SET IDENTITY_INSERT sales.Allcustomers OFF

GO
CREATE VIEW newyork_customers AS;
SELECT customer_id, first_name,last_name;
FROM sales.customers;
WHERE city = 'New York';
GO

SELECT * FROM newyork_customers

SELECT * FROM INFORMATION_SCHEMA.TABLES

