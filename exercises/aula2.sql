-- André Santos a22508126

--EXERCICIO 7.2.1

--Selecionar todas as propriedades/colunas/campos da tabela sales.stores.
SELECT * FROM  sales.stores

--Obter apenas o nome de todas as production.brands.
SELECT brand_name FROM production.brands

--Visualizar o customer_id, first_name e last_name dos clientes (sales.customers) de ‘Houston’.
SELECT customer_id, first_name, last_name FROM sales.customers WHERE city='Houston'

--Obter os dados dos clientes que vivem ou no estado do Texas (TX) ou na California (CA).
SELECT * FROM sales.customers WHERE state = 'TX' OR state = 'CA'

--Listar todos os produtos cujo preço é maior que 1500.
SELECT * FROM production.products WHERE list_price > 1500

--Listar apenas o nome do produto, cujo ano é posterior a 2017 e o preço é menor que 1000.
SELECT product_name FROM production.products WHERE model_year > 2017 AND list_price < 1000

--Listar os diferentes/distintos nomes de produto, cujo ano é 2017 ou 2018 e o preço está entre 750 e 1250.
SELECT DISTINCT product_name FROM production.products WHERE model_year >= 2017 AND model_year <=2018  AND list_price >= 750 AND list_price <= 1250

--Qual o valor do produto mais caro ?
SELECT MAX(list_price) FROM production.products

--Qual a média do preço dos produtos ?
SELECT SUM(list_price) / COUNT(list_price) FROM production.products 
-- OU SELECT AVG(list_price) FROM production.products

--Quantos produtos há ?
SELECT COUNT(product_id) FROM production.products

--Liste o nome dos produtos diferentes (baseado no nome) existentes.
SELECT DISTINCT product_name FROM production.products

--Quantos são estes produtos ? (É suposto terem este valor de forma direta)
SELECT COUNT(DISTINCT product_name) FROM production.products

--EXERCICIO 7.2.2


--Inserir uma nova loja (sales.stores) com toda a informação do registo numa localização em “Lisboa”.
INSERT INTO sales.stores
    (store_name, phone, email, street, city, state, zip_code)
VALUES (
    'Lisboa Bikes',
    '210000000',
    'lisboa@bikes.pt',
    'Avenida da Liberdade, 100',
    'Lisboa',
    'PT',
    '1250'
)

--Inserir uma nova loja, sem telefone, no Porto.
INSERT INTO sales.stores
    (store_name, phone, email, street, city, state, zip_code)
VALUES (
    'Porto Bikes',
    '227890000',
    'porto@bikes.pt',
    'Rua Santa Catarina, 200',
    'Porto',
    'PO',
    '4000'
)
--Criar uma nova “brand” de bicicletas chamada “Biklas”.
INSERT INTO production.brands (brand_name) VALUES ('Biklas')

--Criar uma nova “brand” de bicicletas chamada “Lx Trotinetes”.
INSERT INTO production.brands (brand_name) VALUES ('Lx Trotinetes')


--EXERCICIO 7.2.3

-- Atualizar o telefone da loja do Porto para “+3512121212121”.
UPDATE sales.stores SET phone = '3512121212121'  WHERE store_name = 'Porto Bikes'

-- Atualizar a brand de bicicletas chamada “Biklas” para “Lx Cycles”.
UPDATE production.brands SET brand_name = 'Lx Cycles'  WHERE brand_name = 'Biklas'

-- Atualizar a brand de bicicletas chamada “Lx Cycles” para “LX CYCLES”.
--     Nota: Sem o escrever explicitamente em maiúsculas
UPDATE production.brands SET brand_name = UPPER(brand_name)  WHERE brand_name = 'Lx Cycles'


--EXERCICIO 7.2.4


 --Apagar as lojas do Porto e de Lisboa.
 DELETE FROM sales.stores WHERE city = 'Lisboa' OR city = 'Porto'
 -- OU --DELETE FROM sales.stores WHERE city = 'Lisboa' OR city = 'Porto';


 --Apagar as brands cujo nome começa por “Lx”.
DELETE FROM production.brands WHERE brand_name LIKE 'Lx%';