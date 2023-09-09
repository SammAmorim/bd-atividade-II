create database jornalismo;
show databases;
use jornalismo;

create table Artigos(
Artigoid int primary key,
titulo varchar(255), 
conteudo varchar(255),
datapublicacao date
);

insert into Artigos (Artigoid, titulo, conteudo, datapublicacao) values 
(1,  "O declínio de um homem.", "Neste artigo, vamos falar  sobre o vazio humano.", '2023-02-03'),
(2,  "A arquitetura de Florença", "A genialidade da engenharia!!", '2023-05-11'),
(3, "Aprendendo a desistir." , "Como saber a hora de parar", '2022-07-08'),
(4, "Vamos treinar!", "Os benefícios da academia!", '2023-05-02'),
(5, "O sexo é superestimado?" , "Sexo é vida!", '2023-07-26');


insert into Comentarios (Comentarioid, Artigoid, Autor, Texto, datacomentario) values
(1, 1, "Desconhecido", "Viver não vale a pena, de fato.", '2023-02-03'),
(2, 2, "Cristiano Ronaldo", "Incrível!", '2023-05-11'),
(3, 3, "Enzo Fernández", "Massa.", '2022-07-08'),
(4, 4, "Gavi", "Vamos treinar!!", '2023-05-02'),
(5, 5, "Darwin Núñez", "Belo texto." ,'2023-07-26');

drop table Comentarios;
create table Comentarios (
Comentarioid int primary key,
Artigoid int,
Autor varchar (255),
Texto varchar (255),
datacomentario date,
foreign key(Artigoid) references Artigos (Artigoid)
);
select * from Artigos;
select * from Comentarios;
drop table Artigos;