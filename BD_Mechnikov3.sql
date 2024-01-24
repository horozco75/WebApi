USE [TEST]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 24/01/2024 16:44:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id_Dpto] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Codigo] [varchar](20) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Id_Dpto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documentos]    Script Date: 24/01/2024 16:44:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documentos](
	[Id_Docto] [int] IDENTITY(1,1) NOT NULL,
	[Id_User] [bigint] NOT NULL,
	[NoDocumento] [varchar](50) NULL,
	[FechaRegistro] [smalldatetime] NOT NULL,
	[Destinatario] [varchar](50) NULL,
	[CntPaginas] [varchar](50) NULL,
	[DescripDocumento] [varchar](50) NULL,
	[ElaboradoPor] [varchar](50) NULL,
	[FirmadoPor] [varchar](50) NULL,
	[ModoEnvio] [varchar](50) NULL,
	[Observaciones] [varchar](150) NULL,
	[LugarArchivo] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 24/01/2024 16:44:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_User] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Clave] [nvarchar](50) NOT NULL,
	[Id_Dpto] [bigint] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Creado] [smalldatetime] NOT NULL,
	[Modificado] [smalldatetime] NOT NULL,
	[Codigo] [varchar](20) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo], [Codigo]) VALUES (1, N'GG', 1, N'01')
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo], [Codigo]) VALUES (2, N'VGGO', 1, N'02')
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo], [Codigo]) VALUES (3, N'VGGA', 1, N'03')
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo], [Codigo]) VALUES (4, N'GF', 1, N'04')
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo], [Codigo]) VALUES (5, N'GC', 1, N'05')
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo], [Codigo]) VALUES (6, N'GOI', 1, N'06')
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo], [Codigo]) VALUES (7, N'GRH', 1, N'07')
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Documentos] ON 
GO
INSERT [dbo].[Documentos] ([Id_Docto], [Id_User], [NoDocumento], [FechaRegistro], [Destinatario], [CntPaginas], [DescripDocumento], [ElaboradoPor], [FirmadoPor], [ModoEnvio], [Observaciones], [LugarArchivo]) VALUES (6, 1, N'01/2401/2024/6', CAST(N'2024-01-24T00:00:00' AS SmallDateTime), N'PRUEBA06', N'Nicaragua', N'1 Pag', N'HR', N'RT', N'Fisico', N'No existen', N'Salon Principal')
GO
INSERT [dbo].[Documentos] ([Id_Docto], [Id_User], [NoDocumento], [FechaRegistro], [Destinatario], [CntPaginas], [DescripDocumento], [ElaboradoPor], [FirmadoPor], [ModoEnvio], [Observaciones], [LugarArchivo]) VALUES (7, 6, N'06/2401/2024/7', CAST(N'2024-01-24T00:00:00' AS SmallDateTime), N'Panama', N'1 Pag', N'Texto50', N'HT', N'JH', N'fisico', N'Pruebas Exitosas', N'Salon Central')
GO
INSERT [dbo].[Documentos] ([Id_Docto], [Id_User], [NoDocumento], [FechaRegistro], [Destinatario], [CntPaginas], [DescripDocumento], [ElaboradoPor], [FirmadoPor], [ModoEnvio], [Observaciones], [LugarArchivo]) VALUES (5, 1, N'01/2401/2024/5', CAST(N'2024-01-24T00:00:00' AS SmallDateTime), N'PRUEBA03', N'Nicaragua', N'1 Pag', N'TR', N'HH', N'Fisico', N'No existen', N'Salon Principal')
GO
INSERT [dbo].[Documentos] ([Id_Docto], [Id_User], [NoDocumento], [FechaRegistro], [Destinatario], [CntPaginas], [DescripDocumento], [ElaboradoPor], [FirmadoPor], [ModoEnvio], [Observaciones], [LugarArchivo]) VALUES (8, 9, N'09/2401/2024/08', CAST(N'2024-01-24T00:00:00' AS SmallDateTime), N'Costa Rica', N'1 Pag', N'Prueba 08', N'TG', N'DF', N'Fisico', N'Resultados Exitosos', N'Centro Managua')
GO
INSERT [dbo].[Documentos] ([Id_Docto], [Id_User], [NoDocumento], [FechaRegistro], [Destinatario], [CntPaginas], [DescripDocumento], [ElaboradoPor], [FirmadoPor], [ModoEnvio], [Observaciones], [LugarArchivo]) VALUES (9, 5, N'05/2401/2024-09', CAST(N'2024-01-24T00:00:00' AS SmallDateTime), N'Ecuador', N'9 Pág', N'Texto 12', N'LT', N'SU', N'Fisico', N'Pruebas Exitosas', N'Chinandega')
GO
SET IDENTITY_INSERT [dbo].[Documentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (1, N'Roberto', N'Admin@123', 1, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'01')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (2, N'Daniel', N'Admin@123', 2, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'02')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (3, N'Luisa', N'Admin@123', 3, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'03')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (4, N'Ronald', N'Admin@123', 4, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'04')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (5, N'Donald', N'Admin@123', 4, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'05')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (6, N'Freddy', N'Admin@123', 4, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'06')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (7, N'Emma', N'Admin@123', 5, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'07')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (8, N'Olga', N'Admin@123', 6, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'08')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (9, N'Tania', N'Admin@123', 7, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'09')
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado], [Codigo]) VALUES (10, N'Rosa', N'Admin@123', 7, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime), N'10')
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Documentos] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_Creado]  DEFAULT (getdate()) FOR [Creado]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_Modificado]  DEFAULT (getdate()) FOR [Modificado]
GO
/****** Object:  StoredProcedure [dbo].[Emplogin]    Script Date: 24/01/2024 16:44:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Emplogin]  
(  
@Usename Varchar (20),  
@word varchar (10)  
)  
as  
Begin  
Select COUNT(*) FROM [TEST].[dbo].[Usuarios] where [Nombre]=@Usename and [Clave]=@word  
End  
GO
/****** Object:  StoredProcedure [dbo].[INS_Documento]    Script Date: 24/01/2024 16:44:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INS_Documento]
AS
BEGIN
SELECT CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE)


--SELECT 

SELECT MONTH(GETDATE()), Day(GetDate())

SELECT '01' +'/'+  FORMAT(GETDATE(),'ddMM') + Year(GetDate()) as Fecha;

SELECT CONVERT(VARCHAR(5),GETDATE(),103) Fecha;

SELECT CONCAT(MONTH(GETDATE()), '/', Day(GetDate())) as Fecha


SELECT FORMAT(GETDATE(),'MM/dd') Fecha;

end;

GO
/****** Object:  StoredProcedure [dbo].[sp_guardar_documento]    Script Date: 24/01/2024 16:44:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_guardar_documento]

@codigoUsuario varchar(10),
--@NoDocto varchar(50),
--@FCreado [smalldatetime] NOT NULL,
@destinatario varchar(50),
@cntpaginas varchar(50),
@descripdocumento varchar(100),
@elaboradopor varchar(50),
@firmadopor varchar(50),
@modoenvio varchar(50),
@observaciones varchar(100),
@lugararchivo varchar(100)
as
begin

	DECLARE @xConsec AS NUMERIC(38, 0) = 0, 
	@xNoDocto as VARCHAR(120) = (SELECT @codigoUsuario +'/'+ FORMAT(GETDATE(),'ddMM') +'/'+ CONVERT(VARCHAR(5),Year(GETDATE()),103)) 
	SET @xConsec = (SELECT (CASE WHEN Q.NO_REG IS NULL THEN 1 ELSE (Q.NO_REG + 1) END) AS CONSEC_REG
	FROM (SELECT MAX(id_docto) AS NO_REG FROM TEST.dbo.documentos ) Q);

	--DECLARE @xLastNoDoc as varchar(50) = @xNoDocto + (SELECT CONCAT('/',(SELECT MAX(id_docto)+1 AS NO_REG FROM TEST.dbo.documentos)))
	DECLARE @NoCon VARCHAR(20) = (SELECT MAX(id_docto)+1 AS NO_REG FROM TEST.dbo.documentos)
	DECLARE @xLastNoDoc as varchar(50) = @xNoDocto + ((SELECT CONCAT('-',(SELECT RIGHT('00' + CAST(@NoCon AS NVARCHAR(5)), 5)))))

	insert into [dbo].[Documentos](id_user, NoDocumento, FechaRegistro, Destinatario,
	CntPaginas, DescripDocumento, ElaboradoPor, FirmadoPor, ModoEnvio, Observaciones, LugarArchivo)
	values(@codigoUsuario, @xLastNoDoc, CAST(DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE())) AS DATE), 
	@destinatario,@cntpaginas,@descripdocumento, @elaboradopor, @firmadopor, @modoenvio,
	@observaciones, @lugararchivo)
end

GO
/****** Object:  StoredProcedure [dbo].[ValidaUser]    Script Date: 24/01/2024 16:44:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 --EXEC [dbo].[ValidaUser] 'Roberto', 'Admin@123'
 --GO
 
 CREATE PROC [dbo].[ValidaUser]
 @User varchar(30),
 @Pass varchar(30) 
 AS BEGIN
 SELECT  u.Nombre, u.Clave, u.Id_Dpto, d.Name as Area  FROM [dbo].[Usuarios] u INNER JOIN Departamento d on d.Id_Dpto = u.Id_Dpto
 WHERE u.Nombre = @User and u.Clave = @Pass
 END 

GO
