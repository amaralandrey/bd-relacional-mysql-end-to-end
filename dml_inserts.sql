INSERT INTO clientes (nome_cliente, cpf, nascimento, email, cidade)
VALUES
('Pedro Silva', 0000000000, '1991-01-01', 'pedro.silva@exemplo.com', 'Sao Paulo'),
('Ana Fonseca', 0000000000, '1992-02-02', 'ana.fonseca@exemplo.com', 'Rio de Janeiro'),
('Jose Leono', 0000000000, '1993-03-03', 'jose.leono@exemplo.com', 'Brasilia'),
('Joao Moraes', 0000000000, '1982-04-29', 'joao.moraes@exemplo.com', 'Sao Paulo'),
('Paula Souza', 0000000000, '1979-09-18', 'paula.souza@exemplo.com', 'Campinas'),
('Armando Pierre', 0000000000, '1980-10-01', 'armando.pierre@exemplo.com', 'Salvador'),
('Francisco Jacinto', 0000000000, '1983-04-01', 'chico.jaci@exemplo.com', 'Sao Paulo'),
('Sonia Breda', 0000000000, '1969-10-09', 'sonia.breda@exemplo.com', 'Rio de Janeiro'),
('Renata Gimenes', 0000000000, '1986-02-10', 're.gimenes@exemplo.com', 'Maceio'),
('Vinicius Ribeiro', 0000000000, '1993-03-19', 'vinicius.rib@exemplo.com', 'Vitoria'),
('Gisele Prado', 0000000000, '1989-03-03', 'gi.prado@exemplo.com', 'Fortaleza');

INSERT INTO estoque (descricao, quantidade_estoque, valor_unidade, animal)
VALUES
('racao para cachorro', 32, 25.00, 100),
('racao para gato', 45, 23.00, 101),
('racao para passaro', 23, 18.00, 102),
('biscoito para cachorro', 35, 6.00, 100),
('biscoito para gato', 26, 5.00, 101),
('osso para cachorro', 23, 8.00, 100),
('racao para peixe', 40, 21.90, 103),
('racao para coelho', 25, 49.59, 104),
('tapete higienico para cachorro', 35, 97.99, 100),
('racao humida para cachorro', 50, 3.39, 100),
('racao humida para gato', 75, 4.85, 101);

INSERT INTO funcionarios (nome_funcionario, cpf)
VALUES
('Joao Godoi', 00100100101),
('Tereza Dantas', 00200200202),
('Paula Regina', 00300300303);

INSERT INTO vendas (data_venda, funcionario_id, cliente_id, produto_id, valor_unidade, quantidade)
VALUES
('2021-01-01', 1, 1, 1, 25.00, 2, valor_unidade * quantidade),
('2022-02-02', 2, 2, 2, 23.00, 1, valor_unidade * quantidade),
('2021-03-03', 3, 1, 3, 18.00, 3, valor_unidade * qantidade),
('2022-01-01', 1, 3, 9, 97.99, 1, valor_unidade * quantidade),
('2022-02-02', 2, 4, 6, 8.00, 4, valor_unidade * quantidade),
('2022-03-03', 3, 5, 5, 5.00, 5, valor_unidade * qantidade),
('2022-04-04', 1, 8, 8, 49.59, 11, valor_unidade * quantidade),
('2022-04-05', 2, 9, 10, 3.39, 1, valor_unidade * quantidade),
('2022-03-06', 3, 8, 4, 6.00, 5, valor_unidade * qantidade),
('2022-03-06', 1, 3, 7, 21.90, 3, valor_unidade * qantidade);

INSERT INTO vendas (data_venda, funcionario_id, cliente_id, produto_id, valor_unidade, quantidade)
VALUES
('2021-01-01', 1, 1, 1, 25.00, 2),
('2022-02-02', 2, 2, 2, 23.00, 1),
('2021-03-03', 3, 1, 3, 18.00, 3),
('2022-01-01', 1, 3, 9, 97.99, 1),
('2022-02-02', 2, 4, 6, 8.00, 4),
('2022-03-03', 3, 5, 5, 5.00, 5),
('2022-04-04', 1, 8, 8, 49.59, 11),
('2022-04-05', 2, 9, 10, 3.39, 1),
('2022-03-06', 3, 8, 4, 6.00, 5),
('2022-03-06', 1, 3, 7, 21.90, 3);
