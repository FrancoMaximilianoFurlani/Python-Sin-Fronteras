use hospital_1

-- 1. Seleccionar el apellido, oficio, salario, numero de departamento y su nombre de todos los empleados 
--cuyo salario sea mayor de 300000

select Apellido, Oficio, Salario, e.Dept_No as 'n° departemento', DNombre
from Dept as d inner join Emp as e 
on d.Dept_No=e.Dept_No
where Salario > 300000

-- 2. Mostrar todos los nombres de Hospital con sus nombres de salas correspondientes.

select h.Nombre, S.Nombre
from Hospital as H inner join Sala as S
on H.Hospital_Cod =S.Hospital_Cod


-- 3. Calcular cuantos trabajadores de la empresa hay en cada ciudad.

select COUNT(Emp_No) as 'nuemro de empleados', Loc as 'ubicacion'
from Emp as e right outer join Dept as d
on e.Dept_No = d.Dept_No
group by Loc

-- 4. Visualizar cuantas personas realizan cada oficio en cada departamento mostrando el nombre del departamento.


select d.DNombre,COUNT(*), e.Oficio
from Emp as e right outer join Dept as d 
on e.Dept_No = d.Dept_No
group by e.Dept_No , e.Oficio, d.DNombre


-- 5. Contar cuantas salas hay en cada hospital, mostrando el nombre de las salas y el nombre del hospital.

select COUNT(sala_cod), Hospital.Nombre, Sala.Nombre 
from hospital inner join Sala
on Hospital.Hospital_Cod = Sala.Hospital_Cod
group by Sala_Cod, Sala.Nombre, Hospital.Nombre

-- 6. Calcular cuantos trabajadores hay en cada departamento(nombre de departamento)

select COUNT(e.Emp_No), d.DNombre
from Emp as e right outer join Dept as d
on e.Dept_No = d.Dept_No
group by d.DNombre


--7. Buscar aquellos departamentos con cuatro o mas personas trabajando.


select count(*),d.DNombre 
from Emp as e inner join Dept as d
on e.Dept_No=d.Dept_No
group by d.DNombre
having COUNT(*)>4

-- 8. Calcular el valor medio de las camas que existen para cada nombre de sala.
-- Indicar el nombre de cada sala y el codigo de cada una de ellas.


select avg(num_cama),sala_cod, Nombre
from Sala
group by Nombre, Sala_Cod


-- 9. Calcular la media salarial por ciudad.

select AVG(salario), Loc
from Emp as e inner join Dept as d
on e.Dept_No = d.Dept_No
group by Loc

-- 10. Mostrar los doctores junto con el nombre de hospital en el que ejercen, la dirección y el teléfono del mismo.

select d.Apellido, h.Nombre , h.Direccion, h.Telefono
from Doctor as d inner join hospital as h 
on d.Hospital_Cod = h.Hospital_Cod


-- 11. Mostrar los nombres de los hospitales junto con el mejor salario de los empleados de cada hospital.

select max(salario), h.Nombre
from Plantilla as p inner join Hospital as h
on p.Hospital_Cod = h.Hospital_Cod
group by h.Nombre

-- 12. Visualizar el nombre de los empleados de la plantilla junto con el nombre de la sala, el nombre del hospital 
-- y el número de camas libres de cada una de ellas.


select p.Apellido, s.Nombre, h.Nombre, s.Num_Cama
from Plantilla as p inner join Sala as s 
on p.Sala_Cod = s.Sala_Cod
and p.Hospital_Cod = s.Hospital_Cod
inner join hospital as h 
on s.Hospital_Cod = h.Hospital_Cod


SELECT P.APELLIDO AS [APELLIDO Y NOMBRE]
,S.NOMBRE AS [SALA]
,H.NOMBRE AS [HOSPITAL],
S.NUM_CAMA AS [Nº DE CAMAS]
FROM PLANTILLA P INNER JOIN SALA AS S
ON P.HOSPITAL_COD = S.HOSPITAL_COD
AND P.SALA_COD = S.SALA_COD
INNER JOIN HOSPITAL AS H
ON H.HOSPITAL_COD = P.HOSPITAL_COD

-- 13. Visualizar el máximo salario, mínimo salario de los empleados dependiendo de la ciudad en la que trabajen. Indicando el número total de trabajadores por ciudad.


select d.Loc, max(e.Salario), min(e.Salario), COUNT(e.Dept_No)
from Emp as e inner join Dept as d
on e.Dept_No=d.Dept_No
group by d.Loc

-- 14. Averiguar la combinación de que salas podría haber por cada uno de los hospitales.

select s.Nombre, h.Nombre
from Sala as s cross join hospital as h