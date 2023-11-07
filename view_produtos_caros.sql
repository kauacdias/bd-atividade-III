CREATE DATABASE TUDOCARO;

USE TUDOCARO;

CREATE TABLE produtos (
    id_produto int primary key auto_increment,
    nome_produto varchar(255),
    valor double
);

INSERT INTO produtos (nome_produto, valor)
VALUES ("Televisão", "3400");
INSERT INTO produtos (nome_produto, valor)
VALUES ("Pipoca", "4");
INSERT INTO produtos (nome_produto, valor)
VALUES ("Celular", "1200");
INSERT INTO produtos (nome_produto, valor)
VALUES ("Amendoim", "2");
INSERT INTO produtos (nome_produto, valor)
VALUES ("Smart Watch", "900");

CREATE VIEW vw_produtos_caros AS
SELECT nome_produto, valor
FROM produtos
WHERE valor > 100;

SELECT * FROM vw_produtos_caros;