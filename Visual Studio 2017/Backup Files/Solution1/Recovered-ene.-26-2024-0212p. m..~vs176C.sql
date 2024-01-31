use DESOL;

select * from EMPLEADOS;


alter table empleados 
add antiguedad int ;

sp_columns empleados;

Id_empleado nombre apellido sueldo antiguedad fecha_inicio telefono categoria

-- Insertar empleados en la tabla
INSERT INTO empleados (Id_empleado, nombre, apellido, sueldo, antiguedad, fecha_inicio, telefono, categoria)
VALUES 
  (1, 'Juan', 'P�rez', 50000, 2, '2022-01-01', '123456789', 'Programador'),
  (2, 'Mar�a', 'G�mez', 60000, 3, '2021-03-15', '987654321', 'Analista'),
  (3, 'Carlos', 'Mart�nez', 55000, 1, '2023-05-10', '555555555', 'Dise�ador'),
  (4, 'Laura', 'S�nchez', 70000, 4, '2020-12-01', '999888777', 'Gerente'),
  (5, 'Pedro', 'Ram�rez', 48000, 2, '2022-08-20', '444333222', 'Programador'),
  (6, 'Ana', 'L�pez', 65000, 3, '2021-01-10', '111222333', 'Analista');

-- Puedes continuar a�adiendo m�s empleados seg�n sea necesario


-- Insertar empleados en la tabla sin proporcionar Id_empleado
INSERT INTO empleados (nombre, apellido, sueldo, antiguedad, fecha_inicio, telefono, categoria)
VALUES 
  ('Juan', 'P�rez', 50000, 2, '2022-01-01', '123456789', 'Programador'),
  ('Mar�a', 'G�mez', 60000, 3, '2021-03-15', '987654321', 'Analista'),
  ('Carlos', 'Mart�nez', 55000, 1, '2023-05-10', '555555555', 'Dise�ador'),
  ('Laura', 'S�nchez', 70000, 4, '2020-12-01', '999888777', 'Gerente'),
  ('Pedro', 'Ram�rez', 48000, 2, '2022-08-20', '444333222', 'Programador'),
  ('Ana', 'L�pez', 65000, 3, '2021-01-10', '111222333', 'Analista');

-- Puedes continuar a�adiendo m�s empleados seg�n sea necesario

-- Mostrar el numero de empleado, el apellido y la fecha de alta del empleado mas antiguo de la empresa

select nombre, apellido, fecha_inicio, ANTIGUEDAD from EMPLEADOS
where ID_EMPLEADO in (select max(ID_EMPLEADO) from EMPLEADOS e where e.ID_EMPLEADO = ID_EMPLEADO)


--Mostrar el numero de empleado, el apellido y la fecha de alta del empleado mas modernos de la empresa.


select * from EMPLEADOS

--planteo 1
select ID_EMPLEADO, apellido, fecha_inicio from EMPLEADOS
where FECHA_INICIO in (select max(FECHA_INICIO)
from EMPLEADOS e where e.ID_EMPLEADO = ID_EMPLEADO )
 

--planteo 2
select top 1 ID_EMPLEADO, apellido, fecha_inicio, antiguedad from EMPLEADOS 
order by ANTIGUEDAD asc

---Visualizar el apellido y el a�o de los empleados con el mismo a�o que G�mez

select apellido, fecha_inicio from EMPLEADOS
where  ID_EMPLEADO in (select ID_EMPLEADO from EMPLEADOS e where YEAR(e.FECHA_INICIO) = YEAR(EMPLEADOS.FECHA_INICIO) and 
APELLIDO='G�mez')


select apellido, fecha_inicio from EMPLEADOS
where  substring(convert(varchar,CONVERT(date,FECHA_INICIO)),1,4)
in (select substring(convert(varchar,CONVERT(date,FECHA_INICIO)),1,4)
from EMPLEADOS e where e.APELLIDO='G�mez')


SELECT NOMBRE+' ' + CONVERT(VARCHAR, ID_EMPLEADO)+' '+CONVERT( VARCHAR, FECHA_INICIO/*(CONVERT(DATE, FECHA_INICIO)*/)
FROM EMPLEADOS

DESC 