--1. Encontrar el salario medio de los analistas, mostrando el número de los empleados con oficio analista.

select Oficio, avg(salario) from Emp
group by Oficio having Oficio = 'analista';

-- 2. Encontrar el salario mas alto, mas bajo y la diferencia entre ambos de todos los empleados con oficio EMPLEADO.

select oficio, max(salario) as 'salmax' , min(Salario) as 'salmin' , max(salario)-min(salario) as 'dif' from Emp
group by Oficio --having oficio = 'empleado'

-- 3. Visualizar los salarios mayores para cada oficio.

select oficio, max(salario) from Emp
group by Oficio;

-- 4. Visualizar el número de personas que realizan cada oficio en cada departamento.

select Dept_No, oficio, COUNT(oficio) as 'nuemro de personas' from Emp
group by Dept_no, Oficio
order by Dept_No, Oficio

-- 5. Buscar aquellos departamentos con cuatro o mas personas trabajando.

select Dept_No, COUNT(*) from Emp
group by Dept_No having COUNT(*) >3


-- 6. Mostrar el número de directores que existen por departamento.

select Dept_no, count(*) from Emp
where Oficio = 'director'
group by Dept_no 


-- 7. Visualizar el número de enfermeros, enfermeras e interinos que hay en la plantilla, ordenados por la función.

SELECT COUNT(*) AS [Nº DE PERSONAS], FUNCION FROM PLANTILLA
GROUP BY FUNCION
HAVING FUNCION IN ('ENFERMERO','ENFERMERA','INTERINO')
ORDER BY FUNCION