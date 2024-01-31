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

select * from Plantilla where T = 'm' and salario between(200000, 225000);
