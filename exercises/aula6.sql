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