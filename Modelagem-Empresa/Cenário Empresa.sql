create database db_empresa;

use db_empresa;

create table tabela_departamento(
codigo_dep int primary key not null,
nome varchar(50) not null,
tipo_dep varchar(60) not null
);

create table tabela_empregado(
registro int primary key not null,
sexo ENUM ('F', 'M', 'O'),
formacao varchar(100) not null,
codigo_departamento int,
registro_chefe int UNIQUE, -- IMPEDE QUE UM CHEFE TENHA MAIS DE UM DEPARTAMENTO --
    
constraint fk_empregado_departamento 
foreign key (codigo_departamento)
references tabela_departamento(codigo_dep),

constraint fk_empregado_chefe 
foreign key (registro_chefe)
references tabela_empregado(registro) --  aponta para 'registro', que é a PK desta tabela
);

create table tabela_projeto(
numero int primary key not null,
tema varchar(40) not null,
responsavel varchar(50) not null,
nome varchar(50) not null,
codigo_departament_resp int UNIQUE NOT NULL, -- NÃO DEIXA REPETIR OS NÚMEROS COM UNIQUE --
    
constraint fk_projeto_departamento 
foreign key (codigo_departament_resp)
references tabela_departamento(codigo_dep)
);

CREATE TABLE projeto_empregado ( -- TABELA INTERMEDIÁRIA PARA O RELACIONAMENTO N:N --
numero_do_proj int not null,
registro_empregado int not null,
primary key (numero_do_proj, registro_empregado),
    
constraint fk_projeto 
foreign key (numero_do_proj)
references tabela_projeto(numero),
    
constraint fk_empregado 
foreign key (registro_empregado)
references tabela_empregado(registro)
);

