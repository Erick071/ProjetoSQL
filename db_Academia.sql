--Apagando o banco banco de dados
-- Criando banco de dados
create database dbAcademia;
use dbAcademia;
-- Visualizar o banco de dados
show databases;
-- Criando tabelas
create table tbUsuarios(
    codigo int,
    nome varchar(50),
    senha varchar(50)
);
create table tbFuncionarios(
    codigo int,
    nome varchar(100),
    email varchar(100),
    cpf char(14)
);
create table tbTelefones(
codigo int,
nome varchar(50),
telefone char(15)
);
-- vizualizar as tableas criadas
show tables;
--vizualizar a estrutura da tabela
desc tbUsuarios;
desc tbFuncionarios;