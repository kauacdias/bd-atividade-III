CREATE DATABASE EMPRESA2;

USE EMPRESA2;

CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY auto_increment,
    nome_departamento VARCHAR(255)
);

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY auto_increment,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

INSERT INTO departamento (nome_departamento)
VALUES ("Administrativo");
INSERT INTO departamento (nome_departamento)
VALUES ("Tecnologia");
INSERT INTO departamento (nome_departamento)
VALUES ("Financeiro");

INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('João Silva', 'Analista administrativo', 1);
INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('Maria Santos', 'Recrutador', 2);
INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('Carlos Ferreira', 'Almoxarife', 1);
INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('Ana Rocha', 'Analista Financeiro', 3);
INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('Pedro Almeida', 'Auxiliar administrativo', 1);

CREATE VIEW vw_funcionarios_departamento AS
SELECT nome, cargo
FROM funcionario
WHERE id_departamento = 1;

SELECT * FROM vw_funcionarios_departamento;