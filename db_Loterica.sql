--excluir DB
drop database dbLoterica;
-- criar DB
create database dbLoterica;

-- criar tabela jogos
create table tbJogos(
codProd int,
descricao varchar(100),
quantidade decimal(9,2),
dataEntrada date,
valorUnit decimal(9,2)
);

-- visualizando a estrutura da tabela
desc tbJogos;
 
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(1,'LotoMania',100,'2023/07/01',5.50);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(2,'LotoFacil',100,'2023/07/02',5.50);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(3,'Quina',100,'2023/07/10',7.70);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(4,'Mega-sena',100,'2023/07/15',9.99);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(5,'Dupla sena',100,'2023/07/20',9.99);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(6,'Time mania',100,'2023/08/25',5.50);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(7,'super sete',100,'2023/07/27',7.70);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(8,'dia de sorte',100,'2023/08/28',10.99);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(9,'+Milionaria',100,'2023/07/29',9.99);
insert into tbJogos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(10,'Loteca',100,'2023/07/30',5.50);

-- visualizar os registros inseridos
select * from tbJogos;

-- Alterando  registros das tabelas
update tbJogos set descricao = 'Dupla sena', valorUnit = 9.99 where codProd = 6;
update tbJogos set descricao = 'Time mania', valorUnit = 5.50 where codProd = 5; 

-- Visualizar registros alterados
select * from tbJogos

-- Apagar registros das tabelas 
delete from tbJogos from codProd = 7;
delete from tbJogos from codProd = 9;

-- Visualizar registros excluidos
select * from tbJogos;