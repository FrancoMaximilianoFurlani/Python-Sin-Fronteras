select localidad.des_loc ,* from personas
inner join localidad on personas.localidad_cod = cod_loc
where apellidos like 'A%'and localidad_cod = 1

--pto 3)
select * 
into  _personas2
from personas 
where localidad_cod = 4 and localidad_cod in ( 
		select cod_loc from localidad 
		where cod_prov = 1 )

--pto 4)
select *,Tipo_Persona= (case when Dni_Tip= 8 then 'Persona Juridica' else 'Persona Fisica' end)
from personas 


--pto 5)

select localidad_cod, count(*) from personas where localidad_cod = 1 
group by localidad_cod having count(*) > 1

--pto 6)

select dni_tip, tipo_document.descripcion from personas 
inner join tipo_document on personas.dni_tip = tipo_document.cod_tipo
where dni_tip = 1 
group by dni_tip, tipo_document.descripcion


-- pto7)

select * from personas 
order by apellidos asc

-- pto 8 ) 

select * from personas 
where calle_cod in ( select cod_calle from calle where descripcion = 'san martin')

--pto9)

insert into Personas  values
	( 5, 'carla rey',1,null)

Insert into personas values('carla rey',1,null,null,null,null,null)


delete from personas where num_dni is null