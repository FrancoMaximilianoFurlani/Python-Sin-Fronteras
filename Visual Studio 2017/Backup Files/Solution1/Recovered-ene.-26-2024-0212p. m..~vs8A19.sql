use Principal;

select *from Empleados;

create clustered index i_empleado
on empleados(id);

create nonclustered index i_edad_empleado
on empleados(edad);

exec sp_rename 'empleados.iempleado', 'I_id', 'index';

drop index i_empleado on empleados;

drop table Clientes;

  CREATE TABLE clientes (
  id_cliente INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(20) NOT NULL,
  apellido VARCHAR(20) NOT NULL,
  pais VARCHAR(50) NOT NULL,
  compras INT NULL
);
  
  insert into Clientes values(1, 'Juan', 'P�rez', 'Estados Unidos', 1);
  insert into Clientes values(2, 'Mar�a', 'G�mez', 'Argentina', 2);
  insert into Clientes values(3, 'Carlos', 'L�pez', 'Brasil', NULL);
  insert into Clientes values(4, 'Laura', 'Mart�nez', 'Canad�', 4);
  insert into Clientes values(5, 'Pedro', 'Hern�ndez', 'China', 5);
  insert into Clientes values(6, 'Ana', 'Ruiz', 'Colombia', NULL);
  insert into Clientes values(7, 'Luis', 'Torres', 'Egipto', 7);
  insert into Clientes values(8, 'Marta', 'S�nchez', 'Espa�a', 8);
  insert into Clientes values(9, 'Roberto', 'Garc�a', 'Francia', 9);
  insert into Clientes values(10, 'Sof�a', 'L�pez', 'Alemania', 10);
  insert into Clientes values(11, 'David', 'Hern�ndez', 'Argentina', NULL);
  insert into Clientes values(12, 'Andrea', 'G�mez', 'Brasil', 12);
  insert into Clientes values(13, 'Fernando', 'P�rez', 'Canad�', 13);
  insert into Clientes values(14, 'Patricia', 'Mart�nez', 'China', 14);
  insert into Clientes values(15, 'Javier', 'L�pez', 'Colombia', 15);
  insert into Clientes values(16, 'Carmen', 'Ruiz', 'Egipto', NULL);
  insert into Clientes values(17, 'Ricardo', 'Torres', 'Espa�a', 17);
  insert into Clientes values(18, 'Marina', 'S�nchez', 'Francia', 18);
  insert into Clientes values(19, 'Alejandro', 'Garc�a', 'Alemania', 19);
  insert into Clientes values(20, 'Claudia', 'L�pez', 'Argentina', 20);
  insert into Clientes values(21, 'Fernanda', 'G�mez', 'Brasil', 21);
  insert into Clientes values(22, 'Rodrigo', 'P�rez', 'Canad�', 22);
  insert into Clientes values(23, 'Luisa', 'Mart�nez', 'China', 23);
  insert into Clientes values(24, 'Emilio', 'Hern�ndez', 'Colombia', 24);
  insert into Clientes values(25, 'Valeria', 'Ruiz', 'Egipto', 25);
  insert into Clientes values(26, 'Rafael', 'Torres', 'Espa�a', 26);
  insert into Clientes values(27, 'Camila', 'S�nchez', 'Francia', 27);
  insert into Clientes values(28, 'Gabriel', 'Garc�a', 'Alemania', NULL);
  insert into Clientes values(29, 'Isabella', 'L�pez', 'Argentina', NULL);
  insert into Clientes values(30, 'Santiago', 'P�rez', 'Brasil', 30);



  select distinct pais from clientes;

    select distinct nombre from clientes
	where pais= 'argentina';


	drop table articulos;

CREATE TABLE articulos (
  codigo INT IDENTITY,
  nombre VARCHAR(30),
  descripcion VARCHAR(100),
  precio SMALLMONEY,
  cantidad INT DEFAULT 0,
  vendidos INT DEFAULT 0,
  PRIMARY KEY (codigo)
);

  insert into articulos values('Laptop Acer', 'Port�til con procesador i5, 8GB RAM, 256GB SSD', 899.99, 10, 2);
  insert into articulos values('Monitor Samsung', 'Monitor LED de 24 pulgadas con resoluci�n Full HD', 179.99, 20, 5);
  insert into articulos values('Impresora HP', 'Impresora l�ser multifuncional con conexi�n Wi-Fi', 249.99, 15, 3);
  insert into articulos values('Teclado Logitech', 'Teclado inal�mbrico con retroiluminaci�n y teclas programables', 59.99, 30, 8);
  insert into articulos values('Mouse Microsoft', 'Mouse �ptico ergon�mico con 6 botones programables', 19.99, 40, 12);
  insert into articulos values('Disco Duro Externo', 'Almacenamiento port�til de 1TB con conexi�n USB 3.0', 79.99, 25, 6);
  insert into articulos values('Laptop HP', 'Port�til con procesador i7, 16GB RAM, 512GB SSD', 1299.99, 8, 1);
  insert into articulos values('Monitor LG', 'Monitor LED de 27 pulgadas con resoluci�n 4K', 299.99, 12, 3);
  insert into articulos values('Impresora Epson', 'Impresora de inyecci�n de tinta con esc�ner incorporado', 159.99, 18, 4);
  insert into articulos values('Teclado Razer', 'Teclado mec�nico con iluminaci�n personalizable', 99.99, 22, 7);
  insert into articulos values('Mouse Logitech', 'Mouse inal�mbrico con sensor de alta precisi�n', 29.99, 35, 10);
  insert into articulos values('Disco Duro SSD', 'Unidad de estado s�lido de 500GB con velocidad de transferencia r�pida', 109.99, 30, 9);
  insert into articulos values('Laptop Dell', 'Port�til con procesador i7, 16GB RAM, 1TB HDD', 1199.99, 6, 1);
  insert into articulos values('Monitor BenQ', 'Monitor LED de 32 pulgadas con tecnolog�a HDR', 399.99, 9, 2);
  insert into articulos values('Impresora Canon', 'Impresora l�ser en color de alta velocidad', 199.99, 14, 4);
  insert into articulos values('Teclado Corsair', 'Teclado mec�nico para juegos con retroiluminaci�n RGB', 79.99, 28, 9);
  insert into articulos values('Mouse Gaming', 'Mouse para juegos con botones programables y DPI ajustable', 49.99, 42, 15);
  insert into articulos values('Disco Duro Externo SSD', 'Almacenamiento port�til de 2TB con conexi�n USB-C', 159.99, 20, 8);
  insert into articulos values('Laptop Lenovo', 'Port�til con procesador Ryzen 7, 12GB RAM, 512GB SSD', 999.99, 10, 2);
  insert into articulos values('Monitor ASUS', 'Monitor LED de 29 pulgadas ultrapanor�mico', 249.99, 16, 3);
  insert into articulos values('Impresora Brother', 'Impresora l�ser monocrom�tica de alta capacidad', 179.99, 20, 6);


