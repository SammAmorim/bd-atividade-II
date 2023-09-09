create database agencia;
show databases;
use agencia;

create table Departamento(
departamentoid int primary key,
nomedepartamento varchar (255)
);

insert into Departamento (departamentoid, nomedepartamento) values
(1, "rh"),
(2, "contabilidade"),
(3, "marketing"),
(4, "tecnico de informatica"),
(5, "vendas");

create table funcionarios(
funcionarioid int primary key,
nome varchar (255),
cargo varchar (255),
salario int,
departamentoid int,
foreign key (departamentoid) references Departamento (departamentoid)
);

insert into funcionarios (funcionarioid, nome, cargo, salario, departamentoid) values
(1, "Samuel Amorim", "Vendedor", 5500.00, 1),
(2, "Anya Taylor Joy", "gerente", 9500.00, 2),
(3, "Pedro Pascal", "marketing", 6300.00, 3),
(4, "Taz Skylar", "TI", 7400.00, 4),
(5, "Mackenyu", "contabilidade", 3200.00, 5);

select * from Departamento;
select * from funcionarios;






