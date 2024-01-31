create table personas (
id int identity (1,1) not null,
nombre varchar(20),
edad int);

alter table personas
add check (edad>18);

alter table persona
drop check edad