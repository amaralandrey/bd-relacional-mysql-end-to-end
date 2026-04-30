-- Verificar o ID e nome de todos os clientes
SELECT cliente_id, nome_cliente FROM clientes;

-- Visualizar todos os registros de clientes residentes na cidade de São Paulo, ordenando os nomes em ordem ascendente
SELECT * FROM clientes WHERE cidade = 'Sao Paulo' ORDER BY nome_cliente ASC;

-- Visualizar todos os registros de produtos com preço unitário maior que R$ 20,00
SELECT * FROM estoque WHERE valor_unidade > 20.00 ORDER BY valor_unidade DESC;
SELECT * FROM estoque HAVING valor_unidade > 20.00 ORDER BY valor_unidade DESC;

-- Visualizar todos os registros de produtos com preço unitário menor que R$ 20,00
SELECT * FROM estoque WHERE valor_unidade < 20.00;
SELECT * FROM estoque HAVING valor_unidade < 20.00;

-- Verificar o produto com o maior preço unitário
SELECT descricao, valor_unidade FROM estoque 
ORDER BY valor_unidade DESC LIMIT 1;

SELECT descricao, MAX(valor_unidade) FROM estoque GROUP BY descricao;

-- Verificar a média de valor de todos os produtos
SELECT ROUND(AVG(valor_unidade), 2) AS media_precos FROM estoque;

-- Agrupe os dados de venda por cliente_id para verificar o total de vendas de cada cliente usando GROUP BY.
SELECT cliente_id, SUM(valor_total) AS total_vendas FROM vendas GROUP BY cliente_id;

SELECT clientes.cliente_id, clientes.nome_cliente, SUM(vendas.valor_total) AS total_vendas
FROM clientes JOIN vendas ON clientes.cliente_id = vendas.cliente_id
GROUP BY clientes.cliente_id
ORDER BY total_vendas DESC;