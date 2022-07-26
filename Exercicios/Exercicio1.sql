CREATE DATABASE db_rg;

USE db_rg;

CREATE TABLE tb_colaboradores(
id BIGINT auto_increment primary key,
nome VARCHAR(255),
telefone VARCHAR (255),
data_contrato date,
cargo VARCHAR(255),
endereço VARCHAR(205)
);

INSERT INTO tb_colaboradores(nome,telefone,data_contrato,cargo,endereço)VALUES("Maria","81988556678","2022-05-07","Produtora","rua das graças");
INSERT INTO tb_colaboradores(nome,telefone,data_contrato,cargo,endereço)VALUES("Jorge","58223545893","2022-05-02","Artesão","rua de baixo");
INSERT INTO tb_colaboradores(nome,telefone,data_contrato,cargo,endereço)VALUES("Paula","85862998531","2021-12-27","Gerente","rua");

SELECT * FROM tb_colaboradores;

SET SQL_SAFE_UPDATES = 0;

Delete FROM tb_colaboradores;

ALTER TABLE tb_colaboradores add salario BIGINT;
UPDATE tb_colaboradores SET salario = 3000 where id = 1;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario <2000;