CREATE DATABASE COMERCIOVENDA;

USE COMERCIOVENDA;

CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY auto_increment,
    nome VARCHAR(255),
    email varchar(255)
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY auto_increment,
    nome VARCHAR(255),
    email VARCHAR(255),
    id_vendedor INT,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

INSERT INTO vendedor (nome, email)
VALUES
    ('Ana Rita Barbosa', 'ana.rita@empresa4.com'),
    ('Milton Santos Lopes de Aguiar', 'milton.santos@empresa4.com'),
    ('Maria Antônia Bispo de Souza', 'maria.antonia@empresa4.com');

INSERT INTO cliente (nome, email, id_vendedor)
VALUES
    ('Marta', 'marta@gmail.com', 1),
    ('Maria', 'maria@gmail.com', 2),
    ('Marilene', 'marilene@gmail.com', 1),
    ('Márcia', 'marcia@gmail.com', 3),
    ('Michelle', 'michelle@gmail.com', 2);

CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT
    c.nome as "Nome do Cliente", c.email as "Email do Cliente", v.nome as "Nome do vendedor", v.email as "Email do vendedor"
FROM
    cliente c
JOIN
    vendedor v ON c.id_vendedor = v.id_vendedor;
    
SELECT * FROM vw_relacionamento_cliente_vendedor;