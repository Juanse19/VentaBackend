USE [VentaAPI]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [int] NOT NULL,
	[nombre] [varchar](40) NULL,
	[apellido] [varchar](100) NULL,
	[telefono] [varchar](40) NULL,
 CONSTRAINT [PK__Cliente__] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[idDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[valor_Unitario] [decimal](10, 2) NULL,
	[total] [decimal](10, 2) NULL,
 CONSTRAINT [PK__DetalleV__] PRIMARY KEY CLUSTERED 
(
	[idDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[valor_Unitario] [decimal](18, 2) NOT NULL,
	[stock] [int] NOT NULL,
 CONSTRAINT [PK__Producto__07F4A132B3DE1442] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 23/08/2022 12:11:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NULL,
	[fechaRegistro] [datetime] NULL,
 CONSTRAINT [PK__Venta__077D5614D2880592] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220822003455_Initial', N'5.0.5')
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([idCliente], [cedula], [nombre], [apellido], [telefono]) VALUES (2, 1075321654, N'Marcos', N'Son Bernal ', N'312456789')
INSERT [dbo].[Cliente] ([idCliente], [cedula], [nombre], [apellido], [telefono]) VALUES (23, 1075221458, N'Nicolas', N'Moreno', N'3184904758')
INSERT [dbo].[Cliente] ([idCliente], [cedula], [nombre], [apellido], [telefono]) VALUES (28, 1075878947, N'Maria Jose', N'Carmelo', N'54545487')
INSERT [dbo].[Cliente] ([idCliente], [cedula], [nombre], [apellido], [telefono]) VALUES (29, 123456789, N'Carlos', N'Ramírez', N'3163937291')
INSERT [dbo].[Cliente] ([idCliente], [cedula], [nombre], [apellido], [telefono]) VALUES (1003, 1001456454, N'Mariana', N'Hernandez', N'3208364575')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleVenta] ON 

INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1, 1, 1, 2, CAST(4000000.00 AS Decimal(10, 2)), CAST(8000000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (2, 2, 2, 0, CAST(3500000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (3, 2, 4, 0, CAST(8000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1002, 1002, 1, 1, CAST(4000000.00 AS Decimal(10, 2)), CAST(4000000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1003, 1003, 2, 1, CAST(3500000.00 AS Decimal(10, 2)), CAST(3500000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1004, 1004, 5, 1, CAST(78000.00 AS Decimal(10, 2)), CAST(78000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1005, 1004, 1, 1, CAST(4000000.00 AS Decimal(10, 2)), CAST(4000000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1006, 1005, 4, 2, CAST(8000.00 AS Decimal(10, 2)), CAST(16000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1007, 1005, 1004, 2, CAST(5000000.00 AS Decimal(10, 2)), CAST(10000000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1008, 1006, 1004, 2, CAST(5000000.00 AS Decimal(10, 2)), CAST(10000000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1009, 1006, 4, 3, CAST(8000.00 AS Decimal(10, 2)), CAST(24000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1010, 1007, 1, 1, CAST(4000000.00 AS Decimal(10, 2)), CAST(4000000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [valor_Unitario], [total]) VALUES (1011, 1007, 4, 2, CAST(8000.00 AS Decimal(10, 2)), CAST(16000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[DetalleVenta] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombre], [valor_Unitario], [stock]) VALUES (1, N'Iphone 13 Pro', CAST(4000000.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[Producto] ([idProducto], [nombre], [valor_Unitario], [stock]) VALUES (2, N'Iphone 12 Pro Max', CAST(3500000.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[Producto] ([idProducto], [nombre], [valor_Unitario], [stock]) VALUES (4, N'Xiaomi', CAST(8000.00 AS Decimal(18, 2)), -4)
INSERT [dbo].[Producto] ([idProducto], [nombre], [valor_Unitario], [stock]) VALUES (5, N'Mazda 2', CAST(78000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [valor_Unitario], [stock]) VALUES (1002, N'Redmi Note 10 S', CAST(150.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Producto] ([idProducto], [nombre], [valor_Unitario], [stock]) VALUES (1003, N'Motorola X', CAST(2000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Producto] ([idProducto], [nombre], [valor_Unitario], [stock]) VALUES (1004, N'Iphone 14 Pro Max', CAST(5000000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([idVenta], [idCliente], [fechaRegistro]) VALUES (1, 2, CAST(N'2022-08-22T03:44:30.893' AS DateTime))
INSERT [dbo].[Venta] ([idVenta], [idCliente], [fechaRegistro]) VALUES (2, 28, CAST(N'2022-08-22T17:15:49.323' AS DateTime))
INSERT [dbo].[Venta] ([idVenta], [idCliente], [fechaRegistro]) VALUES (1002, 29, CAST(N'2022-08-23T03:25:10.840' AS DateTime))
INSERT [dbo].[Venta] ([idVenta], [idCliente], [fechaRegistro]) VALUES (1003, 29, CAST(N'2022-08-23T03:45:51.707' AS DateTime))
INSERT [dbo].[Venta] ([idVenta], [idCliente], [fechaRegistro]) VALUES (1004, 2, CAST(N'2022-08-23T03:54:28.797' AS DateTime))
INSERT [dbo].[Venta] ([idVenta], [idCliente], [fechaRegistro]) VALUES (1005, 1003, CAST(N'2022-08-23T04:02:24.503' AS DateTime))
INSERT [dbo].[Venta] ([idVenta], [idCliente], [fechaRegistro]) VALUES (1006, 1003, CAST(N'2022-08-23T04:40:32.260' AS DateTime))
INSERT [dbo].[Venta] ([idVenta], [idCliente], [fechaRegistro]) VALUES (1007, 1003, CAST(N'2022-08-23T04:49:56.920' AS DateTime))
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK__DetalleVe__idPro__60A75C0F] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK__DetalleVe__idPro__60A75C0F]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK__DetalleVe__idVen__5FB337D6] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK__DetalleVe__idVen__5FB337D6]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK__Venta__idUsuario__5CD6CB2B] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK__Venta__idUsuario__5CD6CB2B]
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarVenta]    Script Date: 23/08/2022 12:11:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[sp_RegistrarVenta](

@idCliente int,
@productos xml
)
as
begin
	declare @nrodocgenerado varchar(6)
	declare @nro int
	declare @idventa int

	declare @tbproductos table (
	IdProducto int,
	Cantidad int,
	Valor_Unitario decimal(10,2),
	Valor_Total decimal(10,2)
	)

	BEGIN TRY
		BEGIN TRANSACTION

			insert into @tbproductos(IdProducto,Cantidad,Valor_Unitario,Valor_Total)
			select 
				nodo.elemento.value('IdProducto[1]','int') as IdProducto,
				nodo.elemento.value('Cantidad[1]','int') as Cantidad,
				nodo.elemento.value('Valor_Unitario[1]','decimal(10,2)') as Precio,
				nodo.elemento.value('Valor_Total[1]','decimal(10,2)') as Total
			from @productos.nodes('Productos/Item') nodo(elemento)


			insert into Venta(idCliente) 
			values (@idCliente)


			set @idventa = SCOPE_IDENTITY()

			insert into DetalleVenta(idVenta,idProducto,cantidad,Valor_Unitario,Total) 
			select @idventa,IdProducto,Cantidad,Valor_Unitario,Valor_Total from @tbproductos

			update p set p.Stock = p.Stock - dv.Cantidad from PRODUCTO p
			inner join @tbproductos dv on dv.IdProducto = p.IdProducto

		COMMIT
		

	END TRY
	BEGIN CATCH
		ROLLBACK
		
	END CATCH

end
GO
