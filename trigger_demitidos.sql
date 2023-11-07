create database gestaofuncionarios;

use gestaofuncionarios;

CREATE TABLE tb_funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  cpf varchar(255)
);

CREATE TABLE tb_funcionarios_demitidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  cpf varchar(255)
);

DELIMITER //

CREATE TRIGGER tg_gerir_funcionarios
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO tb_funcionarios_demitidos (nome, cpf)
    VALUES (OLD.nome, OLD.cpf);
END //

DELIMITER ;

INSERT INTO tb_funcionarios (nome, cpf)
VALUES ('Carlos Vitor', '222.222.222-22');

DELETE FROM tb_funcionarios WHERE id = 1;

SELECT * FROM tb_funcionarios_demitidos;