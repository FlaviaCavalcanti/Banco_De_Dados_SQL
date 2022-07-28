CREATE DATABASE db_loja;
Use db_loja;

CREATE TABLE tb_vendas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
idade INT,
cartao_pix BOOLEAN,
comprou VARCHAR(255),
produto int
);

INSERT INTO tb_vendas(nome,idade,cartao_pix,comprou,produto) VALUES ("Maria",19,false,"Camisa",501),("João",21,true,"sapato",405),
("José",30,true,"sapato",200),("Joana",15,true,"short",800),("Zezinha",23,false,"Camisa",300);

SELECT * FROM tb_vendas;

UPDATE tb_vendas SET cartao_pix = true WHERE id=1;
UPDATE tb_vendas SET cartao_pix = false WHERE id=2;

SELECT *FROM tb_vendas WHERE produto >500;
SELECT *FROM tb_vendas WHERE produto >500;