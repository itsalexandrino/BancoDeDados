create database db_ecommerce2;

use db_ecommerce2;

create table tb_categoria(
	idCategoria int(1) auto_increment primary key,
	quantProdutos int(3),
    nomeCategoria varchar(50)
);

create table tb_produtos(
id int(1) auto_increment primary key,
nome varchar(60),
valor int(6),
num_pagina int(2),
idCategoria int(1),
foreign key (idCategoria) references tb_categoria (idCategoria)
);

INSERT INTO tb_categoria (quantProdutos, nomeCategoria) VALUES (20, " Utensilios");
INSERT INTO tb_categoria (quantProdutos, nomeCategoria) VALUES (54, " Eletronicos");
INSERT INTO tb_categoria (quantProdutos, nomeCategoria) VALUES (123, "Moveis");
INSERT INTO tb_categoria (quantProdutos, nomeCategoria) VALUES (67, " Eletrodomesticos");
INSERT INTO tb_categoria (quantProdutos, nomeCategoria) VALUES (12, " Roupas");

select * from tb_categoria;

INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Garrafa", 20, 4, 1);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Copo", 5, 4, 1);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Garfo", 2, 4, 1);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Faca", 3, 4, 1);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Colher", 1, 4, 1);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Espatula", 7, 4, 1);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Prato", 4, 4, 1);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Celular Xiaomi", 900, 1, 2);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Video game", 1200, 1, 2);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Notebook", 2200, 1, 2);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("TV 4K", 1800, 1, 2);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Cadeira", 100,  2, 3);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Mesa", 200,  2, 3);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Painel", 150,  2, 3);
INSERT INTO tb_produtos (nome, valor, num_pagina, idCategoria) VALUES ("Armario", 600, 2, 3);

select * from tb_produtos where valor > 2000;

select * from tb_produtos where valor between 1000 and 2000;

select * from tb_produtos where nome like '%c%';

select p.*, c.* from tb_produtos p inner join tb_categoria c on p.idCategoria = c.idCategoria;

select p.nome, c.quantProdutos from tb_produtos p inner join tb_categoria c on p.idCategoria = c.idCategoria where c.nomeCategoria = ' Eletronicos';

