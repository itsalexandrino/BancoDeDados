create database db_rh2;

use db_rh2;

create table tb_cargo(
	setor int(1) auto_increment primary key,
    departamento varchar(60),
    nomeCargo varchar(60)
);

create table funcionarios(
id int(1) auto_increment primary key,
nome varchar(60),
salario int(5),
endereco varchar(50),
telefone varchar(12),
setor int(1),
FOREIGN KEY (`setor`) REFERENCES `tb_cargo` (`setor`)
);

INSERT INTO tb_cargo (departamento, nomeCargo) VALUES ("Tecnologia", "Programador");
INSERT INTO tb_cargo (departamento, nomeCargo) VALUES ("Marketing", "Analista de marketing");
INSERT INTO tb_cargo (departamento, nomeCargo) VALUES ("Finanças", "Contador");
INSERT INTO tb_cargo (departamento, nomeCargo) VALUES ("Administração", "Coordenador");
INSERT INTO tb_cargo (departamento, nomeCargo) VALUES ("Vendas", "Promotor de vendas");

INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Matheus", 1800, "Rua XPTO 53", "1199255-7379", 1);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Bruno", 1500, "Rua 3 70", "1192365-7379", 2);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Marcos", 2500, "Rua 6 62", "1192890-5637", 4);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Mauricio", 2200, "Rua 1 732", "1192780-5897", 2);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Angela", 3000, "Rua 6 732", "1192380-5897", 2);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Icaro", 2000, "Rua 78 7", "1192380-5837", 1);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Luane", 5000, "Rua 18 90", "1198930-6737", 2);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Paula", 4000, "Rua 67 2", "1189672-8738", 3);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Monique", 2500, "Rua 78 12", "1199232-6738", 3);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Guilherme", 2400, "Rua 38 789", "1198725-0928", 4);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Claudia", 5000, "Rua 12 67", "1199027-6728", 5);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Evelyn", 7000, "Rua 89 617", "1199782-7828", 1);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Luana", 1700, "Rua 9 127", "1199782-8272", 2);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Victor", 1900, "Rua 19 28", "1182382-8272", 3);
INSERT INTO funcionarios (nome, salario, endereco, telefone, setor) VALUES ("Danilo", 1900, "Rua 19 28", "1191283-8923", 4);

select * from funcionarios where salario between 1000 and 2000;

select * from funcionarios where nome like '%c%';

select f.*, c.* from funcionarios f inner join tb_cargo c on f.id = c.setor;

select f.nome, c.nomeCargo from funcionarios f inner join tb_cargo c on f.id = c.setor where c.nomeCargo = 'Programador';
