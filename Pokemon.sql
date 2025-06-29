!!Pokemon!!

--Use master;
--GO







-- MDF: master data file (archivo de datos)
--LDF: log data file (archivo de log, base de datos auxiliar)
--Trabajan en conjunto
--Podemos configurar >>> NAME, NAMEFILE, SIZE(tamaño), MAXSIZE(maximo tamaño), FILEGROUTH(cuanto crece?si llega al maximo que crezca ...mg más) 

--create database MundoPokemon_DB2 ON(
--NAME='MundoPokemon_DB2', 
--FILENAME='C:\Users\diego\OneDrive\Escritorio\BasesDeDatosSQLMaxiPrograma\MaxiFlix\MundoPokemon_db2.mdf', 
--SIZE= 10MB,
--MAXSIZE=500MG,
--FILEGROWTH= 100MG,
--)
--LOG ON(
--NAME='MundoPokemon_DB2_log', 
--FILENAME='C:\Users\diego\OneDrive\Escritorio\BasesDeDatosSQLMaxiPrograma\MaxiFlix\MundoPokemon_db2.log.ldf', 
--SIZE= 10MB,
--MAXSIZE=500MG,
--FILEGROWTH= 100MG,
--);





--GO
--Creacion tabla pokemons
--create table Pokemons(
--Nombre:
--tipo de dato
--null not null
--Id int
);

--GO 
create table Entrenadores (
Id int not null, 
Nombre varchar (50),
Apellido varchar (50),
NickName varchar (50),
Email varchar (100),
Clave varchar (25),
FechaNAcimiento date
);











