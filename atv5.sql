create database escola;
use escola;

create table aluno (
rgm varchar(50) primary key,
nome varchar(70),
dt_nasc date
);

describe aluno;

create table disciplina(
codigo varchar(50) primary key,
nome varchar (70),
num_creditos varchar(50)
);

describe disciplina;

create table cursa(
codigo varchar(50) primary key,
rgmfk varchar (70),
codigofk varchar(50)
);

describe cursa;

create table usuarios (
    id int primary key,
    nome varchar(70),
    email varchar(70)
);

describe usuarios;

insert into usuarios (id, nome, email)
values 
(1, 'João Silva', 'joao.silva@email.com'),
(2, 'Maria Oliveira', 'maria.oliveira@email.com'),
(3, 'Carlos Pereira', 'carlos.pereira@email.com');

select*from usuarios;

drop table aluno, disciplina, cursa, usuarios;


alter table usuarios modify nome varchar(70) not null;
alter table aluno add column telefone varchar(12);

alter table aluno change dt_nasc nascimento date;

alter table disciplina drop column num_creditos;

insert into cursa (codigo, rgmfk, codigofk) value
(1, 11221101234 , 01),
(2, 11231109876, 01),
(3, 11241105432, 03);

select*from cursa;