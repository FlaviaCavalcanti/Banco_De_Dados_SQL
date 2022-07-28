CREATE DATABASE db_escola;
Use db_escola;

CREATE TABLE tb_sistema(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
idade int,
turma int,
nota decimal(2,1)
);
ALTER TABLE tb_sistema MODIFY COLUMN nota decimal(8,1);


INSERT INTO tb_sistema(nome,idade,turma,nota) VALUES ("VANESSA",16,2,6.1),("Maria",15,2,7.1),
("Mario",16,3,7),("José",15,1,6.2),("Marina",15,2,6.3),("Felipe",16,3,9),("Jorge",15,2,5.2),("Marcia",17,2,10);

SELECT * FROM tb_sistema;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM tb_sistema;

UPDATE tb_sistema SET turma= 4 WHERE id=2;

SELECT*FROM tb_sistema WHERE nota>7;
SELECT*FROM tb_sistema WHERE nota<7;
