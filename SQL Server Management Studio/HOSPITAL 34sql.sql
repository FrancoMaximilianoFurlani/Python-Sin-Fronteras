-- Devuelva todos los Empleados que tengan asociado un departamento.
use hospital_1
select emp.Apellido,emp.Oficio, dept.DNombre
from Emp 
inner join Dept on Emp.Dept_No = Dept.Dept_No

select emp.Apellido,emp.Oficio, dept.DNombre
from Emp 
full join Dept on Emp.Dept_No = Dept.Dept_No


