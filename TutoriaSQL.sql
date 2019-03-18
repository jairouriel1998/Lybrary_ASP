use master
if exists (select * from sys.databases where name= 'LibraryDB')
drop database LibraryDB

create database LibraryDB
go

use LibraryDB
go

CREATE TABLE dbo.Usuario(
	idUsuario INT IDENTITY(1,1) NOT NULL,
	nombres VARCHAR(30) NOT NULL,
	apellidos VARCHAR(30) NOT NULL,
	correo VARCHAR(30) NOT NULL,
	contrasena VARCHAR(30) NOT NULL,
	PRIMARY KEY(idUsuario)
)
go

CREATE TABLE dbo.Alumnos(
	numeroCuenta VARCHAR(10) NOT NULL, 
	nombreCompleto VARCHAR(50) NOT NULL,
	carrera VARCHAR(25) NOT NULL,
	PRIMARY KEY(numeroCuenta)
)
go

CREATE TABLE dbo.Libros(
	idLibros INT IDENTITY(1,1) NOT NULL,
	ISBN VARCHAR(30) NOT NULL,
	titulo VARCHAR(30) NOT NULL,
	autor VARCHAR(30) NOT NULL,
	categoria VARCHAR(30) NOT NULL,
	disponibles INT NOT NULL,
	PRIMARY KEY(idLibros)
)
go

CREATE TABLE dbo.Prestamos(
	idPrestamo INT IDENTITY(1,1) NOT NULL,
	idLibro INT NOT NULL,
	idUsuario INT NOT NULL,
	cuentaAlumno VARCHAR(10) NOT NULL,
	fechaPrestamo DATE NOT NULL,
	fechaDevolucion DATE NOT NULL
	PRIMARY KEY(idPrestamo),
	FOREIGN KEY(idLibro) REFERENCES dbo.Libros(idLibros),
	FOREIGN KEY(idUsuario) REFERENCES dbo.Usuario(idUsuario),
	FOREIGN KEY(cuentaAlumno) REFERENCES dbo.Alumnos(numeroCuenta)
)
go

-- Procedimientos almacenados de incersion

CREATE PROCEDURE sp_iUsuario
	@nombres VARCHAR(30),
	@apellidos VARCHAR(30),
	@correo VARCHAR(30),
	@contrasena VARCHAR(30)
AS INSERT INTO dbo.Usuario(
	nombres,
	apellidos,
	correo,
	contrasena
)VALUES(
	@nombres,
	@apellidos,
	@correo,
	@contrasena
)
go

CREATE PROCEDURE sp_iAlumno
	@numeroCuenta VARCHAR(10),
	@nombreCompleto VARCHAR(50),
	@carrera VARCHAR(25)
AS INSERT INTO dbo.Alumnos(
	numeroCuenta,
    nombreCompleto,
    carrera
)VALUES( 
	@numeroCuenta,
	@nombreCompleto,
	@carrera
)
go

CREATE PROCEDURE sp_iLibro
	@ISBN VARCHAR(30),
	@titulo VARCHAR(30),
	@autor VARCHAR(30),
	@categoria VARCHAR(30),
	@disponibles INT
AS INSERT INTO dbo.Libros(
	ISBN,
	titulo,
	autor,
	categoria,
	disponibles
)VALUES(
	@ISBN,
	@titulo,
	@autor,
	@categoria,
	@disponibles
)
go

CREATE PROCEDURE sp_iPrestamo
	@idLibro INT,
	@idUsuario INT,
	@cuentaAlumno VARCHAR(10),
	@fechaPrestamo DATE,
	@fechaDevolucion DATE
AS INSERT INTO dbo.Prestamos(
    idLibro,
    idUsuario,
    cuentaAlumno,
    fechaPrestamo,
    fechaDevolucion
)VALUES(
	@idLibro,
	@idUsuario,
	@cuentaAlumno,
	@fechaPrestamo,
	@fechaDevolucion
)
go

-- Procedimientos almacenados de seleccion

CREATE PROCEDURE sp_sUsuario AS SELECT
	idUsuario,
	nombres,
	apellidos,
	correo,
	contrasena
FROM dbo.Usuario
go

CREATE PROCEDURE sp_sAlumnos AS SELECT
	nombreCompleto,
    carrera
FROM dbo.Alumnos
go

CREATE PROCEDURE sp_sLibros AS SELECT 
	idLibros,
	ISBN,
	titulo,
	autor,
	categoria,
	disponibles
FROM dbo.Libros
go

CREATE PROCEDURE sp_sPrestamos AS SELECT
	P.idPrestamo,
	U.nombres,
	U.apellidos,
	A.nombreCompleto,
	A.carrera,
	L.ISBN,
	L.titulo,
	L.autor,
	L.categoria,
	L.disponibles,
	P.fechaPrestamo,
	P.fechaDevolucion
FROM dbo.Usuario U INNER JOIN dbo.Prestamos P ON P.idUsuario = U.idUsuario 
INNER JOIN dbo.Alumnos A ON P.cuentaAlumno = A.numeroCuenta 
INNER JOIN dbo.Libros L ON P.idLibro = L.idLibros
go 

CREATE PROCEDURE sp_sLogin
	@correo varchar(30),
	@contrasena varchar(30)
AS SELECT 
	idUsuario,
	nombres,
	apellidos
FROM 
	dbo.Usuario
WHERE
	dbo.Usuario.correo = @correo AND dbo.Usuario.contrasena = @contrasena 
go
-- Procesos almacenados de eliminacion.

CREATE PROCEDURE sp_ePrestamos
	@idPrestamo int
AS DELETE FROM 
	dbo.Prestamos
WHERE 
	idPrestamo = @idPrestamo
go
	
CREATE PROCEDURE sp_eLibro
	@idLibro int
AS DELETE FROM
	dbo.Libros
WHERE 
	idLibros = @idLibro
go



EXEC sp_iUsuario "Alexander","Humbold","alx@gmail.com","xla"
EXEC sp_iUsuario "Andrea","Borjas","andrewa@gmail.com","and"
go

EXEC sp_iAlumno "31711111","Isaí leonardo Lopez Andino","Ing. en sistemas"
EXEC sp_iAlumno "31711123","Alejandra Jackeline Guzmán","Ing. en sistemas"
EXEC sp_iAlumno "31715512","Ernesto Flores Flores","Ing. en electrónica"
go

EXEC sp_iLibro "TH12155455","Complejidad de sistemas","Mauricio Soto","Tecnología",12
EXEC sp_iLibro "HM16541231","Sistemas operativos","Monserrat Estrada","Tecnología",23
EXEC sp_iLibro "MT12154562","Como superar a su ex","Angela Rios","Autoayuda",3
go
 
EXEC sp_iPrestamo 1, 1, "31711111", '2018-5-1', '2018-5-10'
EXEC sp_iPrestamo 2, 2, "31711123", '2018-4-5', '2018-4-15'
EXEC sp_iPrestamo 3, 2, "31715512", '2018-4-9', '2018-4-19'
go
/*
EXEC sp_sPrestamos
go

EXEC sp_ePrestamos 2
go

EXEC sp_sPrestamos
go 

EXEC sp_sUsuario
go

EXEC sp_sLogin "alx@gmail.com", "xla"
go

EXEC sp_sLibros
go
*/