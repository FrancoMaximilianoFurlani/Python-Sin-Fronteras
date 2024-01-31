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
  
  insert into Clientes values(1, 'Juan', 'Pérez', 'Estados Unidos', 1);
  insert into Clientes values(2, 'María', 'Gómez', 'Argentina', 2);
  insert into Clientes values(3, 'Carlos', 'López', 'Brasil', NULL);
  insert into Clientes values(4, 'Laura', 'Martínez', 'Canadá', 4);
  insert into Clientes values(5, 'Pedro', 'Hernández', 'China', 5);
  insert into Clientes values(6, 'Ana', 'Ruiz', 'Colombia', NULL);
  insert into Clientes values(7, 'Luis', 'Torres', 'Egipto', 7);
  insert into Clientes values(8, 'Marta', 'Sánchez', 'España', 8);
  insert into Clientes values(9, 'Roberto', 'García', 'Francia', 9);
  insert into Clientes values(10, 'Sofía', 'López', 'Alemania', 10);
  insert into Clientes values(11, 'David', 'Hernández', 'Argentina', NULL);
  insert into Clientes values(12, 'Andrea', 'Gómez', 'Brasil', 12);
  insert into Clientes values(13, 'Fernando', 'Pérez', 'Canadá', 13);
  insert into Clientes values(14, 'Patricia', 'Martínez', 'China', 14);
  insert into Clientes values(15, 'Javier', 'López', 'Colombia', 15);
  insert into Clientes values(16, 'Carmen', 'Ruiz', 'Egipto', NULL);
  insert into Clientes values(17, 'Ricardo', 'Torres', 'España', 17);
  insert into Clientes values(18, 'Marina', 'Sánchez', 'Francia', 18);
  insert into Clientes values(19, 'Alejandro', 'García', 'Alemania', 19);
  insert into Clientes values(20, 'Claudia', 'López', 'Argentina', 20);
  insert into Clientes values(21, 'Fernanda', 'Gómez', 'Brasil', 21);
  insert into Clientes values(22, 'Rodrigo', 'Pérez', 'Canadá', 22);
  insert into Clientes values(23, 'Luisa', 'Martínez', 'China', 23);
  insert into Clientes values(24, 'Emilio', 'Hernández', 'Colombia', 24);
  insert into Clientes values(25, 'Valeria', 'Ruiz', 'Egipto', 25);
  insert into Clientes values(26, 'Rafael', 'Torres', 'España', 26);
  insert into Clientes values(27, 'Camila', 'Sánchez', 'Francia', 27);
  insert into Clientes values(28, 'Gabriel', 'García', 'Alemania', NULL);
  insert into Clientes values(29, 'Isabella', 'López', 'Argentina', NULL);
  insert into Clientes values(30, 'Santiago', 'Pérez', 'Brasil', 30);



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

  insert into articulos values('Laptop Acer', 'Portátil con procesador i5, 8GB RAM, 256GB SSD', 899.99, 10, 2);
  insert into articulos values('Monitor Samsung', 'Monitor LED de 24 pulgadas con resolución Full HD', 179.99, 20, 5);
  insert into articulos values('Impresora HP', 'Impresora láser multifuncional con conexión Wi-Fi', 249.99, 15, 3);
  insert into articulos values('Teclado Logitech', 'Teclado inalámbrico con retroiluminación y teclas programables', 59.99, 30, 8);
  insert into articulos values('Mouse Microsoft', 'Mouse óptico ergonómico con 6 botones programables', 19.99, 40, 12);
  insert into articulos values('Disco Duro Externo', 'Almacenamiento portátil de 1TB con conexión USB 3.0', 79.99, 25, 6);
  insert into articulos values('Laptop HP', 'Portátil con procesador i7, 16GB RAM, 512GB SSD', 1299.99, 8, 1);
  insert into articulos values('Monitor LG', 'Monitor LED de 27 pulgadas con resolución 4K', 299.99, 12, 3);
  insert into articulos values('Impresora Epson', 'Impresora de inyección de tinta con escáner incorporado', 159.99, 18, 4);
  insert into articulos values('Teclado Razer', 'Teclado mecánico con iluminación personalizable', 99.99, 22, 7);
  insert into articulos values('Mouse Logitech', 'Mouse inalámbrico con sensor de alta precisión', 29.99, 35, 10);
  insert into articulos values('Disco Duro SSD', 'Unidad de estado sólido de 500GB con velocidad de transferencia rápida', 109.99, 30, 9);
  insert into articulos values('Laptop Dell', 'Portátil con procesador i7, 16GB RAM, 1TB HDD', 1199.99, 6, 1);
  insert into articulos values('Monitor BenQ', 'Monitor LED de 32 pulgadas con tecnología HDR', 399.99, 9, 2);
  insert into articulos values('Impresora Canon', 'Impresora láser en color de alta velocidad', 199.99, 14, 4);
  insert into articulos values('Teclado Corsair', 'Teclado mecánico para juegos con retroiluminación RGB', 79.99, 28, 9);
  insert into articulos values('Mouse Gaming', 'Mouse para juegos con botones programables y DPI ajustable', 49.99, 42, 15);
  insert into articulos values('Disco Duro Externo SSD', 'Almacenamiento portátil de 2TB con conexión USB-C', 159.99, 20, 8);
  insert into articulos values('Laptop Lenovo', 'Portátil con procesador Ryzen 7, 12GB RAM, 512GB SSD', 999.99, 10, 2);
  insert into articulos values('Monitor ASUS', 'Monitor LED de 29 pulgadas ultrapanorámico', 249.99, 16, 3);
  insert into articulos values('Impresora Brother', 'Impresora láser monocromática de alta capacidad', 179.99, 20, 6);


