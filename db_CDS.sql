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
nome_Grav varchar(50) not unique,
primary key(cod_grav)
);

create table tbCategorias(
cod_Cat int not null auto_increment,
nome_Cat varchar(50) not unique,
primary key(cod_Cat)
);

create table tbEstado(
cod_est int not null auto_increment,
nome_est varchar(50) not unique,
primary key(cod_est)
);
create table tbCidade(
cod_Cid int not null auto_increment,
sigla_est char(2) not null,
primary key(cod_Cid),
foreign key(sigla_est) references sigla_estado(sigla_est)
);

create table tbClientes(
cod_cli int not null auto_increment,
cod_Cid int not null auto_increment,
nome_conj varchar(50) not null,
renda_conj decimal(9,2) not null check >= 0 default 0,
sexo_conj char(1) not null default 'F' check (sexo_conj in ('F','M')),
primary key(cod_cli),
foreign key(cod_Cid) references tbCidade(cod_Cid) 
);


