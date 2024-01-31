-- 1) Realizar una consulta que muestre los nombres de los autores y editores ubicados en la misma ciudad

select au_lname, au_fname, pub_name
from authors inner join publishers
on authors.city = publishers.city

--2) Obtener todos los nombres y editores de todos los libros cuyos anticipos pagados son superiores a 7500

select title, pub_name, advance
from titles inner join publishers
on titles.pub_id = publishers.pub_id
where advance > 7500

-- 3) Seleccionar todos los titulos, nombre y apellidos del autor de todos los libros de cocina tradicional.


select au_lname, au_fname, title , type
from titles inner join titleauthor
on titles.title_id = titleauthor.title_id
inner join authors
on titleauthor.au_id = authors.au_id
where titles.type = 'trad_cook'


-- 4) Seleccione nombre, apellido de los autores y el nombre de la editorial de todos aquellos escritores 
-- cuya ciudad sea la misma que la de la editorial.
-- Pero en la consulta también se incluirán los demás autores de la tabla authors 

select au_lname, au_fname, pub_name
from authors left join publishers
on authors.city = publishers.city

-- 5) Recuperar los títulos y el índice del almacén de todos los libros que vendieron más de 25 unidades.

select title, stor_id, qty
from titles inner join sales
on titles.title_id = sales.title_id
where qty > 25

-- 6) Modificación al ejercicio anterior: incluir también los títulos de aquellos libros que no superaron las 25 unidades en sus ventas

select title, stor_id, qty
from titles left join sales
on titles.title_id = sales.title_id
and qty > 25

-- 7) Realizar una consulta que devuelva el titulo, editorial y autor de cada libro.


select title, pub_name, au_fname

from publishers inner join titles
on publishers.pub_id = titles.pub_id
inner join titleauthor
on titles.title_id = titleauthor.title_id
inner join authors
on titleauthor.au_id = authors.au_id