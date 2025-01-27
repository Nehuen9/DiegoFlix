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





