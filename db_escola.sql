-- Erick Henrique soares de souza
-- Criando bancos de dados 
drop database dbEscola;
create database dbEscola;
-- Acesando banco de dados
use dbEscola;
-- Vizualizando o banco dados
show databases;
-- Criando tabelas
Create table tbAtividade(
id int,
atividade varchar(45)
);

create table tbTurma(
id int,
quant_alunos int,
horario_aluno datetime,
duracao_aula datetime,
data_inicio date,
data_fim date,
atividade int,
id_instrutor int,
id, monitor int
);

create table tbRegistro(
id_aluno int,
id_turma int,
ausencia int,
id_registro int
);

create table tbTurma(
quant_alunos int,
horario_aula datetime,
duracao_aula datetime,
data_fim date,
atividade int,
id_instrutor int,
id_monitor int
);



create table tbAluno(
matricula int,
data_matricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura float,
peso float,
id_turma int 
);

create table tbInstrutor(
rg int,
nome varchar(45),
nascimento date,
titulacao varchar(45),
telefone varchar(45)
);


create table tbMonitor(
id_aluno int
);


-- Vizualizar as tabelas criadas
show tables;
-- Vizualizar a estrutura da tabela
desc tbAtividade;
desc tbRegistro;
desc tbTurma;
desc tbAluno;
desc tbInstrutor;
desc tbMonitor;
















