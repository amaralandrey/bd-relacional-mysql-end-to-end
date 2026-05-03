CREATE TABLE clientes_fidelidade (
    cliente_id INT PRIMARY KEY,
    nome_cliente VARCHAR(40),
    FOREIGN KEY (cliente_id) 
    REFERENCES clientes(cliente_id)
);

-- Adicionar registros clientes clientes_fidelidade
INSERT INTO clientes_fidelidade (cliente_id, nome_cliente)
SELECT cliente_id, nome_cliente FROM clientes 
WHERE clientes.cliente_id IN (2, 4, 8, 9);

-- Verificar emails dos clientes que são clientes fidelidade. Usar inner join.
SELECT clientes.nome_cliente, clientes.email FROM clientes 
INNER JOIN clientes_fidelidade ON clientes.cliente_id = clientes_fidelidade.cliente_id;

-- Juntar a tabela de vendas com a tabela de clientes fidelidade usando left join
SELECT * FROM vendas
LEFT JOIN clientes_fidelidade 
ON vendas.cliente_id = clientes_fidelidade.cliente_id;

-- Juntar a tabela de vendas com a tabela de clientes fidelidade left excluding join
SELECT * FROM vendas
LEFT JOIN clientes_fidelidade
ON vendas.cliente_id = clientes_fidelidade.cliente_id
WHERE clientes_fidelidade.cliente_id IS NULL;

-- Juntar a tabela de vendas com a tabela de clientes fidelidade usando right join
SELECT * FROM vendas
LEFT JOIN clientes_fidelidade 
ON vendas.cliente_id = clientes_fidelidade.cliente_id;

-- Juntar a tabela de vendas com a tabela de clientes utilizando right join
SELECT * 
FROM vendas
RIGHT JOIN clientes
ON vendas.cliente_id = clientes.cliente_id;

-- Foi contratado um novo funcionário, adicionar o registro na tabela correspondente
INSERT INTO funcionarios (nome_funcionario, cpf)
VALUES ('Renata Silva', 00400400404);

-- Utilizar o left join para juntar a tabela funcionarios com a tabela vendas
SELECT *
FROM funcionarios
LEFT JOIN vendas
ON funcionarios.funcionario_id = vendas.funcionario_id;