CREATE DATABASE Empresa;
USE Empresa;
SHOW DATABASES;
drop database Empresa;

CREATE TABLE Clientes (

clienteid int primary key,
nome varchar (255) NOT NULL,
email varchar (255) NOT NULL,
telefone varchar (22) NOT NULL
);

insert into Clientes(clienteid, nome, email, telefone) values
(1, "Samuel Amorim", "samuel@gmail.com", "71 987721154"),
(2, "Ryan Gosling", "ryangosling@gmail.com", "71 987256525"),
(3, "Nicolas Cage", "nicolascage@gmail.com", "71 985525656"),
(4, "Natalie Portman", "natalie@gmail.com", "71 988565655"),
(5, "Lionel Messi", "messi@gmail.com", "71 985220656");

create table Pedidos (

pedidoid int primary key,
clienteid int not null,
datapedido date not null,
valortotal decimal (10,2) not null,
foreign key (clienteid) references Clientes (clienteid)
);

insert into Pedidos (pedidoid, clienteid, datapedido, valortotal) values
(1, 1, '2023-03-05', 170.25),
(2, 2, '2022-04-07', 410.10),
(3, 3, '2023-03-06', 340.25),
(4, 4, '2023-05-17', 460.20),
(5, 5, '2023-05-23', 250.10);

select * from clientes;
select * from pedidos;