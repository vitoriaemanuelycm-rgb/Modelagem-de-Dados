CREATE DATABASE db_bercario;

USE  db_bercario;

CREATE TABLE tabela_medico(
crm  int  primary key not null,
nome varchar(50) not null,
especialidade varchar(80)
);
alter  table  tabela_medico add  telefone int;

CREATE TABLE tabela_mae(
cpf int primary key not null,
nome varchar(50) not null,
endereco varchar(100) not null,
data_nasc date ,
telefone int
);

CREATE TABLE tabela_bebe(   -- OBS: AS CHAVES ESTRAGEIRAS FICAM NA TABELA DEPENDENTE( O PARA MUITOS DO RELACIONAMENTO) --
pulseira_identificadora int  primary key not null,
peso float  not null,
altura float  not null,
data_nasc date ,
nome_medico varchar(50) not null,
nome_mae varchar(50) not null,
cpf_mae int  not null,     /* PRECISA TER COLUNAS PARA ARMAZENAR AS INFORMAÇÕES*/
crm_medico int not null,  
constraint fk_bebe_mae     -- NOME PARA SEU RELACIONAMENTO --
foreign key (cpf_mae)      -- ESSA COLUNA VAI ATUAR COMO CHAVE ESTRANGEIRA --
references tabela_mae(cpf),  -- ESSA CHAVE ACIMA APONTA PARA A COLUNA CPF E TABELA TABELA_MÃE --

constraint fk_bebe_medico 
foreign key (crm_medico) 
references tabela_medico(crm)
);