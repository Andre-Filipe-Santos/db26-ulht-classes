-- 8.1.1 SELECT
-- Identificar as tabelas existentes via SQL no schema production.
SELECT * FROM INFORMATION_SCHEMA.TABLES t WHERE t.TABLE_SCHEMA = 'production';

SELECT * FROM information_schema.TABLES t WHERE t.TABLE_SCHEMA = 'sales';

--Identificar as tabelas existentes via SQL utilizado a tabela interna sys.
SELECT * FROM sys.tables;

--Identificar as colunas existentes na tabela products via SQL
SELECT *FROM information_schema.COLUMNS c WHERE c.TABLE_NAME = 'products';

--Identificar as colunas existentes na tabela customers via SQL
SELECT * FROM information_schema.COLUMNS c WHERE c.TABLE_NAME = 'customers';

--8.2 Exercícios

--8.2.2 Exercício 2
--Insira pelo menos um novo registo em cada uma das seguintes tabelas:

-- brands
-- categories
-- customers
-- stores

--Confirme a coerência dos dados efectuando um SELECT a cada uma das tabelas.

INSERT INTO sales.stores 
VALUES('loja da aula 3', '9178123', 'loja@gmail.com', 'rua etc', 'lisboa', 'lisboa','2900');
SELECT * FROM sales.stores WHERE store_name = 'loja da aula 3';

INSERT INTO production.brands VALUES ('MOTOES');
SELECT * FROM production.brands WHERE brand_name = 'MOTOES';

INSERT INTO production.categories VALUES ('mota de velha');
SELECT * FROM production.categories WHERE category_name = 'mota de velha';






