create database Sistema_Escolar;
use Sistema_Escolar;


create table Cursos(
id_curso int auto_increment primary key,
nome varchar(100),
carga_horaria varchar(100) not null
);

create table Alunos(
id_alunos int auto_increment primary key,
nome varchar(100) not null,
data_nascimento date,
email varchar(50) not null,
curso_preferido int,
foreign key (curso_preferido) references Cursos(id_curso)
);


create table Matriculas(
id_matriculas int auto_increment primary key,
id_alunos int,
id_curso int,
data_matriculas date,
foreign key (id_alunos) references Alunos(id_alunos),
foreign key (id_curso) references Cursos(id_curso)
);

insert into Cursos (nome, carga_horaria) VALUES
('Desenvolvimento Web Full Stack', '240 horas'),
('Ciência de Dados com Python', '180 horas'),
('Design UX/UI', '120 horas'),
('Administração de Banco de Dados', '160 horas'),
('Cybersegurança Básica', '100 horas'),
('Desenvolvimento de Jogos digitais', '200 horas'),
('Marketing Digital e SEO', '80 horas'),
('Banco de Dados SQL', '220 horas'),
('DevOps e Infraestrutura em Nuvem', '150 horas'),
('Gestão de Projetos de TI', '90 horas');

insert into Alunos (nome, data_nascimento, email, curso_preferido) VALUES
('Lucas Silva', '1998-04-12', 'lucas.silva@email.com', 1),
('Mariana Santos', '2001-08-25', 'mariana.santos@email.com', 2),
('Carlos Eduardo', '1995-11-03', 'carlos.eduardo@email.com', 3),
('Beatriz Costa', '2003-01-15', 'beatriz.costa@email.com', 4),
('Gabriel Oliveira', '1999-06-30', 'gabriel.oliveira@email.com', 5),
('Fernanda Lima', '2000-09-18', 'fernanda.lima@email.com', 6),
('Rafael Souza', '1997-02-22', 'rafael.souza@email.com', 7),
('Camila Rodrigues', '2002-12-05', 'camila.rodrigues@email.com', 8),
('Thiago Pereira', '1994-07-14', 'thiago.pereira@email.com', 9),
('Juliana Alves', '2004-03-09', 'juliana.alves@email.com', 10);

insert into Matriculas (id_alunos, id_curso, data_matriculas) VALUES
(1, 1, '2026-01-10'),
(2, 2, '2026-01-12'),
(3, 1, '2026-01-15'),
(4, 3, '2026-02-01'),
(5, 4, '2026-02-03'),
(6, 8, '2026-02-10'),
(7, 5, '2026-02-15'),
(8, 6, '2026-03-01'),
(9, 9, '2026-03-05'),
(10, 10, '2026-03-10');


insert into Cursos (nome, carga_horaria) values
('Inteligência Artificial', '280 Horas');
insert into Alunos (nome, data_nascimento, email, curso_preferido) values
('Carlos Silva', '2000-08-15', 'carlosdudu153@gmail.com', '11' );
insert into Matriculas (id_alunos, id_curso, data_matriculas) values
('11', '11', curdate());

update Cursos set carga_horaria='150 horas' where id_curso=8;
update Alunos set email='victorpromax@gmail.com' where id_alunos=7;
update Alunos set curso_preferido=2 where id_alunos=6;

delete from Matriculas where id_matriculas=4;
delete from Alunos where id_alunos=4;

alter table Alunos add telefones varchar(20);
alter table Cursos add nivel varchar(20);


select * from matriculas;
select * from Alunos;
select * from Cursos;

drop table Cursos;
drop table matriculas;
drop table Alunos;
drop database sistema_escolar;





