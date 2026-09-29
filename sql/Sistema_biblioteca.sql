create database sistema_de_biblioteca;
use sistema_de_biblioteca;

create table autores(
    id_autor int auto_increment primary key,
    nome varchar(100)
);

create table livros(
    id_livros int auto_increment primary key,
    titulo varchar (100),
    ano_publicacao date,
    id_autor int,
    foreign key (id_autor) references autores(id_autor)
);

create table emprestimos(
    id_extrato int auto_increment primary key,
    id_livros int,
    nome_usuario varchar (100),
    data_emprestimo date,
    data_devolucao date,
    foreign key (id_livros) references livros(id_livros)
);

insert into autores (nome) values
('antoninho foguete'),
('clarice lispector'),
('george orwell'),
('j.k. rowling'),
('gabriel garcía márquez'),
('j.r.r. tolkien'),
('agatha christie'),
('josé saramago'),
('stephen king'),
('virginia woolf'),
('machado de assis');

insert into livros (titulo, ano_publicacao, id_autor) values
('viagem a lua em 2 hours', '1599-01-21', 1),
('a hora da estrela', '1977-01-01', 2),
('1984', '1949-01-01', 3),
('harry potter e a pedra filosofal', '1997-01-01', 4),
('cem anos de solidão', '1967-01-01', 5),
('o senhor dos anéis', '1954-01-01', 6),
('e não sobrou nenhum', '1939-01-01', 7),
('ensaio sobre a cegueira', '1995-01-01', 8),
('o iluminado', '1977-01-01', 9),
('o faroeste', '1925-01-01', 10),
('dom cassmurro', '1899-02-01', 11);

insert into emprestimos (id_livros, nome_usuario, data_emprestimo, data_devolucao) values
(1, 'lucas silva', '2026-03-01', '2026-03-15'),
(2, 'mariana santos', '2026-03-02', '2026-03-16'),
(3, 'carlos eduardo', '2026-03-03', '2026-03-17'),
(4, 'beatriz costa', '2026-03-04', '2026-03-18'),
(5, 'gabriel oliveira', '2026-03-05', '2026-03-19'),
(6, 'fernanda lima', '2026-03-06', '2026-03-20'),
(7, 'rafael souza', '2026-03-07', '2026-03-21'),
(8, 'camila rodrigues', '2026-03-08', '2026-03-22'),
(9, 'thiago pereira', '2026-03-09', '2026-03-23'),
(10, 'juliana alves', '2026-03-10', '2026-03-24'),
(11, 'lucas augusto', '2026-02-01', '2026-02-15');

update livros set ano_publicacao='1800-01-03' where id_livros=5;
update emprestimos set data_devolucao='2026-04-20' where id_extrato=9;
update autores set nome='vitinho da silva' where id_autor=9;

delete from emprestimos where id_extrato=10;
delete from livros where id_livros=10;

alter table livros add editora varchar(100);
alter table autores add nacionalidade varchar(60);

select * from autores;
select nome from autores;
select * from livros;
select * from livros where ano_publicacao > '2015-12-31';
select * from emprestimos;
select * from emprestimos order by data_emprestimo asc;
select * from livros order by titulo asc;
select * from livros limit 5;
select * from livros where ano_publicacao between '2000-01-01' and '2020-12-31';
select * from autores where nome like 'p%';
