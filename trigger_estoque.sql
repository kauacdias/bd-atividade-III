create database estoque;

use estoque;

CREATE TABLE tb_produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  marca varchar(255),
  status_venda varchar(255),
  estoque int
);

DELIMITER //

CREATE TRIGGER tg_atualizar_estoque
BEFORE UPDATE ON tb_produtos
FOR EACH ROW
BEGIN
    IF NEW.status_venda = 'Vendido' AND OLD.status_venda <> 'Vendido' THEN
        SET NEW.estoque = NEW.estoque - 1;
    END IF;
END //

DELIMITER ;

INSERT INTO tb_produtos (nome, marca, status_venda, estoque)
VALUES ('Leite', 'Nestle', 'Disponivel', 10);

UPDATE tb_produtos
SET status_venda = 'Vendido'
WHERE id = 1;

select * from tb_produtos;