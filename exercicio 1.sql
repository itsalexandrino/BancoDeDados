create table funcionarios(
id int(1) auto_increment primary key,
nome varchar(60),
salario int(5),
endereco varchar(50),
telefone varchar(12)
);

INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Matheus", 1800, "Rua XPTO 53", "1199255-7379");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Bruno", 1500, "Rua 3 70", "1192365-7379");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Marcos", 2500, "Rua 6 62", "1192890-5637");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Mauricio", 2200, "Rua 1 732", "1192780-5897");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Angela", 3000, "Rua 6 732", "1192380-5897");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Icaro", 2000, "Rua 78 7", "1192380-5837");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Luane", 5000, "Rua 18 90", "1198930-6737");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Paula", 4000, "Rua 67 2", "1189672-8738");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Monique", 2500, "Rua 78 12", "1199232-6738");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Guilherme", 2400, "Rua 38 789", "1198725-0928");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Claudia", 5000, "Rua 12 67", "1199027-6728");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Evelyn", 7000, "Rua 89 617", "1199782-7828");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Luana", 1700, "Rua 9 127", "1199782-8272");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Victor", 1900, "Rua 19 28", "1182382-8272");
INSERT INTO funcionarios (nome, salario, endereco, telefone) VALUES ("Danilo", 1900, "Rua 19 28", "1191283-8923");

select * from funcionarios where salario > 2000;

select * from funcionarios where salario < 2000;

update funcionarios set salario = 9000 where id = 15;

select * from funcionarios;