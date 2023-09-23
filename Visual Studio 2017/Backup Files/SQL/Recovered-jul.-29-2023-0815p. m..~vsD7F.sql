select *,Numero =SUBSTRING(replace(calles_num,'y',''),PATINDEX('%[0-9%]%',replace(calles_num,'y','')),5),

from Personas 


--where PATINDEX('%[0-9]%',Barrio_Cod)>0

select * , calle  = (CASE WHEN CALLES_NUM LIKE 'ARGANDOÑA%' THEN SUBSTRING(CALLES_NUM,CHARINDEX('ARGENDOÑA',CALLES_NUM,0 ),10)
                          WHEN CALLES_NUM LIKE 'SAN MARTIN%' THEN SUBSTRING(CALLES_NUM,CHARINDEX('SAN MARTIN',0),11)
						  WHEN CALLES_NUM LIKE '%GOULD%' THEN SUBSTRING(CALLES_NUM, CHARINDEX('BENJAMIN GOULD',0 ),14)
					ELSE '' END),
					Numero_MOD =SUBSTRING(replace(calles_num,'y',''),PATINDEX('%[0-9%]%',replace(calles_num,'y','')),5)
					,FECHA_MOD = '01-01-2023'
					INTO PERSONAS_MOD
from Personas


select *,Numero =SUBSTRING(replace(calles_num,'y',''),PATINDEX('%[0-9%]%',replace(calles_num,'y','')),5),

-- AGREGAR LOS DATOS DE FECHAS DE LA TABLA DE PERSONAS_MOD A LA COLUMNA FECHA DE LA TABLA PERSONAS
SELECT PERSONAS_MOD.COD_PER, FECHA_MOD,Personas.FECHA ,CALLE
,FECHA= CONVERT(DATETIME,CONVERT(DATE,PERSONAS_MOD.FECHA_MOD)) F
FROM PERSONAS_MOD
INNER JOIN  Personas ON PERSONAS_MOD.cod_per = Personas.cod_per
---COD_PER ON cod_per.FECHA_MOD = FECHA_MOD.CALLE


DROP TABLE PERSONAS_MOD 