create database exercicio_1;
show databases;
use exercicio_1;

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


insert into alunos (nome, data_nasc, email, telefone) values
('Ana Silva', '2000-05-15', 'ana.silva@email.com', '11999998888'),
('Bruno Santos', '1999-08-22', 'bruno.santos@email.com', '11999997777'),
('Carlos Oliveira', '2001-01-10', 'carlos.oli@email.com', '11999996666'),
('Daniela Lima', '2002-12-05', 'daniela.lima@email.com', '11999995555'),
('Eduardo Costa', '1998-03-30', 'eduardo.costa@email.com', '11999994444'),
('Fernanda Souza', '2000-07-19', 'fernanda.s@email.com', '11999993333'),
('Gabriel Almeida', '2001-09-25', 'gabriel.a@email.com', '11999992222'),
('Amanda Rocha', '1999-11-12', 'amanda.rocha@email.com', '11999991111'),
('Igor Ferreira', '2002-04-02', 'igor.f@email.com', '11999990000'),
('Juliana Ribeiro', '2000-10-08', 'juliana.r@email.com', '11988887777');

insert into produtos (nome, preco, qnt_est, categoria) values
('Placa de Vídeo RTX 4060', 2100.00, 8, 'Hardware'),
('Processador Ryzen 7', 1450.00, 12, 'Hardware'),
('Memória RAM 16GB DDR4', 280.00, 40, 'Hardware'),
('SSD NVMe 1TB', 390.00, 25, 'Armazenamento'),
('Fonte Corsair 650W', 420.00, 15, 'Energia'),
('Placa-Mãe Asus B550', 850.00, 10, 'Hardware'),
('Gabinete ATX RGB', 320.00, 18, 'Gabinetes'),
('Water Cooler 240mm', 480.00, 7, 'Refrigeração'),
('HD Externo 2TB', 450.00, 14, 'Armazenamento'),
('Pasta Térmica Prata', 45.00, 50, 'Acessórios');

insert into chamados (nome, desc_problema, data_abertura, local_ocorrido, status_ocorrencia) values
('Formatação e Limpeza', 'Cliente solicita backup dos arquivos e reinstalação do Windows 11.', '2026-09-10', 'Bancada 1', 'Aberto'),
('Troca de Tela', 'Notebook caiu e a tela LED está trincada.', '2026-09-11', 'Bancada 2', 'Em andamento'),
('PC não liga', 'Computador de cliente não dá sinal de energia, suspeita de fonte queimada.', '2026-09-11', 'Laboratório', 'Aberto'),
('Recuperação de Dados', 'HD externo parou de reconhecer e faz barulho de estalo.', '2026-09-12', 'Sala Técnica', 'Aberto'),
('Upgrade de Memória', 'Instalação de mais um módulo de 8GB de RAM no notebook.', '2026-09-12', 'Bancada 1', 'Concluído'),
('Superaquecimento', 'Console desligando sozinho após 10 minutos de jogo pesado.', '2026-09-13', 'Bancada 3', 'Aberto'),
('Remoção de Vírus', 'Máquina travando e abrindo várias janelas de propaganda sozinhas.', '2026-09-13', 'Bancada 2', 'Em andamento'),
('Troca de Conector', 'Smartphone não carrega, conector tipo-C visivelmente danificado.', '2026-09-14', 'Bancada 3', 'Aberto'),
('Configuração de Roteador', 'Cliente comprou equipamento novo e precisa configurar rede mesh.', '2026-09-14', 'Atendimento', 'Concluído'),
('Montagem de Computador', 'Montagem completa de PC gamer com peças trazidas pelo cliente.', '2026-09-14', 'Bancada 1', 'Aberto');

select * from alunos;
select * from produtos;
select * from chamados;

alter table alunos add nome_disciplina varchar(50);

insert into alunos (nome, data_nasc, email, telefone, nome_disciplina) values
('Lucas Mendes', '2001-06-14', 'lucas.mendes@email.com', '11977776666', 'Banco de Dados'),
('Mariana Costa', '2000-02-28', 'mariana.costa@email.com', '11966665555', 'Programação Web'),
('Pedro Henrique', '2002-08-17', 'pedro.h@email.com', '11955554444', 'Estrutura de Dados');

alter table chamados drop column local_ocora;

alter table alunos add column nome_da_disciplina varchar(50);














