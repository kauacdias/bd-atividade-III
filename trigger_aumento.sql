create database precificacao;

use precificacao;

CREATE TABLE tb_produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  marca varchar(255),
  valor double
);

DELIMITER //

CREATE TRIGGER tg_aumentar_valor
BEFORE UPDATE ON tb_produtos
FOR EACH ROW
BEGIN
    SET NEW.valor = NEW.valor * 1.10;
END //

DELIMITER ;

INSERT INTO tb_produtos (nome, marca, valor)
VALUES ('Leite', 'Nestle', 10);

UPDATE tb_produtos
SET valor = 11
WHERE id = 1;

select * from tb_produtos;