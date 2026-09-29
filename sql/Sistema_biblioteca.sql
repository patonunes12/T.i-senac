create database Sistema_de_Biblioteca;
use Sistema_de_Biblioteca;

create table Autores(
id_autor int auto_increment primary key,
nome varchar(100)
);

create table Livros(
id_livros int auto_increment primary key,
titulo varchar (100),
ano_publicacao date,
id_autor int,
foreign key (id_autor) references Autores(id_autor)
);

create table Emprestimos(
id_emprestimo int auto_increment primary key,
id_livros int,
nome_usuario varchar (100),
data_emprestimo date,
data_devolucao date,
foreign key (id_livros) references Livros(id_livros)
);

INSERT INTO Autores (nome) VALUES
('Antoninho foguete'),
('Clarice Lispector'),
('George Orwell'),
('J.K. Rowling'),
('Gabriel García Márquez'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('José Saramago'),
('Stephen King'),
('Virginia Woolf');

INSERT INTO Livros (titulo, ano_publicacao, id_autor) VALUES
('viagem a lua em 2 horas', '1599-01-21', 1),
('A Hora da Estrela', '1977-01-01', 2),
('1984', '1949-01-01', 3),
('Harry Potter e a Pedra Filosofal', '1997-01-01', 4),
('Cem Anos de Solidão', '1967-01-01', 5),
('O Senhor dos Anéis', '1954-01-01', 6),
('E Não Sobrou Nenhum', '1939-01-01', 7),
('Ensaio sobre a Cegueira', '1995-01-01', 8),
('O Iluminado', '1977-01-01', 9),
('O Faroeste', '1925-01-01', 10);

INSERT INTO Emprestimos (id_livros, nome_usuario, data_emprestimo, data_devolucao) VALUES
(1, 'Lucas Silva', '2026-03-01', '2026-03-15'),
(2, 'Mariana Santos', '2026-03-02', '2026-03-16'),
(3, 'Carlos Eduardo', '2026-03-03', '2026-03-17'),
(4, 'Beatriz Costa', '2026-03-04', '2026-03-18'),
(5, 'Gabriel Oliveira', '2026-03-05', '2026-03-19'),
(6, 'Fernanda Lima', '2026-03-06', '2026-03-20'),
(7, 'Rafael Souza', '2026-03-07', '2026-03-21'),
(8, 'Camila Rodrigues', '2026-03-08', '2026-03-22'),
(9, 'Thiago Pereira', '2026-03-09', '2026-03-23'),
(10, 'Juliana Alves', '2026-03-10', '2026-03-24');

INSERT INTO Autores (nome) VALUES
('Machado de Assis');
INSERT INTO Livros (titulo, ano_publicacao, id_autor) VALUES
('Dom Cassmurro', '1899-02-01', '11' );
INSERT INTO Emprestimos (id_livros, nome_usuario, data_emprestimo, data_devolucao) VALUES
(11, 'Lucas augusto', '2026-02-01', '2026-02-15');

update Livros set ano_publicacao='1800-01-03' where id_livros=5;
update Emprestimos set data_devolucao='2026-04-20' where id_emprestimo=9;
update Autores set nome='vitinho da silva' where id_autor=9;

delete from Emprestimos where id_emprestimo=10;
delete from Livros where id_livros=10;

alter table Livros add editora varchar(100);
alter table Autores add nacionalidade varchar(60);


select * from Autores;
select * from Livros;
select * from Emprestimos;

drop table Autores;
drop table Livros;
drop table Emprestimos;

drop database sistema_de_biblioteca
    
    