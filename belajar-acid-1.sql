create database belajar_acid;

create table accounts (
	id varchar(100) not null primary key,
    name varchar(100) not null,
    balance bigint not null
) engine = InnoDB;

start transaction;

insert into accounts(id, name, balance)
values ("Tian", "Christian", 1250000);

insert into accounts(id, name, balance)
values ("Budi", "Budi Nugraha", 800000);

commit;

start transaction;

delete from accounts where id = "Tian";

delete from accounts where id = "Budi";

select * from accounts;

rollback;

start transaction;

update accounts set name = null
where id = "Tian";

commit;

select * from accounts;

start transaction;

select * from accounts where id in ("Tian", "Budi") for update;

update accounts set balance = balance - 20000
where id = "Tian";

update accounts set balance = balance + 20000
where id = "Budi";

commit;

select * from accounts;

start transaction;

select * from accounts where id in ("Tian", "Budi") for update;

update accounts set balance = balance - 500000
where id = "Tian";

# shutdown mysql

update accounts set balance = balance + 500000
where id = "Budi";

commit;

select * from accounts;