create table ecommerce(
id int(1) auto_increment primary key,
nome varchar(60),
valor int(6),
categoria varchar(50),
num_pagina int(2)
);

INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Garrafa", 20, "Utensílios", 2);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Copo", 5, "Utensílios", 2);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Garfo", 2, "Utensílios", 2);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Faca", 3, "Utensílios", 2);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Colher", 1, "Utensílios", 2);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Espatula", 7, "Utensílios", 2);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Prato", 4, "Utensílios", 2);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Celular Xiaomi", 900, "Eletronicos", 3);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Video game", 1200, "Eletronicos", 3);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Notebook", 2200, "Eletronicos", 3);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("TV 4K", 1800, "Eletronicos", 3);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Cadeira", 100, "Moveis", 4);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Mesa", 200, "Moveis", 4);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Painel", 150, "Moveis", 4);
INSERT INTO ecommerce (nome, valor, categoria, num_pagina) VALUES ("Armario", 600, "Moveis", 4);

select * from ecommerce where valor > 500;

select * from ecommerce where valor < 500;

update ecommerce set valor = 450 where id = 15;