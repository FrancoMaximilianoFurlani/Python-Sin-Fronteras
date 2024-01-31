drop table Clientes;

create table Clientes(
idcliente int identity (1,1) primary key not null,
nombre varchar(10) not null,
direccion varchar(100) not null,
telefono numeric(10) null,
email varchar(50) null,
);

insert into Clientes values ('jose', 'calle 1', null,null);

select * from Clientes;