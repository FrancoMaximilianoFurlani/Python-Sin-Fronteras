-- 1. Seleccionar todos los empleados cuyo apellido comience por M
5
select Apellido from Emp 
where Apellido like 'S%';
SELECT * FROM EMP WHERE APELLIDO LIKE 'M%'


-- 2. Seleccionar todos los empleados cuyo apellido termine con la letra Z

select * from Emp where Apellido like '%Z';}

-- 3. Seleccionar todos los empleados que contengan en su apellido ER.

select * from emp where Apellido like '%ER%';

-- 4. Mostrar todos los empleados cuyo nombre sea de 4 letras y su apellido termine con la letra a

select * from emp where Apellido like '___a';

-- 5. Mostrar todos los empleados cuyo apellido comience entre las letras E y F.

select * from Emp where apellido like '[e-f]%';

--6. Mostrar todos los empleados cuyo apellido comience por la letra A, contenga dentro de su apellido de la letra A a la M y que terminen en O.

select * from emp where Apellido like '%[a-m]%';

-- 7. Mostrar todos los empleados cuyo apellido comience por la letra M y la segunda letra no sea una A.

select * from emp where Apellido like 'm[^a]%';


-- 8. Mostrar todos los empleados cuyo apellido sea de 5 letras y su tercera letra sea entra la A y la S terminando en Z.

select * from emp where Apellido like '__[a-S]_z';

SELECT * FROM EMP WHERE APELLIDO LIKE '__[a-ñ]_z'

-- 9. Mostrar todos los empleados cuyo apellido sea de 6 letras y no comience entre la A y la D.

SELECT * FROM EMP WHERE APELLIDO LIKE '[^a-d]_____'

-- 10. Mostrar todos los que empiecen por la A y cuya cuarta letra no esté comprendida entre A – G


SELECT * FROM EMP WHERE APELLIDO LIKE 'A__[^a-g]%'


-- FUNCIONES


-- 1. Encontrar el salario medio de los analistas, mostrando el número de los empleados con oficio analista.

SELECT COUNT(*) AS 'NUMERO DE EMPLEADOS', OFICIO ,AVG(SALARIO) FROM Emp
GROUP BY 