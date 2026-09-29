-- comentario uma linha--
/*
varias linhas
*/
create database aula_01;
use aula_01;
show databases;
drop database aula_01;
show tables;
create table pessoa (
id_pessoa int auto_increment primary key,
nome varchar(100) not null
);

drop table pessoa;

describe pessoa;