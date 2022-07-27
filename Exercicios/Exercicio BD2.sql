CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT auto_increment PRIMARY KEY,
classe VARCHAR(255)
);


INSERT INTO tb_classes(classe) VALUES ("Mago");
INSERT INTO tb_classes(classe) VALUES ("Atirador");
INSERT INTO tb_classes(classe) VALUES ("Suporte");
INSERT INTO tb_classes(classe) VALUES ("Tank");


SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT auto_increment PRIMARY KEY,
categoria_id BIGINT,
nome VARCHAR(255),
poder_de_ataque INT,
poder_de_defesa INT,
forca int,
FOREIGN KEY(categoria_id)REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(categoria_id,nome,poder_de_ataque,poder_de_defesa,forca) VALUES(1,"Rogerinho","2000","1500","15");
INSERT INTO tb_personagens(categoria_id,nome,poder_de_ataque,poder_de_defesa,forca) VALUES(3,"Mario","1200","1300","13");
INSERT INTO tb_personagens(categoria_id,nome,poder_de_ataque,poder_de_defesa,forca) VALUES(2,"Marcelina","1600","1400","17");
INSERT INTO tb_personagens(categoria_id,nome,poder_de_ataque,poder_de_defesa,forca) VALUES(4,"Nautilus","1000","3000","12");
INSERT INTO tb_personagens(categoria_id,nome,poder_de_ataque,poder_de_defesa,forca) VALUES(1,"Caline","1205","1700","13");
INSERT INTO tb_personagens(categoria_id,nome,poder_de_ataque,poder_de_defesa,forca) VALUES(4,"Caliopeia","1999","1999","19");
INSERT INTO tb_personagens(categoria_id,nome,poder_de_ataque,poder_de_defesa,forca) VALUES(2,"Claudio","2000","1500","15");
INSERT INTO tb_personagens(categoria_id,nome,poder_de_ataque,poder_de_defesa,forca) VALUES(1,"Pato","1500","1500","10");

SELECT * FROM tb_personagens;

SET SQL_SAFE_UPDATES = 0;
Delete FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_de_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_de_defesa >1000 <2000;
SELECT * FROM tb_personagens  WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.categoria_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.categoria_id = tb_classes.id WHERE tb_classes.id = 1;