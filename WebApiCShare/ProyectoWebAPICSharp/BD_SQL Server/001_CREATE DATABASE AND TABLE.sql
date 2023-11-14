use master
go
IF NOT EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE NAME = 'DBAPI')
CREATE DATABASE DBAPI

GO 

USE DBAPI

GO

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'USUARIO')
create table USUARIO(
IdUsuario int primary key identity(1,1),
DocumentoIdentidad varchar(60),
Nombres varchar(60),
Telefono varchar(60),
Correo varchar(60),
Ciudad varchar(60),
FechaRegistro datetime default getdate(),
IdRol int
)

go

select * from dbo.USUARIO

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Roles')
create table Roles(
IdRol int primary key identity(1,1),
Descripcion varchar(60),
FechaRegistro datetime default getdate()
)

go

select * from dbo.Roles