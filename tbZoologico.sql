-- Erick Henrique Soares de souza 
-- Apagar o banco de dados
drop database dbZoologico;

-- Criar o banco de dados
create database dbZoologico;

-- Acessando o banco de dados
show databases;


-- Acessando o banco de dados

use dbZoologico;

-- Criando as tabelas no banco de dados
create table tbAnimais(
codigo int,
tipo char(15),
nome char(30),
idade int,
valor decimal(10,2)
);

-- Visualizando as tabelas
show databases;

insert into tbAnimais(codigo,tipo,nome,idade,valor)values(1,'cachorro','Djudi',3,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(2,'cachorro','Sula',5,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(3,'cachorro','Sarina',7,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(4,'gato','Pipa',2,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(5,'gato','Sarangue',2,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(6,'gato','Clarences',1,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(7,'coruja','Agnes',0,700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(8,'coruja','Arabela',1,700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(9,'sapo','Quash',1,100.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(10,'Peixe','Fish',0,100.00);


-- 3. Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS

select * from tbAnimais;

-- 4.Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS,apresentando todos os registros da tabela 


select tipo,nome from tbAnimais;

-- 5. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS, apresentado todos os registros.
 
select tipo,nome,idade from tbAnimais

-- 6. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias 
 
select tipo as 'Tipo de Animal', nome as 'Tipo do Animal' from tbAnimais;

-- 7. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
-- ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o 
-- alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna 
-- IDADE com o alias [Tempo de Vida]. 

select tipo as 'Tipo de Animal', nome as 'Tipo do Animal' , idade as 'Tempo de vida' from tbAnimais;

-- 8. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma:

select 'Animais Doméstico' as 'Procedência' , tipo as 'Tipo', nome as 'Nome', idade as 'Tempo de vida' from tbAnimais;

-- 9. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma: 

select  tipo, nome , idade, valor as 'Valor Original', valor * 1.10 as 'Valor de Venda' from tbAnimais;

-- 10. Escreva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir, 
-- apresentando uma vez os dados repetidos

select distinct tipo as 'Tipo',valor as 'Valor Original', valor * 1.10 as 'Valor de Venda' from tbAnimais;