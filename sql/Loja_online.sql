create database Loja_Online;
use Loja_Online;

create table Clientes (
id_cliente int auto_increment primary key,
nome varchar(100),
email varchar(100)
);

create table Pedidos (
id_pedido int auto_increment primary key,
id_cliente int,
data_pedido date,
foreign key (id_cliente) references Clientes(id_cliente)
);

create table Itenspedido (
id_itens int auto_increment primary key,
id_pedido int,
nome_produto varchar(100),
quantidade varchar(100),
preco_unitario decimal(10, 2) not null,
foreign key (id_pedido) references Pedidos(id_pedido)
);

INSERT INTO Clientes (nome, email) VALUES
('Ana Silva', 'ana.silva@email.com'),
('Bruno Santos', 'bruno.santos@email.com'),
('Carla Souza', 'carla.souza@email.com'),
('Daniel Oliveira', 'daniel.oliveira@email.com'),
('Eduarda Lima', 'eduarda.lima@email.com'),
('Felipe Costa', 'felipe.costa@email.com'),
('Gabriela Rocha', 'gabriela.rocha@email.com'),
('Henrique Martins', 'henrique.martins@email.com'),
('Isabela Fernandes', 'isabela.fernandes@email.com'),
('João Pedro', 'joao.pedro@email.com');

INSERT INTO Pedidos (id_cliente, data_pedido) VALUES
(1, '2026-03-01'),
(2, '2026-03-02'),
(3, '2026-03-03'),
(4, '2026-03-04'),
(5, '2026-03-05'),
(6, '2026-03-06'),
(7, '2026-03-07'),
(8, '2026-03-08'),
(9, '2026-03-09'),
(10, '2026-03-10');

INSERT INTO Itenspedido (id_pedido, nome_produto, quantidade, preco_unitario) VALUES
(1, 'Notebook', '1', '3500'),
(2, 'Mouse Sem Fio', '2', '80'),
(3, 'Teclado Mecânico', '1', '250'),
(4, 'Monitor 24 polegadas', '1', '900'),
(5, 'Cadeira Ergonômica', '1', '1200'),
(6, 'Fone de Ouvido Bluetooth', '2', '150'),
(7, 'Webcam Full HD', '1', '200'),
(8, 'Mesa para Escritório', '1', '450'),
(9, 'Suporte para Notebook', '3', '60'),
(10, 'HD Externo 1TB', '1', '300');


insert into Clientes (nome, email) values
('Fernanda Lima', 'fefelima164@gmail.com');
insert into Pedidos (id_cliente, data_pedido) VALUES
('11', curdate());
insert into Itenspedido (id_pedido, nome_produto, quantidade, preco_unitario) values
(11, 'Mouser gamer', '2', '120.00');

update Clientes set email='Efacochuver85r@gmail.com' where id_cliente=7;
update Itenspedido set preco_unitario= preco_unitario * 1.10 where id_itens > 0;
update Itenspedido set quantidade=5 where id_itens=5;

delete from Itenspedido where id_itens=9;
delete from pedidos where id_pedido=9;

alter table clientes add telefone varchar(30);

select * from Clientes;
select * from Pedidos;
select * from Itenspedido;

drop table Clientes;
drop table Pedidos;
drop table Itenspedido;

drop database loja_online;

