use pubs

-- 1) Realizar una consulta que muestre los nombres de los autores y editores ubicados en la misma ciudad

select au_fname as apellido, au_lname as nombre, pub_name as editor
from authors inner join publishers
on authors.city = publishers.city
