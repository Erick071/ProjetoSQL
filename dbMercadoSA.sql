drop database dbMercadoSA;

create database dbMercadoSA;

use dbMercadoSA;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
cpf char(14) not null unique,
salario decimal(9,2) default 0 check(salario >= 0),
sexo char(1) default 'F'check (sexo in ('F','M')),
primary key(codFunc)
);

create table tbClientes(
codCli int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
telCel char(10),
primary key(codCli)
);

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
cnpj char(18) not null unique,
primary key(codForn)

);

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc) references tbFuncionarios(codFunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
dataEntrada date,
horaEntrada time,
quantidade decimal(9,2),
valorUnit decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn)
);

create table tbVenda(
codVenda int not null auto_increment,
codUsu int not null,
codCli int not null,
codProd int not null,
dataVenda date,
quantidade decimal(9,2),
valorTotal decimal(9,2),
primary key(codVenda),
foreign key (codUsu) references tbUsuarios(codUsu),
foreign key (codCli) references tbClientes(codCli),
foreign key (codProd) references tbProdutos(codProd)
);

desc tbFuncionarios;
desc tbClientes;
desc tbFornecedores;
desc tbUsuarios;
desc tbProdutos;
desc tbVenda;

-- inserir registros nas tabelas
insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values('Pedro Antunes da Cunha','Pedro.Acunha@hotmail.com','123.852.269-88',1500.00,'M');

insert into tbClientes(nome,email,telCel)
values('Luciano Mendes','Luciano.mendes@gmail.com','99554-7895');

insert into tbClientes(nome,email,telCel)
values('Karma kabani','Karma.kabani@gmail.com','55643-55923');

insert into tbClientes(nome,email,telCel)
values('joao vitor','joao.vitor@gmail.com','33257-5592');

insert into tbFornecedores(nome,email,cnpj)
values('CasasBahia','Casas.Bahia@gmail.com','13.929.711/0001-97');

insert into tbFornecedores(nome,email,cnpj)
values('laVerduras','la.verduras@gmail.com','12.539.755/0001-99');


insert into tbUsuarios(nome,senha,codFunc)
values('Pedro Antunes','P123',1);

insert into tbProdutos(descricao,dataEntrada,horaEntrada,quantidade,valorUnit,codForn)
values ('Banana','2023/08/10','16:53:53',10,5.50,2);

insert into tbProdutos(descricao,dataEntrada,horaEntrada,quantidade,valorUnit,codForn)
values ('Morango','2023/09/11','16:53:53',100,5.35,2);

insert into tbProdutos(descricao,dataEntrada,horaEntrada,quantidade,valorUnit,codForn)
values ('bicicleta','2023/09/11','16:53:53',100,5.35,2);

insert into tbVenda(codUsu,codCli,codProd,dataVenda,quantidade,valorTotal)
values (1,1,2,'2023/08/10',10,50.00);

insert into tbVenda(codUsu,codCli,codProd,dataVenda,quantidade,valorTotal)
values (1,2,1,'2023/08/10',20,30.00);

insert into tbVenda(codUsu,codCli,codProd,dataVenda,quantidade,valorTotal)
values (1,2,1,'2023/08/10',10,30.00);

desc tbFuncionarios;
desc tbClientes;
desc tbFornecedores;
desc tbUsuarios;
desc tbProdutos;
desc tbVenda;

select * from tbFuncionarios;
select * from tbClientes;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVenda;