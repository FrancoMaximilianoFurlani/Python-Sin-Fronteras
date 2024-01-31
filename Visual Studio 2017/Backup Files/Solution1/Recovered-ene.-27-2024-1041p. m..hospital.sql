use hospital_1
-- 8. Igual que el anterior, para los nacidos antes de 1970 ordenados por número de inscripción descendente

select * from Enfermo
where  cast( Fecha_Nac as date) < '01-01-1970'

SELECT * FROM ENFERMO WHERE CAST(FECHA_NAC AS DATE) < '01-01-1970'
ORDER BY INSCRIPCION DESC

SELECT *
FROM ENFERMO
WHERE CAST(FECHA_NAC AS DATE) < '1970-01-01'
ORDER BY INSCRIPCION DESC;

SELECT *
FROM ENFERMO
WHERE TRY_CAST(FECHA_NAC AS DATE) < '1970-01-01'
ORDER BY INSCRIPCION DESC;



-- 9. Listar todos los datos de la plantilla del hospital del turno de mañana

select * from Plantilla
where t= 'm';

-- 10. Idem del turno de noche.



select * from Plantilla
where t= 'N';

-- 11. Visualizar los empleados de la plantilla del turno de mañana que tengan un salario entre 200000 y 225000.

select * from Plantilla where T = 'm' and salario between 200000 and 225000;

-- 8. Igual que el anterior, para los nacidos antes de 1970 ordenados por número de inscripción descendente

select * from Enfermo
where  cast( Fecha_Nac as date) < '01-01-1970'

SELECT * FROM ENFERMO WHERE CAST(FECHA_NAC AS DATE) < '01-01-1970'
ORDER BY INSCRIPCION DESC

SELECT *
FROM ENFERMO
WHERE CAST(FECHA_NAC AS DATE) < '1970-01-01'
ORDER BY INSCRIPCION DESC;

SELECT *
FROM ENFERMO
WHERE TRY_CAST(FECHA_NAC AS DATE) < '1970-01-01'
ORDER BY INSCRIPCION DESC;



-- 9. Listar todos los datos de la plantilla del hospital del turno de mañana

select * from Plantilla
where t= 'm';

-- 10. Idem del turno de noche.



select * from Plantilla
where t= 'N';

-- 11. Visualizar los empleados de la plantilla del turno de mañana que tengan un salario entre 200000 y 225000.

select * from Plantilla where T = 'm' and salario between 200000 and 225000 ;


-- 12. Visualizar los empleados de la tabla emp que no se dieron de alta entre el 01/01/80 y el 12/12/82.

select * from emp 
where Fecha_Alt not between '01-01-1980' and '12-12-1982';

-- 13. Mostrar los nombres de los departamentos situados en Madrid o en Barcelona.

select * from Dept 
where loc in ('madrid' , 'Barcelona');

-- 14. Mostrar aquellos empleados con fecha de alta posterior al 1 de Julio de 1985.

select * from Emp where Fecha_Alt > '01-06-1985';

-- 15. Lo mismo que en el ejercicio 14 pero con salario entre 150000 y 400000.

select * from Emp 
where Fecha_Alt > '01-06-1985'
and Salario between 150000 and 400000 ;


-- 16. Igual que en el ejercicio 15, pero también incluimos aquellos que 
-- no siendo analista pertenecen al departamento 20.

select * from Emp 
where Fecha_Alt > '01-06-1985'
and Salario between 150000 and 400000 
or (Oficio