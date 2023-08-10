-- Criando banco dados
drop database dbClinicaMedica;
create database dbClinicaMedica;
-- Acesando banco de dados
use dbClinicaMedica;
-- Vizualizando o banco de dados
show databases;
-- Criando tabelas
create table tbConsulta(
consulta int,
dt_consulta datetime,
medico_idMedico int,
paciente_idPaciente int,
receitamedica_idMedica int
);

create table tbMedico(
id_medico int,
nm_medico varchar(45),
telefone_medico varchar (45)
);


create table tbPaciente(
id_paciente int,
nm_paciente varchar(45),
telefone_paciente varchar(9),
convenio varchar(45)
);


create table tbReceitaMedica(
id_receitamedica int,
descricao varchar (500)
);

-- Vizualizar as tabelas criadas
show tables;
-- Vizualizar a estrutura da tabela
desc tbConsulta;
desc tbMedico;
desc tbPaciente;
desc tbReceitaMedica;











