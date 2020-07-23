create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	idCategoria int(1) auto_increment primary key,
    nomeCategoria varchar(50),
    descricao varchar(60)
);

create table tb_produtos(
	id int(1) auto_increment primary key,
	nome varchar(60),
	valor int(6),
	idCategoria int(1),
	foreign key (idCategoria) references tb_categoria (idCategoria)
);

INSERT INTO tb_categoria (nomeCategoria, descricao) VALUES ("Cursos de programação", "Cursos de JAVA,PHP,C#");
INSERT INTO tb_categoria (nomeCategoria, descricao) VALUES ("Cursos de segurança em tecnologia", "Cursos de Kali linux, scripts com nmap e outras ferramentas");
INSERT INTO tb_categoria (nomeCategoria, descricao) VALUES ("Cursos de redes de computadores", "Cursos arquitetura de redes, cabeamente estruturado e mais");

INSERT INTO tb_produtos (nome, valor, idCategoria) VALUES ("Curso Java Basico", 50, 1);
INSERT INTO tb_produtos (nome, valor, idCategoria) VALUES ("Curso Java Intermediario", 100, 1);
INSERT INTO tb_produtos (nome, valor, idCategoria) VALUES ("Curso Java avançado", 200, 1);
INSERT INTO tb_produtos (nome, valor, idCategoria) VALUES ("Curso Parrot Linux basico", 40, 2);
INSERT INTO tb_produtos (nome, valor, idCategoria) VALUES ("Curso PHP para criação de scripts", 400, 2);
INSERT INTO tb_produtos (nome, valor, idCategoria) VALUES ("Curso de Kali linux", 700, 2);
INSERT INTO tb_produtos (nome, valor, idCategoria) VALUES ("Curso de arquitetura de redes", 300, 3);
INSERT INTO tb_produtos (nome, valor, idCategoria) VALUES ("Curso de segurança em redes", 500, 3);


select * from tb_produtos where valor < 50;

select * from tb_produtos where valor between 3 and 60;

select * from tb_produtos where nome like '%j%';

select p.*, c.* from tb_produtos p inner join tb_categoria c on p.idCategoria = c.idCategoria;

select p.nome, c.nomeCategoria, c.descricao from tb_produtos p inner join tb_categoria c on p.idCategoria = c.idCategoria where c.nomeCategoria = 'Cursos de programação';

