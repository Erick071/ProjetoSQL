drop database db_CDS;

create database db_CDS;

use db_CDS;

create table tbArtista(
cod_Art int not null auto_increment,
nome_Art varchar(100) not null,  
primary key(cod_Art)
);

create table tbGravadora(
cod_Grav int not null auto_increment,
nome_Grav varchar(50) not null,
primary key(cod_grav)
);

create table tbCategorias(
cod_Cat int not null auto_increment,
nome_Cat varchar(50) not null,
primary key(cod_Cat)
);

create table tbEstado(
sigla_est char(2) not null,
nome_est varchar(50) not null,
primary key(sigla_est)
);

create table tbCidade(
cod_Cid int not null auto_increment,
sigla_est char(2) not null,
nome_Cid varchar(50) not null,
primary key(cod_Cid),
foreign key(sigla_est) references tbEstado(sigla_est)
);

create table tbClientes(
cod_cli int not null auto_increment,
cod_Cid int not null,
nome_cli varchar(50) not null,
end_cli varchar(100) not null,
renda_cli decimal(9,2) not null default 0 check(renda_cli >= 0),
sexo_cli char(1) not null default 'F' check(sexo_cli in ('F','M')),
primary key(cod_cli),
foreign key(cod_Cid) references tbCidade(cod_Cid) 
);

create table tbConjuge(
cod_conj int not null auto_increment,
cod_cli int not null,
nome_conj varchar(50) not null,
renda_conj decimal(9,2) not null default 0 check(renda_conj >= 0),
sexo_conj char(1) not null default 'F' check(sexo_conj in('F','M')),
primary key(cod_conj),
foreign key(cod_cli) references tbClientes(cod_cli)
);

create table tbFuncionarios(
cod_func int not null auto_increment,
nome_func varchar(50) not null,
end_func varchar(100) not null,
sal_func decimal(9,2) not null default 0 check(sal_func >= 0),
sexo_func char(1) not null default 'F' check(sexo_func in('F','M')),
primary key(cod_func)
);

create table tbDependentes(
cod_dep int not null auto_increment,
cod_func int not null,
nome_dep varchar(100) not null,
sexo_dep char(1) not null default 'F' check(sexo_dep in ('F','M')),
primary key(cod_dep),
foreign key(cod_func) references tbFuncionarios(cod_func)
);

create table tbTitulos(
cod_tit int not null auto_increment,
cod_Cat int not null,
cod_Grav int not null,
nome_cd varchar(50) not null unique,
val_cd decimal(9,2) not null check(val_cd > 0),
qtd_estq int not null check(qtd_estq >= 0),
primary key(cod_tit),
foreign key(cod_Cat) references tbCategorias(cod_Cat),
foreign key(cod_Grav) references tbGravadora(cod_Grav)
);

create table tbPedidos(
num_ped int not null auto_increment,
cod_cli int not null,
cod_func int not null,
data_ped datetime not null,
val_ped decimal(9,2) not null default 0 check(val_ped >= 0),
primary key(num_ped),
foreign key(cod_cli) references tbClientes(cod_cli),
foreign key(cod_func) references tbFuncionarios(cod_func)
);

create table tbTitulos_Pedidos(
num_ped int not null,
cod_tit int not null,
qtd_cd int not null check(qtd_cd >= 1),
val_cd decimal(9,2) not null check(val_cd >= 0),
foreign key(num_ped) references tbPedidos(num_ped),
foreign key(cod_tit) references tbTitulos(cod_tit) 
);

create table tbTitulos_Artista(
cod_tit int not null,
cod_Art int not null,
foreign key(cod_tit) references tbTitulos(cod_tit),
foreign key(cod_Art) references tbArtista(cod_Art)
);

insert into tbArtista(cod_Art,nome_Art)values(1,'Marisa monte');
insert into tbArtista(cod_Art,nome_Art)values(2,'Gilberto gil');
insert into tbArtista(cod_Art,nome_Art)values(3,'Caetano veloso');	
insert into tbArtista(cod_Art,nome_Art)values(4,'Milton nascimento');
insert into tbArtista(cod_Art,nome_Art)values(5,'Legião urbano');
insert into tbArtista(cod_Art,nome_Art)values(6,'the beatles');
insert into tbArtista(cod_Art,nome_Art)values(7,'Rita lee');
select * from tbArtista order by cod_Art;

insert into tbGravadora(cod_Grav,nome_Grav)values(1,'polygram');
insert into tbGravadora(cod_Grav,nome_Grav)values(2,'emi');
insert into tbGravadora(cod_Grav,nome_Grav)values(3,'som livre');
insert into tbGravadora(cod_Grav,nome_Grav)values(4,'som music');
select * from tbGravadora order by cod_Grav;

insert into tbCategorias(cod_Cat,nome_Cat)values(1,'mpb');
insert into tbCategorias(cod_Cat,nome_Cat)values(2,'trilha sonora');
insert into tbCategorias(cod_Cat,nome_Cat)values(3,'rock internacional');
insert into tbCategorias(cod_Cat,nome_Cat)values(4,'rock nacional');
select * from tbCategorias order by cod_Cat;

insert into tbEstado(sigla_est,nome_est)values('sp','sao paulo');
insert into tbEstado(sigla_est,nome_est)values('mg','minas gerais');
insert into tbEstado(sigla_est,nome_est)values('rj','rio de janeiro');
insert into tbEstado(sigla_est,nome_est)values('es','espirito santo');

select * from tbEstado order by sigla_est;

insert into tbCidade(cod_Cid,sigla_est,nome_Cid)values(1,'sp','sao paulo');
insert into tbCidade(cod_Cid,sigla_est,nome_Cid)values(2,'sp','sorocaba');
insert into tbCidade(cod_Cid,sigla_est,nome_Cid)values(3,'sp','jundiai');
insert into tbCidade(cod_Cid,sigla_est,nome_Cid)values(4,'sp','americana');
insert into tbCidade(cod_Cid,sigla_est,nome_Cid)values(5,'sp','araraquara');
insert into tbCidade(cod_Cid,sigla_est,nome_Cid)values(6,'mg','ouro preto');
insert into tbCidade(cod_Cid,sigla_est,nome_Cid)values(7,'es','cachoeira do itapemirim');
select * from tbCidade order by cod_Cid;

insert into tbClientes(cod_cli,cod_Cid,nome_cli,end_cli,renda_cli,sexo_cli)values(1,1,'jose nogueira','rua A',1500.00,'M');
	






















