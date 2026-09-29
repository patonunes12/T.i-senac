create database sistema_escolar;
use sistema_escolar;

create table cursos(
    id_curso int auto_increment primary key,
    nome varchar(100),
    carga_horaria varchar(100) not null
);

create table alunos(
    id_alunos int auto_increment primary key,
    nome varchar(100) not null,
    data_nascimento date,
    email varchar(50) not null,
    curso_preferido int,
    foreign key (curso_preferido) references cursos(id_curso)
);

create table matriculas(
    id_matriculas int auto_increment primary key,
    id_alunos int,
    id_curso int,
    data_matriculas date,
    foreign key (id_alunos) references alunos(id_alunos),
    foreign key (id_curso) references cursos(id_curso)
);

insert into cursos (nome, carga_horaria) values
('desenvolvimento web full stack', '240 horas'),
('ciência de dados com python', '180 horas'),
('design ux/ui', '120 horas'),
('administração de banco de dados', '160 horas'),
('cybersegurança básica', '100 horas'),
('desenvolvimento de jogos digitais', '200 horas'),
('marketing digital e seo', '80 horas'),
('banco de dados sql', '220 horas'),
('devops e infraestrutura em nuvem', '150 horas'),
('gestão de projetos de ti', '90 horas'),
('inteligência artificial', '280 horas');

insert into alunos (nome, data_nascimento, email, curso_preferido) values
('lucas silva', '1998-04-12', 'lucas.silva@email.com', 1),
('mariana santos', '2001-08-25', 'mariana.santos@email.com', 2),
('carlos eduardo', '1995-11-03', 'carlos.eduardo@email.com', 3),
('beatriz costa', '2003-01-15', 'beatriz.costa@email.com', 4),
('gabriel oliveira', '1999-06-30', 'gabriel.oliveira@email.com', 5),
('fernanda lima', '2000-09-18', 'fernanda.lima@email.com', 6),
('rafael souza', '1997-02-22', 'rafael.souza@email.com', 7),
('camila rodrigues', '2002-12-05', 'camila.rodrigues@email.com', 8),
('thiago pereira', '1994-07-14', 'thiago.pereira@email.com', 9),
('juliana alves', '2004-03-09', 'juliana.alves@email.com', 10),
('carlos silva', '2000-08-15', 'carlosdudu153@gmail.com', 11);

insert into matriculas (id_alunos, id_curso, data_matriculas) values
(1, 1, '2026-01-10'),
(2, 2, '2026-01-12'),
(3, 1, '2026-01-15'),
(4, 3, '2026-02-01'),
(5, 4, '2026-02-03'),
(6, 8, '2026-02-10'),
(7, 5, '2026-02-15'),
(8, 6, '2026-03-01'),
(9, 9, '2026-03-05'),
(10, 10, '2026-03-10'),
(11, 11, curdate());

update cursos set carga_horaria='150 horas' where id_curso=8;
update alunos set email='victorpromax@gmail.com' where id_alunos=7;
update alunos set curso_preferido=2 where id_alunos=6;

delete from matriculas where id_matriculas=4;
delete from alunos where id_alunos=4;

alter table alunos add telefones varchar(20);
alter table cursos add nivel varchar(20);

select nome, email from alunos;
select nome, data_nascimento from alunos;
select nome, carga_horaria from cursos;
select * from cursos where carga_horaria > 200;
select * from alunos where curso_preferido = 3;
select * from alunos order by nome asc;
select * from cursos order by carga_horaria desc;
select * from matriculas limit 3;
select * from alunos where data_nascimento between '1990-01-01' and '2000-12-31';
select * from alunos where nome like 'm%';

