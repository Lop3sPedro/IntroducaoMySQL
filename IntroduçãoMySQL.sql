#Mostrar todo os bancos de dados existenntes  dentro de um sitema gerenciador dde banco de dados.
show databases;

#cria um banco de dados com uma nomeação específica.
create database proa;

#Seleciona um banco de dados para faer alterações.
use proa;

#Mostrar todas as tabelas existentes dentro de um banco de dados.
show tables;

#Cria tabelas dentro do banco de dados.
create table Aluno(id integer primary key, nome varchar(100), sobrenome varchar(100));

#Insere valores dentro das inas e colunas da tabela
insert into Aluno(id, nome, sobrenome) values(1, "Pedro","Lopes");
insert into Aluno(id, nome, sobrenome) values(2, "Ramon","Costa");
insert into Aluno(id, nome, sobrenome) values(3, "Sabrina","Silva");

#Seleciona todos os elementos da tabela Aluno
select * from Aluno;

#Seleciona apenas a coluna NOME onde tem o id=2 da tabela Aluno
select nome from aluno where id = 2;

#Criação da tabela funcionário
create table Funcionario(id integer primary key, nome varchar(100), sobrenome varchar(100), funcao varchar (100));
insert into Funcionario(id, nome, sobrenome, funcao) values (1, "Marcos", "Santos", "monitor");
insert into Funcionario(id, nome, sobrenome, funcao) values (2, "Jailson", "Arruda", "diretor");
insert into Funcionario(id, nome, sobrenome, funcao) values (3, "Julia", "Prado", "secretária");

#Criação da tabela professor
create table Professor(id integer primary key, nome varchar(100), sobrenome varchar (100), materia varchar (100));
select * from Funcionario;

#Faz a seleção da coluna FUNCAO da tabela Funcionario onde o id=3.
select funcao from Funcionario where id = 3;

#Faz a seleção da coluna NOME e SOBRENOME da tabela Funcionario que tenham o id menor que 3.
select nome, sobrenome from Funcionario where id < 3;

#Faz a seleção da coluna NOME e SOBRENOME da tabela Funcionario que tenham o id maior ou igual a 3.
select nome, funcao from funcionario where id >= 3;

#Faz a seleção da coluna NOME e SOBRENOME da tabela Funcionario que tenham o id diferente de 3.
select nome, funcao from funcionario where id <> 3;

#Executar uma alteração no registro
update funcionario set funcao = "gerente" where id = 3;
update funcionario set funcao = "secretária" where id = 3;
select * from funcionario;

#Deleta uma informação específica da tabela
delete from funcionario where id = 2;


#Apagar uma coluna específica
alter table funcionario drop column sobrenome;

#Alterar informação da coluna específica
alter table funcionario change column nome nome_completo varchar(100)not null;
select * from funcionario;

#Adciona uma nova da coluna a tabela
alter table funcionario add column idade integer not null;
update funcionario set idade = 42 where id = 3;
update funcionario set idade = 37 where id = 1;
select * from funcionario;

show databases;

#Outras maneiras de criar um banco de dados, desta vez usando o SCHEMA.
CREATE SCHEMA `teste2` DEFAULT CHARACTER SET utf16;
CREATE SCHEMA if not exists `teste3` DEFAULT CHARACTER SET utf16;

drop database teste3;

#Faz uma pesquisa no banco de dados dos quais terminem em "oa" utilizando o %.
show databases like "%oa";

#Faz uma pesquisa no banco de dados dos quais terminem em "proa" idndependente do que vier após, utilizando o %.
show databases like "proa%";

#Excluindo bancos
drop database proa4;
drop database proa5;

#Primeiro confirma se ele existe, se existir, ele apaga. Caso contrario, emite um warning.
drop database if exists proa5;
#também existe a possibilidade de apagar utilizando o botão direito do mouse.

#Teste
use teste2;
create table Empregado(
id int not null auto_increment,
nome varchar (50) not null,
sobrenome varchar(100) not null,
funcao varchar (30) not null,
setor varchar (30) not null,
primary key (id) 
);
show tables;

#Consultaar os detalhes da tabela.
describe Empregado;
select * from Empregado;
insert into Empregado(nome_empregado, sobrenome_empregado, funcao_empregado, setor_empregado, idade, RG) values ("Claúdio" , "José", "carregador" , "estoque", 33, "364017478");
insert into Empregado(nome_empregado, sobrenome_empregado, funcao_empregado, setor_empregado, idade, RG) values ("João" , "Jota", "estoquista" , "estoque", 20, "174364078");
insert into Empregado(nome_empregado, sobrenome_empregado, funcao_empregado, setor_empregado, idade, RG) values ("Claúdio" , "Antonio", "segurança" , "recepção", 53, "407174368");
insert into Empregado(nome, sobrenome, funcao, setor, idade, RG) values ("Claúdio" , "José", "carregador" , "estoque");
insert into Empregado(nome, sobrenome, funcao, setor, idade, RG) values ("Claúdio" , "José", "carregador" , "estoque");

#Apaga todos os dados da tabela
truncate table Empregado;

#Apaga a tabela toda.
drop table Empregado;

alter table empregado add column idade integer not null, add column RG integer not null;
select * from Empregado;
alter table empregado drop column RG;
alter table empregado add column RG varchar(12);
alter table Empregado modify idEmpregado  int not null auto_increment;
alter table Empregado rename to Colaborador;
alter table colaborador change column idade numero_de_primaveras integer not  null;
use proa;
show full tables;