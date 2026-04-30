CREATE DATABASE petshop;

CREATE TABLE clientes(
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(40) NOT NULL,
    cpf INT NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE,
    nascimento DATE,
    cidade VARCHAR(40)
);

CREATE TABLE estoque (
    produto_id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(40),
    quantidade_estoque INT,
    valor_unidade DECIMAL(5,2) NOT NULL,
    animal INT
);

CREATE TABLE funcionarios (
    funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_funcionario VARCHAR(40),
    cpf INT NOT NULL
);

CREATE TABLE vendas (
    venda_id INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE NOT NULL,
    funcionario_id INT,
    cliente_id INT,
    produto_id INT,
    valor_unidade DECIMAL(5,2) NOT NULL,
    quantidade INT NOT NULL,
    valor_total DECIMAL(5,2) AS (valor_unidade * quantidade),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(funcionario_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES estoque(produto_id)
);
