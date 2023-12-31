USE [DBAPI]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 14/11/2023 11:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro], [IdRol]) VALUES (1, N'123456789', N'Juana', N'690577998', N'juanamercedes@gmail.com', N'Managua', CAST(N'2023-11-14T10:08:33.117' AS DateTime), 1)
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro], [IdRol]) VALUES (2, N'910111213', N'Maria', N'227715469', N'mariap@gmail.com', N'Jinotega', CAST(N'2023-11-14T10:08:33.117' AS DateTime), 3)
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro], [IdRol]) VALUES (3, N'781546697', N'Cristina', N'781245693', N'cristi@gmail.com', N'Leon', CAST(N'2023-11-14T10:08:33.117' AS DateTime), 2)
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro], [IdRol]) VALUES (4, N'545684869', N'Reyna', N'794799685', N'reynaleon@gmail.com', N'Chinandega', CAST(N'2023-11-14T10:08:33.117' AS DateTime), 4)
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro], [IdRol]) VALUES (5, N'918171566', N'Aracely', N'844516991', N'aracelyp@gmail.com', N'Boaco', CAST(N'2023-11-14T10:08:33.117' AS DateTime), 3)
INSERT [dbo].[USUARIO] ([IdUsuario], [DocumentoIdentidad], [Nombres], [Telefono], [Correo], [Ciudad], [FechaRegistro], [IdRol]) VALUES (6, N'0165849156', N'Henry Orozco', N'78451810', N'anthoso3@gmail.com', N'Managua', CAST(N'2023-11-14T11:14:10.033' AS DateTime), 5)

SET IDENTITY_INSERT [dbo].[USUARIO] OFF

ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT (getdate()) FOR [FechaRegistro]

SET IDENTITY_INSERT [dbo].[USUARIO] OFF

--------------------------------

USE [DBAPI]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([IdRol], [Descripcion], [FechaRegistro]) VALUES (1, N'Supervisor', CAST(N'2023-11-14T10:12:40.400' AS DateTime))
GO
INSERT [dbo].[Roles] ([IdRol], [Descripcion], [FechaRegistro]) VALUES (2, N'Arquitecto Software', CAST(N'2023-11-14T10:12:46.683' AS DateTime))
GO
INSERT [dbo].[Roles] ([IdRol], [Descripcion], [FechaRegistro]) VALUES (3, N'Desarrollador', CAST(N'2023-11-14T10:12:51.177' AS DateTime))
GO
INSERT [dbo].[Roles] ([IdRol], [Descripcion], [FechaRegistro]) VALUES (4, N'Analista', CAST(N'2023-11-14T10:12:53.577' AS DateTime))
GO
INSERT [dbo].[Roles] ([IdRol], [Descripcion], [FechaRegistro]) VALUES (5, N'DevOps', CAST(N'2023-11-14T10:13:18.250' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO