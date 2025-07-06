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


--ALTER MODIFICAR COLUMNAS!!!!





-----------------------------------------------------------------
--Use Master;
--go
--Create database CatalogoWebDB
-- MDF : MASTER DE DATOS master data file

-- LDF: log data file SE GUARDA LAS COSAS QUE HACEMOS CON LOS DATOS(RELACIONES, ELIMINAR, CAMBIAR , MODIFICAR)
--go


-- creacion de tabla usuarios, en catalogo web!!!

Create table USUARIO (
Id int not null,
Mail varchar(100),
Pass Varchar(100),
Nombre Varchar (100), 
Apellido Varchar(100),
UrlImagenPerfil Varchar(100),
Admin Varchar (100)

);

--Creacion de tabla articulos en catalogo webªª!!!

create table ARTICULOS (
Id int not null,
Codigo Varchar(50),
Nombre varchar(50),
Descripcion varchar (300), 
IdMarca int, 
IdCategoria int, 
ImagenUrl Varchar(100),
Precio Varchar(10)
--verificar que dato se pone en precio

);



--Creacion de tabla MARCAS

create table MARCAS (
Id int not null, 
Descripcion Varchar (300), 

);



--creacion de tabla CATEGORIAS.

create table CATEGORIAS (
Id int not null, 
Descripcion Varchar (300),
);


--Creacion de taba de FAVORITOS

create table FAVORITOS (
Id int not null,
IdUsuario int not null, 
IdArticulo int not null,
);


ALTER TABLE usuario 
ADD CONSTRAINT PK_Usuarios PRIMARY KEY (Id)


ALTER TABLE ARTICULOS 
ADD CONSTRAINT PK_Articulos PRIMARY KEY (Id)
--ADD CONSTRAINT FK_



ALTER TABLE MARCAS 
ADD CONSTRAINT PK_MARCAS PRIMARY KEY (ID)

ALTER TABLE CATEGORIAS 
ADD CONSTRAINT PK_CATEGORIAS PRIMARY KEY (ID)

ALTER TABLE ARTICULOS
ADD CONSTRAINT FK_MARCAS FOREIGN KEY (IdMarcas) REFERENCES MARCAS (ID)









