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

creacion de tablas con clave primaria. 

use MundoPokemon_DB;
GO
create table Elementos(
Id int PRIMARY KEY, -- constrain restriccion
Descripcion varchar (50)
);



Create table Habilidades(
Id int not null,
Nombre varchar (50),
Descripcion varchar (250), 
IdTipo int, 
CONSTRAINT PK_Habilidad PRIMARY KEY (Id),
);




create table [Pokemons.Tipos](
id int not null, 
IdPokemon int, 
IdElemento int, 
CONSTRAINT PK_Pokemons PRIMARY KEY(Id),
CONSTRAINT FK_PokeTipos FOREIGN KEY (IdElemento) REFERENCES Elementos(id),
);
--------------------------------------seguimos----------------- 01/7/25

--ALERT ADD, ALTER, DROP

ALTER TABLE Pokemons
ALTER COLUMN Id int not null;


ALTER TABLE Pokemons
ADD CONSTRAINT PK_Pokemon PRIMARY KEY (Id)


ALTER TABLE Pokemons
ADD PESO int,
ImagenUrl Varchar (250),
IdEvolucion int not null;




ALTER TABLE [Pokemons.Habilidades]
ADD CONSTRAINT FK_PokeHabilidad_Pokemons FOREIGN KEY (IdPokemon) REFERENCES Pokemons(Id)



--ALERT ADD, ALTER, DROP

ALTER TABLE Pokemons
ALTER COLUMN Id int not null;


ALTER TABLE Pokemons
ADD CONSTRAINT PK_Pokemon PRIMARY KEY (Id)


ALTER TABLE Pokemons
ADD PESO int,
ImagenUrl Varchar (250),
IdEvolucion int not null;




ALTER TABLE [Pokemons.Habilidades]
ADD CONSTRAINT FK_PokeHabilidad_Pokemons FOREIGN KEY (IdPokemon) REFERENCES Pokemons(Id)














