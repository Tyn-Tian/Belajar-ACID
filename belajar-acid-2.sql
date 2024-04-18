select * from accounts;

start transaction;

select * from accounts where id in ("Tian", "Budi") for update;

update accounts set balance = balance - 20000
where id = "Tian";

update accounts set balance = balance + 20000
where id = "Budi";

commit;
