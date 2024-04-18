create database belajar_acid;

create table account (
	id varchar(100) not null primary key,
    name varchar(100) not null,
    balance bigint not null
) engine = InnoDB;