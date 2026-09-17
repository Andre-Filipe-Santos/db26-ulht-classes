#
SELECT * FROM  sales.stores

SELECT store_name FROM sales.stores

SELECT customer_id, first_name, last_name FROM sales.customers WHERE city='Houston'

SELECT * FROM sales.customers WHERE state = 'TX' OR state = 'CA'

SELECT * FROM production.products WHERE list_price > 1500

--Listar apenas o nome do produto, cujo ano é posterior a 2017 e o preço é menor que 1000.
SELECT product_name FROM production.products WHERE model_year > 2017 AND list_price < 1000

--Listar os diferentes/distintos nomes de produto, cujo ano é 2017 ou 2018 e o preço está entre 750 e 1250.
SELECT DISTINCT product_name FROM production.products WHERE model_year >= 2017 AND model_year <=2018  AND list_price >= 750 AND list_price <= 1250


