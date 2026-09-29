create database aula;
show databases;
use aula;

-- Questão 1
create table Alunos (
id_aluno int auto_increment primary key,
nome varchar(100),
data_nasc date,
email varchar(100) not null,
telefone varchar(15)

);

-- Questão 2
create table Produtos (
id_produto int auto_increment ,
primary key (id_produto),
nome varchar(80),
preco decimal(10,2),
qnt_est int not null default 0,
categoria varchar(50)
);

-- Questão 3
create table Chamados(
id_chamado int auto_increment primary key,
nome varchar(50),
desc_problema varchar(150),
data_abertura date not null,
local_ocorrido varchar(50),
status_ocorrencia varchar(20)

);

show tables;
-- Questão 1
describe Alunos;
-- Questão 2
describe Produtos;
-- Questão 3
describe Chamados;






