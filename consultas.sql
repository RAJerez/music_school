-- Listar todos los alumnos inscriptos en el curso de guitarra intermedio

select
	a.id_alumno,
	a.nombre
from Inscripciones i
inner join Cursos c on i.id_curso = c.id_curso
inner join Alumnos a on i.id_alumno = a.id_alumno
where c.nombre = 'Guitarra Intermedio';

-- Mostrar todas las inscripciones realizadas después del 1 de enero de 2024

select *
from Inscripciones
where fecha_insc > '2024-01-01';

-- Contar la cantidad de alumnos que han abonado la inscripción

select
	count(*) as alumnos_abonaron
from Inscripciones
where abono_insc = TRUE;

-- Listar los cursos disponibles para alumnos avanzados

select *
from Cursos
where nivel_habilidad = 'Avanzado';


-- Listar los nombres y apellidos de los alumnos junto con los nombres de los cursos 
-- a los que están inscritos.

select
	a.id_alumno,
	a.nombre,
	a.apellido,
	c.nombre as curso
from Inscripciones i
inner join Cursos c on i.id_curso = c.id_curso
inner join Alumnos a on i.id_alumno = a.id_alumno;


-- Obtener el nombre y apellido de los alumnos que estan inscriptos en mas de un curso

with cte as (
	select
		a.id_alumno,
		a.nombre,
		a.apellido,
		count(i.id_curso) as cantidad_cursos
	from Inscripciones i
	inner join Alumnos a on i.id_alumno = a.id_alumno
	group by a.id_alumno, a.nombre, a.apellido
)
select 
	id_alumno,
	nombre,
	apellido,
	cantidad_cursos
from cte
where cantidad_cursos > 1;

-- Mostrar el nombre del curso y la cantidad de alumnos inscriptos en cada curso

select
	c.nombre as curso,
	count(i.id_alumno) as cantidad_alumnos
from Inscripciones i
inner join Cursos c on i.id_curso = c.id_curso
group by curso;

-- Listar los alumnos que no han abonado la inscripción.

select
	a.id_alumno,
	a.nombre,
	a.apellido
from Inscripciones i
inner join Alumnos a  on i.id_alumno  = a.id_alumno
where i.abono_insc = FALSE;

-- Obtener los nombres de los cursos que tienen al menos un alumno mayor de 20 años inscrito.

select
	DISTINCT c.nombre as curso
from Inscripciones i
inner join Cursos c on i.id_curso = c.id_curso
inner join Alumnos a on i.id_alumno = a.id_alumno
where DATEDIFF(CURDATE(), a.fecha_nac) / 365 > 20;


-- Edad en dias y en años de cada alumno
-- DATEDIFF me da la diferencia en DIAS

select
	nombre,
	apellido,
	DATEDIFF(CURDATE(), fecha_nac) as edad_en_dias,
	DATEDIFF(CURDATE(), fecha_nac) DIV 365.25 as edad
from Alumnos;

-- Listar el nombre y apellido de los alumnos junto con los nombres de los cursos en los
-- que están inscriptos, pero solo para aquellos que se inscribieron en 2024.

select
	a.nombre,
	a.apellido,
	c.nombre as curso,
	i.fecha_insc
from Inscripciones i
inner join Alumnos a on i.id_alumno = a.id_alumno
inner join Cursos c on i.id_curso = c.id_curso
WHERE YEAR(i.fecha_insc) = 2024;