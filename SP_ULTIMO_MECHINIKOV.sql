USE [TEST]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 23/01/2024 16:54:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](p
	[Id_Dpto] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Id_Dpto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 23/01/2024 16:54:28 ******/
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
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo]) VALUES (1, N'GG', 1)
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo]) VALUES (2, N'VGGO', 1)
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo]) VALUES (3, N'VGGA', 1)
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo]) VALUES (4, N'GF', 1)
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo]) VALUES (5, N'GC', 1)
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo]) VALUES (6, N'GOI', 1)
GO
INSERT [dbo].[Departamento] ([Id_Dpto], [Name], [Activo]) VALUES (7, N'GRH', 1)
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (1, N'Roberto', N'Admin@123', 1, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (2, N'Daniel', N'Admin@123', 2, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (3, N'Luisa', N'Admin@123', 3, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (4, N'Ronald', N'Admin@123', 4, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (5, N'Donald', N'Admin@123', 4, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (6, N'Freddy', N'Admin@123', 4, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (7, N'Emma', N'Admin@123', 5, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (8, N'Olga', N'Admin@123', 6, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (9, N'Tania', N'Admin@123', 7, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Usuarios] ([Id_User], [Nombre], [Clave], [Id_Dpto], [Activo], [Creado], [Modificado]) VALUES (10, N'Rosa', N'Admin@123', 7, 1, CAST(N'2024-01-22T00:00:00' AS SmallDateTime), CAST(N'2024-01-22T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_Creado]  DEFAULT (getdate()) FOR [Creado]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_Modificado]  DEFAULT (getdate()) FOR [Modificado]
GO
/****** Object:  StoredProcedure [dbo].[INS_Documento]    Script Date: 23/01/2024 16:54:28 ******/
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
/****** Object:  StoredProcedure [dbo].[ValidaUser]    Script Date: 23/01/2024 16:54:28 ******/
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
