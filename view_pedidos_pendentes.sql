CREATE DATABASE ENTREGA;

USE ENTREGA;

CREATE TABLE produtos (
    id_produto int primary key auto_increment,
    nome_produto varchar(255),
    status_entrega_produto varchar(255)
);

INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("Livro O Alquimista", "Entregue");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("Livro Flores do Bem", "Pendente");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("Livro Dom Casmurro", "Entregue");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("Livro Limiar", "Pendente");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("Livro As veias abertas", "Pendente");

CREATE VIEW vw_pedidos_pendentes AS
SELECT nome_produto, status_entrega_produto
FROM produtos
WHERE status_entrega_produto = "Pendente";

SELECT * FROM vw_pedidos_pendentes;