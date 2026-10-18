create database db_biblioteca;

use db_biblioteca;

create table tabela_autor(
    codigo_isni int primary key not null,
    nome varchar(50) not null,
    data_nasc date
);

create table tabela_livro(
    codigo_isbn int primary key not null,
    nome varchar(50) not null,
    genero varchar(150) not null,
    codigo_isni_autor int not null,
    
    constraint fk_autor_escreve_livro
    foreign key (codigo_isni_autor)
    references tabela_autor(codigo_isni)
);