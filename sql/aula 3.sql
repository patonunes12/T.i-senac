use aula_01;

create table clientes (
id int auto_increment primary key,
Nome varchar(100) not null
);

drop table clientes;
describe clientes;
select * from clientes;

insert into clientes (Nome) values
("Ana souza"),
("gustavo do arrocha"),
("jose henrique"),
("paulo gustavo"),
("Victor silva"),
("barbara silva"),
("wesley silva"),
("william gustavo jr"),
("Lucas Almeida"),
("Sophia Rincon"),
("Gabriel Castro"),
("Isabella Cavalcanti"),
("Mateus Rocha"),
("Helena Bittencourt"),
("Thiago Muniz"),
("Valentina Guimarães");


create table telefones (
id int auto_increment primary key,
numero varchar(20),
id_cliente int not null,
foreign key (id_cliente) references clientes(id));

describe telefones;
drop tables telefones;

insert into telefones values
(null, "(11) 98412-3456", 13),
(null, "(21) 97123-4567", 7),
(null, "(31) 96123-4567", 9),
(null, "(41) 95123-4567", 9),
(null, "(51) 94123-4567", 8),
(null, "(61) 93123-4567", 11),
(null, "(71) 92123-4567", 9),
(null, "(81) 91123-4567", 13),
(null, "(85) 98123-4567", 7),
(null, "(91) 97123-8901", 12),
(null, "(19) 96123-8901", 3),
(null, "(27) 95123-8901", 9),
(null, "(48) 94123-8901", 5),
(null, "(62) 93123-8901", 5),
(null, "(92) 92123-8901", 12);

create table email (
id int auto_increment primary key,
Endereço varchar(100) not null,
id_cliente int not null,
foreign key (id_cliente) references clientes(id));

drop table email;
describe email;
select * from email;

insert into email values
(null, "lucas.almeida@email.com", 14),
(null, "sophia.rincon@email.com", 6),
(null, "gabriel.castro@email.com", 12),
(null, "isabella.cavalcanti@email.com", 3),
(null, "mateus.rocha@email.com", 9),
(null, "helena.bittencourt@email.com", 12),
(null, "thiago.muniz@email.com", 5),
(null, "valentina.guimaraes@email.com", 1),
(null, "felipe.santos@email.com", 14),
(null, "mariana.costa@email.com", 8),
(null, "beatriz.oliveira@email.com", 2),
(null, "rodrigo.lima@email.com", 11),
(null, "larissa.souza@email.com", 6),
(null, "gustavo.ribeiro@email.com", 4),
(null, "camila.carvalho@email.com", 9);