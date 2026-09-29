create database loja_online;
use loja_online;

create table clientes (
    id_cliente int auto_increment primary key,
    nome varchar(100),
    email varchar(100)
);

create table pedidos (
    id_pedido int auto_increment primary key,
    id_cliente int,
    data_pedido date,
    foreign key (id_cliente) references clientes(id_cliente)
);

create table itenspedido (
    id_itens int auto_increment primary key,
    id_pedido int,
    nome_produto varchar(100),
    quantidade varchar(100),
    preco_unitario decimal(10, 2) not null,
    foreign key (id_pedido) references pedidos(id_pedido)
);

insert into clientes (nome, email) values
('ana silva', 'ana.silva@email.com'),
('bruno santos', 'bruno.santos@email.com'),
('carla souza', 'carla.souza@email.com'),
('daniel oliveira', 'daniel.oliveira@email.com'),
('eduarda lima', 'eduarda.lima@email.com'),
('felipe costa', 'felipe.costa@email.com'),
('gabriela rocha', 'gabriela.rocha@email.com'),
('henrique martins', 'henrique.martins@email.com'),
('isabela fernandes', 'isabela.fernandes@email.com'),
('joão pedro', 'joao.pedro@email.com'),
('fernanda lima', 'fefelima164@gmail.com');

insert into pedidos (id_cliente, data_pedido) values
(1, '2026-03-01'),
(2, '2026-03-02'),
(3, '2026-03-03'),
(4, '2026-03-04'),
(5, '2026-03-05'),
(6, '2026-03-06'),
(7, '2026-03-07'),
(8, '2026-03-08'),
(9, '2026-03-09'),
(10, '2026-03-10'),
(11, curdate());

insert into itenspedido (id_pedido, nome_produto, quantidade, preco_unitario) values
(1, 'notebook', '1', '3500'),
(2, 'mouse sem fio', '2', '80'),
(3, 'teclado mecânico', '1', '250'),
(4, 'monitor 24 polegadas', '1', '900'),
(5, 'cadeira ergonômica', '1', '1200'),
(6, 'fone de ouvido bluetooth', '2', '150'),
(7, 'webcam full hd', '1', '200'),
(8, 'mesa para escritório', '1', '450'),
(9, 'suporte para notebook', '3', '60'),
(10, 'hd externo 1tb', '1', '300'),
(11, 'mouse gamer', '2', '120.00');

update clientes set email='efacochuver85r@gmail.com' where id_cliente=7;
update itenspedido set preco_unitario= preco_unitario * 1.10 where id_itens > 0;
update itenspedido set quantidade=5 where id_itens=5;

delete from itenspedido where id_itens=9;
delete from pedidos where id_pedido=9;

alter table clientes add telefone varchar(30);

select nome, email from clientes;
select id_pedido, data_pedido from pedidos;
select nome_produto from itenspedido;
select * from itenspedido where quantidade > 5;
select nome_produto from itenspedido order by nome_produto asc;
select * from itenspedido where preco_unitario > 100.00;
select * from itenspedido limit 5;
select * from itenspedido where preco_unitario between 50.00 and 200.00;
select * from clientes where nome like 'a%';
select * from itenspedido where nome_produto like '%gamer%';
