comienzo de DATABASE

-- ejemplos de clase 4 20/01/2025

-- operadores relacionales
-- = , > , <, >=, <= , !=

Select *
From Peliculas

Where MinutosDuracion > 120 -- KArate kid id 9 

Select * From [Peliculas.Reparto]
Where IdPelicula =9 -- 45, 47

Select top 5 * From Reparto 
Where id >= 45


Select * From Paises
Where Id =19


Select * From Reparto
Where id = 43

Select * From Paises 
Where id = 39

-------------24/1/25---------------------------------------
--OR  
-- AND
--NOT

Select * From Peliculas
Where Id = 9


Select * From [Peliculas.Reparto] Where IdPelicula = 9


Select * From Reparto
Where Id = 5 OR Id = 10 Or Id = 15


Select * From Peliculas
Where NOT (MinutosDuracion >=100 AND  MinutosDuracion <= 120)
AND Bio LIKE '%POLIC%'
OR Bio LIKE '%amor%'
OR Bio LIKE '%cien%'
OR Bio LIKE '%los%'




Select *From Peliculas
Where Titulo LIKE '%S'




----------------------------

-- IN 
-- BETWEEN
--funciones integradas
-- count , max , min, 

Select * From Peliculas

Select * From [Peliculas.Reparto] Where IdPelicula = 12

Select * From Reparto
Where Id IN (10, 15, 66, 67)


Select * From Reparto
Where Id BETWEEN 62 AND 67


Select * From Peliculas 
Where year(FechaEstreno) BETWEEN 2000 AND 2010



--25/01

-- NULL ( VACIO ABSOLUTO , LA NADA MISMA) ES UN VALOR ESPECIAL
--tipos de datos!!!!
--
-- int > NUMEROS enteros 1 , 2 , 3, 444 , 0 != NULL
-- money >Valores con , dinero numeros con coma  o NULL
-- datetime > Fechas o NULL
-- varchar > Textos o NULL, tambien puedo tener vacio (vacio es un valor) Null no.
-- bit > T o F
-- NULL DONDE ENTRA!??> ES UN VALOR ADICIONAL A TODAS LAS POSIBILIDADES.



Select * From Peliculas
Where IdDirector IS NOT NULL--CONSULTA FILTRO

Select * From Peliculas
Where IdDirector IS NULL--CONSULTA FILTRO 



-->>>>>>  27/01JOIN
--INNER JOIN -------> combina y filtra lo que las tablas tienen en comun
--LEFT JOIN --------> combina y filtra priorizando la tabla de la izquierda
--RIGHT JOIN -------> combina y filtra priorizando la tabla de la derecha
--FULL OUTER JOIN --> combina y filtra todo



Select Titulo Pelicula, Nombre Director 
From Peliculas P INNER JOIN Reparto R On P.IdDirector = R.Id

Select Titulo Pelicula, Nombre Director 
From Peliculas P INNER JOIN Reparto R on P.IdDirector = R.Id 



Select P.Titulo, R.Nombre, R.Apellido From Peliculas P -- 6
INNER JOIN [Peliculas.Reparto] PR On P.Id = PR.IdPelicula
INNER JOIN Reparto R On PR.IdReparto = R.Id
Where P.Id = 6


Select Titulo  From  Peliculas P
INNER JOIN [Peliculas.Plataformas] PL On P.Id = PL.IdPlataforma
INNER JOIN Plataformas U On PL.IdPlataforma = U.Id


------------>>>>08/02/25

--Insert Into Peliculas (*Titulo, Bio) Values (*en orden los datos a intsertar(titulo'', bio'')



Select * From Peliculas

Insert Into Peliculas (FechaEstreno, Titulo, MinutosDuracion, Bio, IdDirector)
Values
('1982-11-04', 'Rambo',
93,
'................',
15)


--YYYY--MM--DD

Select * From Peliculas Where Id= 29

-- otra forma de cargar datos


Insert Into Peliculas Values(
'1995-02-16',
'Pulp Fiction',
154,
'..... .... ..........4f ',
NULL)

----------- 09/02/25  --------------------------------------------------------



Select * From Peliculas

Select * From [Peliculas.Plataformas]

Insert Into PLataformas (Id, Nombre, Precio)-- se agrega plataforma
Values 
(99, 'Campus MAxi', 99.99)


Select * From Paises


Select * From Peliculas


Select * From Reparto
Where Dirige =1

Insert Into Reparto Values ('John', 'Lasseter', 11, 1957-01-12, '',1)--Se agrega director en carpeta reparto

Insert Into PEliculas (FechaEstreno, Titulo, MinutosDuracion, Bio, IdDirector)
Values 
(1996-03-14, 'Toy Story', 81,
'Woody, el juguete favorito de Andy, se siente amenazado por la inesperada llegada de Buzz Lightyear, el guardián del espacio.',113)

/*  SE AGREGA PEICULA """" TOY STORY"""" Y SU DIRECTOR */

-- UPDATE 

Update Peliculas Set
Bio = 'El veterano de Vietnam, John Rambo, envuelve a la policía en una cacería en el bosque tras escapar de un vil comisario.'
Where Id = 29


Select * From  Peliculas

-- SE PUEDE MODIFICAR UN LOTE DE REGISTROS. 

Select * From REparto

---Update Peliculas Set IdDirector =55 Where MinutosDuracion > 140
Select * From Peliculas Where MinutosDuracion >140


-- ELIMINACION LOGICA ( ELIMINAR UN REGISTRO PERO NO ELIMINARLO)

--dAR DE BAJA PELICULA ROCKY

Update Peliculas Set  MinutosDuracion =  MinutosDuracion*-1
Where Id = 3 -- pelicula pasa a tener valor negativo 


Select * From Peliculas Where 
MinutosDuracion < 0-- consulto las peliculas que tengan valor superior a cero. 


--- Delete From Peliculas Where  Id = 28

Select * From Peliculas 
Where Id = 28


-- no se puede eliminar cualquier cosa!!
-- ya que si tiene mas relacion con ottras tablas , 
--se necesita eliminar en cascada y NO ES RECOMENDABLE
--  dependera del contexto. 
-- el delete se utiliza en las pintas mas que nada no tanto en las centrales.




Select * From [Peliculas.Puntuacion]


------------------------------------------------

--Repaso

Select Count(id)'total actores' From [Peliculas.Reparto] Where IdPelicula = 7



-----------------------------------------------

--    17/02/2025


----repaso


--  1) Obtener las Películas estrenadas en la Década de los '80.

Select * From Peliculas
Where YEAR (FechaEstreno) BETWEEN 1980 AND 1990
-- PELICULAS DECADA DEL '80


Select * From Peliculas
Where YEAR (FechaEstreno) BETWEEN 1990 AND 2000
-- PELICULAS DECADA DEL '90


Select * From Peliculas
Where MONTH (FechaEstreno) BETWEEN 04 AND 05
-- PELICUALS DEL MES DE ABRIL 


-- 2) Obtener los Actores nacidos en la Década de los '70.

Select * From Reparto
Where Year (FechaNacimiento) BETWEEN 1970 AND 1980




--3) Obtener las Peliculas que se encuentran en la Plataforma de Disney+.
select * from Peliculas


Select Titulo, Bio, IdDirector From Peliculas P
Inner join [Peliculas.Plataformas] PP on P.Id= PP.IdPelicula
--inner join Media m on P.Id = M.IdPelicula
--Inner join [Peliculas.Plataformas] PP on P.Id= PP.IdPelicula
Inner join Plataformas PL On PP.IdPelicula = PL.Id
where PP.IdPlataforma = 3


-- no da el resultado queda pulir este ejjercicio


select * from media 
select * from [Peliculas.Plataformas]
select * from Plataformas


--4) Obtener la Cantidad de Películas con Clasificación R. (Considerar usar el Comando LIKE)


---- 
Select * From [Peliculas.Clasificaciones]
Where IdClasificacion LIKE '4'

-- DA COMO RESULTADOLAS 10 PELICULAS FALTA PULIR QUE SOLO TRAIGA LO SOLICITADO


--5) Obtener la Película que mayor duración tiene.



Select Titulo, MinutosDuracion
From Peliculas

Where MinutosDuracion > 170


SOLUCION AL EJERCICIO 


Select top 1 Titulo[PELICULA], MinutosDuracion[DURACIÓN] From Peliculas
Where MinutosDuracion >100

eL TOP selecciona los maximos de numeros que le haya undicado segin el where y relacionado a la carprpetaque corrsponda

--


--6) Obtener las Películas de Categoría 'Superhéroes'.






--7) Obtener la Cantidad de Actores que trabajaron en la Película 'Los Intocables'.

Select Count(id)'total actores' From [Peliculas.Reparto] Where IdPelicula = 7

resultado  okkkkk



--8) Obtener los Actores que trabajaron en la Películas 'Los Intocables'.

Select  R. Nombre, R.Apellido, PA.Nombre, r.FechaNacimiento'F.Nacimiento' From Peliculas P
inner join [Peliculas.Reparto] PR on P.Id = PR.IdPelicula
inner join Reparto R on PR.IdReparto = R.Id
inner join Paises PA on IdNacionalidad= PA.Id
Where p.Id= 7

resuelto oookk


--9) Obtener el Total de Películas del Catálogo.

select Count(id) 'CANT. DE PELICULAS' From peliculas

resultado  oookkkk


--10) Obtener la Lista de Usuarios Inactivos.





