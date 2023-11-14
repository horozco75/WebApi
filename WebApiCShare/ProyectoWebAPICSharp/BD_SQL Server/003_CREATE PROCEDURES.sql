go
use DBAPI
go
--************************ VALIDAMOS SI EXISTE EL PROCEDIMIENTO ************************--

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_registrar')
DROP PROCEDURE usp_registrar

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_modificar')
DROP PROCEDURE usp_modificar

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_obtener')
DROP PROCEDURE usp_obtener

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_listar')
DROP PROCEDURE usp_obtener

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_eliminar')
DROP PROCEDURE usp_eliminar

go

--************************ PROCEDIMIENTOS PARA CREAR ************************--
create procedure usp_registrar(
@documentoidentidad varchar(60),
@nombres varchar(60),
@telefono varchar(60),
@correo varchar(60),
@ciudad varchar(60),
@idrol int
)
as
begin

insert into USUARIO(DocumentoIdentidad,Nombres,Telefono,Correo,Ciudad,IdRol)
values
(
@documentoidentidad,
@nombres,
@telefono,
@correo,
@ciudad,
@idrol
)

end


go

create procedure usp_modificar(
@idusuario int,
@documentoidentidad varchar(60),
@nombres varchar(60),
@telefono varchar(60),
@correo varchar(60),
@ciudad varchar(60),
@idrol int
)
as
begin

update USUARIO set 
DocumentoIdentidad = @documentoidentidad,
Nombres = @nombres,
Telefono = @telefono,
Correo = @correo,
Ciudad = @ciudad,
IdRol = @idrol
where IdUsuario = @idusuario

end

go

create procedure usp_obtener(@idusuario int)
as
begin

--select * from usuario where IdUsuario = @idusuario
select u.IdUsuario, u.DocumentoIdentidad, u.Nombres, u.Telefono, u.Correo, u.Ciudad, u.FechaRegistro,
u.idrol,r.descripcion as Rol from usuario u INNER JOIN roles r on r.idrol = u.idrol where IdUsuario = @idusuario
end

go
create procedure usp_listar
as
begin

--select * from usuario
select u.IdUsuario, u.DocumentoIdentidad, u.Nombres, u.Telefono, u.Correo, u.Ciudad, u.idrol, r.descripcion as Rol from usuario u INNER JOIN roles r on r.idrol = u.idrol
end


go

go

create procedure usp_eliminar(
@idusuario int
)
as
begin

delete from usuario where IdUsuario = @idusuario

end

go