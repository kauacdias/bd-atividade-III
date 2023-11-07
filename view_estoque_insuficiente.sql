CREATE DATABASE EMPRESA3;

USE EMPRESA3;

CREATE TABLE produtos (
    id_produto int primary key auto_increment,
    nome_produto varchar(255),
    quantidade_em_estoque int
);

INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Refrigente", "10");
INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Pipoca", "4");
INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Biscoito", "20");
INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Leite", "2");
INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Amendoim", "30");

CREATE VIEW vw_estoque_insuficiente AS
SELECT nome_produto, quantidade_em_estoque
FROM produtos
WHERE quantidade_em_estoque < 5;

SELECT * FROM vw_estoque_insuficiente;