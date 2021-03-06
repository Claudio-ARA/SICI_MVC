USE [SICI]
GO
/****** Object:  Table [dbo].[Altas_Inventario]    Script Date: 26/02/2021 10:17:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Altas_Inventario](
	[Id_Altas_Inventario] [int] IDENTITY(1,1) NOT NULL,
	[Año] [int] NOT NULL,
	[Sigla_Responsable] [varchar](4) NOT NULL,
	[Tipo_Bien] [varchar](10) NOT NULL,
	[Valor_Total_Presupuestario] [money] NOT NULL,
	[Total_Valorizado_Presupuestario] [money] NOT NULL,
	[Valor_Total_No_Presupuestario] [money] NOT NULL,
	[Total_Valorizado_No_Presupuestario] [money] NOT NULL,
	[Valor_Total_Donacion] [money] NOT NULL,
	[Total_Valorizado_Donacion] [money] NOT NULL,
	[Valor_Total_Transferencia] [money] NOT NULL,
	[Total_Valorizado_Transferencia] [money] NOT NULL,
	[Valor_Total_General] [money] NOT NULL,
	[Total_Valorizado_General] [money] NOT NULL,
 CONSTRAINT [PK_Altas_Inventario] PRIMARY KEY CLUSTERED 
(
	[Id_Altas_Inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Amortizaciones_Detalladas]    Script Date: 26/02/2021 10:17:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amortizaciones_Detalladas](
	[Id_Amortizacion_Detallada] [int] IDENTITY(1,1) NOT NULL,
	[Sigla] [varchar](4) NOT NULL,
	[Tipo_Bien] [varchar](10) NOT NULL,
	[Descripcion_Inventario] [varchar](50) NOT NULL,
	[Amortizacion_Anual] [money] NOT NULL,
	[Año] [int] NOT NULL,
 CONSTRAINT [PK_Amortizaciones_Detalladas] PRIMARY KEY CLUSTERED 
(
	[Id_Amortizacion_Detallada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Amortizaciones_Inventario]    Script Date: 26/02/2021 10:17:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amortizaciones_Inventario](
	[Id_Amortizacion_Inventario] [int] IDENTITY(1,1) NOT NULL,
	[Año_Alta] [int] NOT NULL,
	[Sigla_Destino] [varchar](4) NOT NULL,
	[Codigo_Destino] [varchar](6) NOT NULL,
	[Descripcion_Inventario] [varchar](50) NOT NULL,
	[Tipo_Bien] [varchar](10) NOT NULL,
	[Valor_Original] [money] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Valor_Actual] [money] NOT NULL,
 CONSTRAINT [PK_Amortizaciones_Inventario] PRIMARY KEY CLUSTERED 
(
	[Id_Amortizacion_Inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bajas_Anualizadas]    Script Date: 26/02/2021 10:17:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bajas_Anualizadas](
	[Id_Baja_Anualizada] [int] IDENTITY(1,1) NOT NULL,
	[Sigla] [varchar](4) NOT NULL,
	[Tipo_Bien] [varchar](10) NOT NULL,
	[Descripcion_Inventario] [varchar](50) NULL,
	[Año] [int] NOT NULL,
	[Total_Residual] [money] NOT NULL,
 CONSTRAINT [PK_Bajas_Anualizadas] PRIMARY KEY CLUSTERED 
(
	[Id_Baja_Anualizada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bajas_Inventario]    Script Date: 26/02/2021 10:17:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bajas_Inventario](
	[Id_Bajas_Inventario] [int] IDENTITY(1,1) NOT NULL,
	[Año_Alta] [int] NOT NULL,
	[Sigla] [varchar](4) NOT NULL,
	[Codigo] [varchar](6) NOT NULL,
	[Inventario] [varchar](50) NOT NULL,
	[Tipo_Bien] [varchar](10) NOT NULL,
	[Valor_Origen] [money] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Valor_Residual] [money] NOT NULL,
 CONSTRAINT [PK_Bajas_Inventario] PRIMARY KEY CLUSTERED 
(
	[Id_Bajas_Inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario_Detallado]    Script Date: 26/02/2021 10:17:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario_Detallado](
	[Id_Inventario_Detallado] [int] IDENTITY(1,1) NOT NULL,
	[Año_Alta] [int] NOT NULL,
	[Sigla] [varchar](4) NOT NULL,
	[Tipo_Bien] [varchar](10) NOT NULL,
	[Descripcion_Inventario] [varchar](50) NOT NULL,
	[Total_Original_Activos] [money] NOT NULL,
	[Amortizacion_Acumulada_Activos] [money] NOT NULL,
	[Valor_Total_Activos] [money] NOT NULL,
	[Total_Original_Bajas] [money] NOT NULL,
	[Total_Amortizado_Bajas] [money] NOT NULL,
	[Total_Residual_Bajas] [money] NOT NULL,
	[Total_General_Año] [money] NOT NULL,
 CONSTRAINT [PK_Inventario_Detallado] PRIMARY KEY CLUSTERED 
(
	[Id_Inventario_Detallado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patrimonio_Anualizado]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patrimonio_Anualizado](
	[Id_Patrimonio_Anualizado] [int] IDENTITY(1,1) NOT NULL,
	[Año] [int] NOT NULL,
	[Total_DGMN_Uso] [money] NOT NULL,
	[Total_SGNA_Uso] [money] NOT NULL,
	[Total_DGSA_Uso] [money] NOT NULL,
	[Total_SIHN_Uso] [money] NOT NULL,
	[Total_DIAB_Uso] [money] NOT NULL,
	[Total_SIEC_Uso] [money] NOT NULL,
	[Total_JEMA_Consumo] [money] NOT NULL,
	[Total_DIAB_Consumo] [money] NOT NULL,
	[Total_DIAE_Consumo] [money] NOT NULL,
 CONSTRAINT [PK_Patrimonio_Anualizado] PRIMARY KEY CLUSTERED 
(
	[Id_Patrimonio_Anualizado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patrimonio_Total]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patrimonio_Total](
	[Id_Patrimonio] [int] IDENTITY(1,1) NOT NULL,
	[Sigla] [varchar](4) NOT NULL,
	[Codigo] [varchar](6) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Inventario] [varchar](50) NOT NULL,
	[Tipo_Bien] [varchar](10) NOT NULL,
	[Total_Valorizado] [money] NOT NULL,
 CONSTRAINT [PK_Patrimonio_Total] PRIMARY KEY CLUSTERED 
(
	[Id_Patrimonio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responsables_Patrimoniales]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responsables_Patrimoniales](
	[Id_Responsable] [int] IDENTITY(1,1) NOT NULL,
	[Sigla] [varchar](4) NOT NULL,
 CONSTRAINT [PK_Responsables_Patrimoniales] PRIMARY KEY CLUSTERED 
(
	[Id_Responsable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Altas_Inventario] ON 

INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1, 2020, N'DGMN', N'USO', 20000000.0000, 15000000.0000, 25000000.0000, 20000000.0000, 15000000.0000, 10000000.0000, 20000000.0000, 10000000.0000, 80000000.0000, 55000000.0000)
INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (2, 2020, N'DIAB', N'USO', 25000000.0000, 20000000.0000, 25000000.0000, 15000000.0000, 12000000.0000, 10000000.0000, 20000000.0000, 15000000.0000, 82000000.0000, 60000000.0000)
INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (3, 2020, N'DGSA', N'USO', 20000000.0000, 18000000.0000, 20000000.0000, 10000000.0000, 15000000.0000, 10000000.0000, 12000000.0000, 10000000.0000, 67000000.0000, 48000000.0000)
INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (4, 2020, N'SIEC', N'USO', 15000000.0000, 10000000.0000, 18000000.0000, 14000000.0000, 16000000.0000, 12000000.0000, 11000000.0000, 10000000.0000, 60000000.0000, 46000000.0000)
INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (5, 2020, N'SIHN', N'USO', 22000000.0000, 20000000.0000, 15000000.0000, 12000000.0000, 13000000.0000, 11000000.0000, 12000000.0000, 10000000.0000, 62000000.0000, 53000000.0000)
INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (6, 2020, N'SGNA', N'USO', 20000000.0000, 16000000.0000, 22000000.0000, 20000000.0000, 15000000.0000, 12000000.0000, 20000000.0000, 15000000.0000, 77000000.0000, 63000000.0000)
INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (7, 2020, N'DIAB', N'CONSUMO', 22000000.0000, 20000000.0000, 25000000.0000, 20000000.0000, 15000000.0000, 10000000.0000, 20000000.0000, 10000000.0000, 82000000.0000, 60000000.0000)
INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (8, 2020, N'DIAE', N'CONSUMO', 25000000.0000, 22000000.0000, 24000000.0000, 22000000.0000, 20000000.0000, 18000000.0000, 16000000.0000, 14000000.0000, 85000000.0000, 76000000.0000)
INSERT [dbo].[Altas_Inventario] ([Id_Altas_Inventario], [Año], [Sigla_Responsable], [Tipo_Bien], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (9, 2020, N'JEMA', N'CONSUMO', 24000000.0000, 20000000.0000, 20000000.0000, 17000000.0000, 18000000.0000, 16000000.0000, 15000000.0000, 12000000.0000, 77000000.0000, 65000000.0000)
SET IDENTITY_INSERT [dbo].[Altas_Inventario] OFF
GO
SET IDENTITY_INSERT [dbo].[Amortizaciones_Detalladas] ON 

INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (1, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 10000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (2, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 15000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (3, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 20000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (4, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 25000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (5, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 30000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (7, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 35000000.0000, 2026)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (8, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 15000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (9, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 20000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (10, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 25000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (11, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 30000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (12, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 35000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (13, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 40000000.0000, 2026)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (14, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 20000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (15, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 25000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (16, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 30000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (17, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 35000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (18, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 40000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (19, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 45000000.0000, 2026)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (20, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 20000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (21, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 25000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (22, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 30000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (23, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 35000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (24, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 40000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (25, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 45000000.0000, 2026)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (26, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 30000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (27, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 35000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (28, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 40000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (29, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 45000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (30, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 50000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (31, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 55000000.0000, 2026)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (32, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 25000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (33, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 30000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (34, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 35000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (35, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 40000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (36, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 45000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (37, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 50000000.0000, 2026)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (38, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 40000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (39, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 45000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (40, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 50000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (41, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 55000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (42, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 60000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (43, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 65000000.0000, 2026)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (44, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 50000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (45, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 55000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (46, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 60000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (47, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 65000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (48, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 70000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (49, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 75000000.0000, 2026)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (50, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 50000000.0000, 2021)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (51, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 55000000.0000, 2022)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (52, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 60000000.0000, 2023)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (53, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 65000000.0000, 2024)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (54, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 70000000.0000, 2025)
INSERT [dbo].[Amortizaciones_Detalladas] ([Id_Amortizacion_Detallada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Amortizacion_Anual], [Año]) VALUES (55, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 75000000.0000, 2026)
SET IDENTITY_INSERT [dbo].[Amortizaciones_Detalladas] OFF
GO
SET IDENTITY_INSERT [dbo].[Amortizaciones_Inventario] ON 

INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (1, 2020, N'DGMN', N'354000', N'MATERIAL GENERAL NAVAL', N'USO', 45000000.0000, 20000000.0000, 25000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (2, 2020, N'SIEC', N'696000', N'LICENCIAS DE SOFTWARE', N'USO', 25000000.0000, 10000000.0000, 15000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (3, 2020, N'SGNA', N'456000', N'PATRIMONIO HISTORICO CULTURAL', N'USO', 30000000.0000, 15000000.0000, 15000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (4, 2020, N'DIAB', N'678000', N'INVENTARIO DE VESTUARIO', N'USO', 20000000.0000, 10000000.0000, 10000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (5, 2020, N'SIHN', N'897000', N'MATERIAL DE HIDROGRAFIA', N'USO', 35000000.0000, 15000000.0000, 20000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (6, 2020, N'DGSA', N'765000', N'MATERIAL DE SANIDAD', N'USO', 40000000.0000, 15000000.0000, 25000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (7, 2020, N'JEMA', N'323000', N'INVENTARIO DE REPUESTOS', N'CONSUMO', 35000000.0000, 15000000.0000, 20000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (8, 2020, N'DIAB', N'465000', N'INVENTARIO DE VIVERES', N'CONSUMO', 30000000.0000, 15000000.0000, 15000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (9, 2020, N'DIAE', N'654000', N'INVENTARIO DE MUNICIONES', N'CONSUMO', 25000000.0000, 10000000.0000, 15000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (10, 2019, N'DGMN', N'354000', N'MATERIAL GENERAL NAVAL', N'USO', 40000000.0000, 20000000.0000, 20000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (11, 2019, N'SIEC', N'696000', N'LICENCIAS DE SOFTWARE', N'USO', 20000000.0000, 10000000.0000, 10000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (12, 2019, N'SGNA', N'456000', N'PATRIMONIO HISTORICO CULTURAL', N'USO', 28000000.0000, 10000000.0000, 18000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (13, 2019, N'DIAB', N'678000', N'INVENTARIO DE VESTUARIO', N'USO', 25000000.0000, 10000000.0000, 15000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (14, 2019, N'SIHN', N'897000', N'MATERIAL DE HIDROGRAFIA', N'USO', 30000000.0000, 10000000.0000, 20000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (15, 2019, N'DGSA', N'765000', N'MATERIAL DE SANIDAD', N'USO', 35000000.0000, 15000000.0000, 20000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (16, 2019, N'JEMA', N'323000', N'INVENTARIO DE REPUESTOS', N'CONSUMO', 30000000.0000, 12000000.0000, 18000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (17, 2019, N'DIAB', N'465000', N'INVENTARIO DE VIVERES', N'CONSUMO', 20000000.0000, 10000000.0000, 10000000.0000)
INSERT [dbo].[Amortizaciones_Inventario] ([Id_Amortizacion_Inventario], [Año_Alta], [Sigla_Destino], [Codigo_Destino], [Descripcion_Inventario], [Tipo_Bien], [Valor_Original], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (18, 2019, N'DIAE', N'654000', N'INVENTARIO DE MUNICIONES', N'CONSUMO', 25000000.0000, 10000000.0000, 15000000.0000)
SET IDENTITY_INSERT [dbo].[Amortizaciones_Inventario] OFF
GO
SET IDENTITY_INSERT [dbo].[Bajas_Anualizadas] ON 

INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 2016, 15000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (2, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 2017, 20000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (3, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 2018, 25000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (4, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 2019, 40000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (5, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 2020, 45000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (6, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 2016, 30000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (7, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 2017, 35000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (8, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 2018, 40000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (9, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 2019, 45000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (10, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 2020, 50000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (11, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 2016, 10000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (12, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 2017, 20000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (13, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 2018, 25000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (14, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 2019, 30000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (15, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 2020, 35000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (16, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 2016, 30000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (17, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 2017, 35000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (18, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 2018, 40000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (19, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 2019, 45000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (20, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 2020, 50000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1002, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 2016, 45000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1003, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 2017, 50000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1004, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 2018, 65000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1005, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 2019, 60000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1006, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 2020, 65000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1007, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 2016, 45000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1008, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 2017, 50000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1009, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 2018, 55000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1010, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 2019, 60000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1011, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 2020, 65000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1012, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 2016, 55000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1013, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 2017, 60000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1014, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 2018, 65000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1015, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 2019, 70000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1016, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 2020, 75000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1017, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 2016, 50000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1018, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 2017, 55000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1019, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 2018, 60000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1020, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 2019, 65000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1021, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 2020, 70000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1022, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 2016, 40000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1023, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 2017, 45000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1024, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 2018, 50000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1025, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 2019, 55000000.0000)
INSERT [dbo].[Bajas_Anualizadas] ([Id_Baja_Anualizada], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Año], [Total_Residual]) VALUES (1026, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 2020, 60000000.0000)
SET IDENTITY_INSERT [dbo].[Bajas_Anualizadas] OFF
GO
SET IDENTITY_INSERT [dbo].[Bajas_Inventario] ON 

INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (1, 2020, N'DGMN', N'354000', N'MATERIAL GENERAL NAVAL', N'USO', 20000000.0000, 18000000.0000, 2000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (2, 2020, N'SGNA', N'456000', N'PATRIMONIO HISTORICO CULTURAL', N'USO', 15000000.0000, 12000000.0000, 3000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (3, 2020, N'DGSA', N'567000', N'MATERIAL DE SANIDAD NAVAL', N'USO', 25000000.0000, 20000000.0000, 5000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (4, 2020, N'SIHN', N'675000', N'MATERIAL DE HIDROGRAFIA', N'USO', 28000000.0000, 20000000.0000, 8000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (5, 2020, N'DIAB', N'789000', N'INVENTARIO DE VESTUARIO', N'USO', 22000000.0000, 18000000.0000, 4000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (6, 2020, N'SIEC', N'696000', N'LICENCIAS DE SOFTWARE', N'USO', 15000000.0000, 12000000.0000, 3000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (7, 2020, N'JEMA', N'867000', N'INVENTARIO DE REPUESTOS', N'CONSUMO', 18000000.0000, 15000000.0000, 3000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (8, 2020, N'DIAB', N'789000', N'INVENTARIO DE VIVERES', N'CONSUMO', 15000000.0000, 13000000.0000, 2000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (9, 2020, N'DIAE', N'799000', N'INVENTARIO DE MUNICIONES', N'CONSUMO', 22000000.0000, 18000000.0000, 4000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (10, 2019, N'DGMN', N'354000', N'MATERIAL GENERAL NAVAL', N'USO', 25000000.0000, 15000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (11, 2019, N'SGNA', N'456000', N'PATRIMONIO HISTORICO CULTURAL', N'USO', 20000000.0000, 10000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (12, 2019, N'DGSA', N'567000', N'MATERIAL DE SANIDAD NAVAL', N'USO', 30000000.0000, 20000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (13, 2019, N'SIHN', N'675000', N'MATERIAL DE HIDROGRAFIA', N'USO', 28000000.0000, 15000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (14, 2019, N'DIAB', N'789000', N'INVENTARIO DE VESTUARIO', N'USO', 25000000.0000, 12000000.0000, 23000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (15, 2019, N'SIEC', N'696000', N'LICENCIAS DE SOFTWARE', N'USO', 20000000.0000, 10000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (16, 2019, N'JEMA', N'867000', N'INVENTARIO DE REPUESTOS', N'CONSUMO', 28000000.0000, 13000000.0000, 15000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (17, 2019, N'DIAB', N'789000', N'INVENTARIO DE VIVERES', N'CONSUMO', 25000000.0000, 13000000.0000, 12000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (18, 2019, N'DIAE', N'799000', N'INVENTARIO DE MUNICIONES', N'CONSUMO', 30000000.0000, 18000000.0000, 12000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (19, 2018, N'DGMN', N'354000', N'MATERIAL GENERAL NAVAL', N'USO', 30000000.0000, 15000000.0000, 15000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (20, 2018, N'SGNA', N'456000', N'PATRIMONIO HISTORICO CULTURAL', N'USO', 25000000.0000, 15000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (21, 2018, N'DGSA', N'567000', N'MATERIAL DE SANIDAD NAVAL', N'USO', 35000000.0000, 20000000.0000, 15000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (22, 2018, N'SIHN', N'675000', N'MATERIAL DE HIDROGRAFIA', N'USO', 30000000.0000, 20000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (23, 2018, N'DIAB', N'789000', N'INVENTARIO DE VESTUARIO', N'USO', 20000000.0000, 10000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (24, 2018, N'SIEC', N'696000', N'LICENCIAS DE SOFTWARE', N'USO', 27000000.0000, 14000000.0000, 13000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (25, 2018, N'JEMA', N'867000', N'INVENTARIO DE REPUESTOS', N'CONSUMO', 25000000.0000, 15000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (26, 2018, N'DIAB', N'789000', N'INVENTARIO DE VIVERES', N'CONSUMO', 20000000.0000, 10000000.0000, 10000000.0000)
INSERT [dbo].[Bajas_Inventario] ([Id_Bajas_Inventario], [Año_Alta], [Sigla], [Codigo], [Inventario], [Tipo_Bien], [Valor_Origen], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (27, 2018, N'DIAE', N'799000', N'INVENTARIO DE MUNICIONES', N'CONSUMO', 22000000.0000, 10000000.0000, 12000000.0000)
SET IDENTITY_INSERT [dbo].[Bajas_Inventario] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventario_Detallado] ON 

INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (1, 2020, N'SIEC', N'USO', N'LICENCIAS DE SOFTWARE', 25000000.0000, 10000000.0000, 15000000.0000, 15000000.0000, 10000000.0000, 5000000.0000, 30000000.0000)
INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (2, 2020, N'DGMN', N'USO', N'MATERIAL GENERAL NAVAL', 45000000.0000, 15000000.0000, 30000000.0000, 20000000.0000, 10000000.0000, 1000000.0000, 40000000.0000)
INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (3, 2020, N'SGNA', N'USO', N'PATRIMONIO HISTORICO CULTURAL', 35000000.0000, 10000000.0000, 25000000.0000, 12000000.0000, 4000000.0000, 8000000.0000, 33000000.0000)
INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (4, 2020, N'DGSA', N'USO', N'MATERIAL DE SANIDAD NAVAL', 50000000.0000, 20000000.0000, 30000000.0000, 25000000.0000, 1000000.0000, 1500000.0000, 45000000.0000)
INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (5, 2020, N'SIHN', N'USO', N'MATERIAL DE HIDROGRAFIA', 30000000.0000, 10000000.0000, 20000000.0000, 15000000.0000, 5000000.0000, 1000000.0000, 40000000.0000)
INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (6, 2020, N'DIAB', N'USO', N'INVENTARIO DE VESTUARIO', 28000000.0000, 18000000.0000, 10000000.0000, 12000000.0000, 6000000.0000, 6000000.0000, 16000000.0000)
INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (7, 2020, N'JEMA', N'CONSUMO', N'INVENTARIO DE REPUESTOS', 35000000.0000, 15000000.0000, 20000000.0000, 20000000.0000, 1000000.0000, 1000000.0000, 30000000.0000)
INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (8, 2020, N'DIAB', N'CONSUMO', N'INVENTARIO DE VIVERES', 40000000.0000, 15000000.0000, 25000000.0000, 25000000.0000, 1500000.0000, 1000000.0000, 35000000.0000)
INSERT [dbo].[Inventario_Detallado] ([Id_Inventario_Detallado], [Año_Alta], [Sigla], [Tipo_Bien], [Descripcion_Inventario], [Total_Original_Activos], [Amortizacion_Acumulada_Activos], [Valor_Total_Activos], [Total_Original_Bajas], [Total_Amortizado_Bajas], [Total_Residual_Bajas], [Total_General_Año]) VALUES (9, 2020, N'DIAE', N'CONSUMO', N'INVENTARIO DE MUNICIONES', 45000000.0000, 20000000.0000, 25000000.0000, 20000000.0000, 1000000.0000, 1000000.0000, 35000000.0000)
SET IDENTITY_INSERT [dbo].[Inventario_Detallado] OFF
GO
SET IDENTITY_INSERT [dbo].[Patrimonio_Anualizado] ON 

INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (1, 2020, 20000000.0000, 10000000.0000, 25000000.0000, 18000000.0000, 15000000.0000, 10000000.0000, 12000000.0000, 13000000.0000, 14000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (2, 2019, 18000000.0000, 9000000.0000, 24000000.0000, 17000000.0000, 14000000.0000, 9500000.0000, 11000000.0000, 12500000.0000, 13000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (3, 2018, 16000000.0000, 8000000.0000, 23000000.0000, 16000000.0000, 13000000.0000, 9000000.0000, 10500000.0000, 12000000.0000, 12000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (4, 2017, 15000000.0000, 7000000.0000, 22000000.0000, 15000000.0000, 12000000.0000, 8500000.0000, 10000000.0000, 11500000.0000, 11000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (5, 2016, 14000000.0000, 6500000.0000, 21000000.0000, 14000000.0000, 11000000.0000, 8000000.0000, 95000000.0000, 11000000.0000, 10000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (6, 2015, 13000000.0000, 6000000.0000, 20000000.0000, 13000000.0000, 10000000.0000, 7500000.0000, 90000000.0000, 10500000.0000, 9000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (7, 2014, 12000000.0000, 5500000.0000, 19000000.0000, 12000000.0000, 9000000.0000, 7000000.0000, 85000000.0000, 10000000.0000, 8000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (8, 2013, 11000000.0000, 5000000.0000, 18000000.0000, 11000000.0000, 8000000.0000, 6500000.0000, 80000000.0000, 95000000.0000, 7000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (9, 2012, 10000000.0000, 4500000.0000, 17000000.0000, 10000000.0000, 7000000.0000, 6000000.0000, 75000000.0000, 90000000.0000, 6000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (10, 2011, 9000000.0000, 4000000.0000, 16000000.0000, 9000000.0000, 6000000.0000, 5500000.0000, 70000000.0000, 85000000.0000, 5000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (11, 2010, 8000000.0000, 3500000.0000, 15000000.0000, 8000000.0000, 5000000.0000, 5000000.0000, 65000000.0000, 80000000.0000, 4000000.0000)
INSERT [dbo].[Patrimonio_Anualizado] ([Id_Patrimonio_Anualizado], [Año], [Total_DGMN_Uso], [Total_SGNA_Uso], [Total_DGSA_Uso], [Total_SIHN_Uso], [Total_DIAB_Uso], [Total_SIEC_Uso], [Total_JEMA_Consumo], [Total_DIAB_Consumo], [Total_DIAE_Consumo]) VALUES (12, 2009, 7000000.0000, 3000000.0000, 14000000.0000, 7000000.0000, 4000000.0000, 4000000.0000, 60000000.0000, 70000000.0000, 3000000.0000)
SET IDENTITY_INSERT [dbo].[Patrimonio_Anualizado] OFF
GO
SET IDENTITY_INSERT [dbo].[Patrimonio_Total] ON 

INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (1, N'DGMN', N'354000', N'DIRECCION GENERAL DEL MATERIAL NAVAL', N'MATERIAL GENERAL NAVAL', N'USO', 50000000.0000)
INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (2, N'SGNA', N'456000', N'SECRETARIA GENERAL NAVAL', N'PATRIMONIO HISTORICO CULTURAL', N'USO', 45000000.0000)
INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (3, N'DGSA', N'567000', N'DIRECCION GENERAL DE SANIDAD NAVAL', N'MATERIAL DE SANIDAD', N'USO', 48000000.0000)
INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (4, N'SIHN', N'675000', N'SERVICIO DE HIDROGRAFIA NAVAL', N'MATERIAL DE HIDROGRAFIA', N'USO', 40000000.0000)
INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (5, N'DIAB', N'789000', N'DIRECCION DE ABASTECIMIENTO NAVAL', N'INVENTARIO DE VESTUARIO', N'USO', 35000000.0000)
INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (6, N'SIEC', N'696000', N'SERVICIO DE INFORMATICA DE LA ARMADA', N'LICENCIAS DE SOFTWARE', N'USO', 30000000.0000)
INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (7, N'JEMA', N'867000', N'JEFATURA DE MATERIAL DE LA ARMADA', N'INVENTARIO DE REPUESTOS', N'CONSUMO', 32000000.0000)
INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (8, N'DIAB', N'789000', N'DIRECCION DE ABASTECIMIENTO NAVAL', N'INVENTARIO DE VIVERES', N'CONSUMO', 30000000.0000)
INSERT [dbo].[Patrimonio_Total] ([Id_Patrimonio], [Sigla], [Codigo], [Descripcion], [Inventario], [Tipo_Bien], [Total_Valorizado]) VALUES (9, N'DIAE', N'799000', N'DIRECCION DE ARMAS Y ELECTRONICA', N'INVENTARIO DE MUNICIONES', N'CONSUMO', 35000000.0000)
SET IDENTITY_INSERT [dbo].[Patrimonio_Total] OFF
GO
SET IDENTITY_INSERT [dbo].[Responsables_Patrimoniales] ON 

INSERT [dbo].[Responsables_Patrimoniales] ([Id_Responsable], [Sigla]) VALUES (1, N'DGMN')
INSERT [dbo].[Responsables_Patrimoniales] ([Id_Responsable], [Sigla]) VALUES (2, N'SIEC')
INSERT [dbo].[Responsables_Patrimoniales] ([Id_Responsable], [Sigla]) VALUES (3, N'SGNA')
INSERT [dbo].[Responsables_Patrimoniales] ([Id_Responsable], [Sigla]) VALUES (4, N'DIAB')
INSERT [dbo].[Responsables_Patrimoniales] ([Id_Responsable], [Sigla]) VALUES (5, N'DGSA')
INSERT [dbo].[Responsables_Patrimoniales] ([Id_Responsable], [Sigla]) VALUES (6, N'SIHN')
INSERT [dbo].[Responsables_Patrimoniales] ([Id_Responsable], [Sigla]) VALUES (7, N'JEMA')
INSERT [dbo].[Responsables_Patrimoniales] ([Id_Responsable], [Sigla]) VALUES (8, N'DIAE')
SET IDENTITY_INSERT [dbo].[Responsables_Patrimoniales] OFF
GO
/****** Object:  StoredProcedure [dbo].[SICI_spAltas_Inventario_Obtener]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICI_spAltas_Inventario_Obtener]
	@iAño int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id_Altas_Inventario, Sigla_Responsable, Tipo_Bien, Valor_Total_Presupuestario, Total_Valorizado_Presupuestario,
	       Valor_Total_No_Presupuestario, Total_Valorizado_No_Presupuestario, Valor_Total_Donacion, Total_Valorizado_Donacion, 
           Valor_Total_Transferencia, Total_Valorizado_Transferencia, Valor_Total_General, Total_Valorizado_General
      FROM dbo.Altas_Inventario
	  WHERE dbo.Altas_Inventario.Año = @iAño
	  ORDER BY dbo.Altas_Inventario.Tipo_Bien DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SICI_spAmortizaciones_Detalladas_Obtener]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICI_spAmortizaciones_Detalladas_Obtener]
	@iAño_Desde int,
	@iAño_Hasta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id_Amortizacion_Detallada, Sigla, Tipo_Bien, Descripcion_Inventario, Amortizacion_Anual, Año
      FROM dbo.Amortizaciones_Detalladas
	  WHERE (Año >= @iAño_Desde)
	    AND (Año <= @iAño_Hasta)
		ORDER BY Tipo_Bien DESC, Sigla, Año
END
GO
/****** Object:  StoredProcedure [dbo].[SICI_spAmortizaciones_Inventario_Obtener]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICI_spAmortizaciones_Inventario_Obtener]
	@iAño int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id_Amortizacion_Inventario, Año_Alta, Sigla_Destino, Codigo_Destino, Descripcion_Inventario, Tipo_Bien, 
	       Valor_Original, Amortizacion_Acumulada, Valor_Actual
      FROM dbo.Amortizaciones_Inventario
	  WHERE (dbo.Amortizaciones_Inventario.Año_Alta = @iAño)
	  ORDER BY dbo.Amortizaciones_Inventario.Tipo_Bien DESC, dbo.Amortizaciones_Inventario.Sigla_Destino 
END
GO
/****** Object:  StoredProcedure [dbo].[SICI_spBajas_Anualizadas_Obtener]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICI_spBajas_Anualizadas_Obtener]
	@iAño_Desde int,
	@iAño_Hasta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id_Baja_Anualizada, Sigla, Tipo_Bien, Descripcion_Inventario, Año, Total_Residual
      FROM dbo.Bajas_Anualizadas
	  WHERE (Año >= @iAño_Desde)
	    AND (Año <= @iAño_Hasta)
		ORDER BY Tipo_Bien DESC, Sigla, Año
END
GO
/****** Object:  StoredProcedure [dbo].[SICI_spBajas_Inventario_Obtener]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICI_spBajas_Inventario_Obtener]
    @iAño_Alta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id_Bajas_Inventario, Sigla, Año_Alta, Codigo, Inventario, Tipo_Bien, Valor_Origen, Amortizacion_Acumulada, Valor_Residual
      FROM dbo.Bajas_Inventario
	  WHERE (Año_Alta = @iAño_Alta)
	  ORDER BY dbo.Bajas_Inventario.Tipo_Bien DESC, dbo.Bajas_Inventario.Sigla
END
GO
/****** Object:  StoredProcedure [dbo].[SICI_spInventario_Detallado_Obtener]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICI_spInventario_Detallado_Obtener]
	@iAño int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Id_Inventario_Detallado, Año_Alta, Sigla, Tipo_Bien, Descripcion_Inventario, Total_Original_Activos, Amortizacion_Acumulada_Activos, Valor_Total_Activos, Total_Original_Bajas, Total_Amortizado_Bajas, 
           Total_Residual_Bajas, Total_General_Año
      FROM dbo.Inventario_Detallado
	  WHERE (Año_Alta = @iAño)
	  ORDER BY Tipo_Bien DESC, Sigla
END
GO
/****** Object:  StoredProcedure [dbo].[SICI_spPatrimonio_Anualizado_Obtener]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICI_spPatrimonio_Anualizado_Obtener] 
	@iAño_Desde int,
	@iAño_Hasta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Año, Total_DGMN_Uso, Total_SGNA_Uso, Total_DGSA_Uso, Total_SIHN_Uso, Total_DIAB_Uso, Total_SIEC_Uso, Total_JEMA_Consumo, Total_DIAB_Consumo, Total_DIAE_Consumo
      FROM dbo.Patrimonio_Anualizado
	  WHERE (Año >= @iAño_Desde)
	    AND (Año <= @iAño_Hasta)
		ORDER BY Año DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SICI_spPatrimonio_Total_Obtener]    Script Date: 26/02/2021 10:17:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICI_spPatrimonio_Total_Obtener]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT Sigla, Codigo, Descripcion, Inventario, Tipo_Bien, Total_Valorizado
      FROM dbo.Patrimonio_Total
	  ORDER BY Id_Patrimonio
END
GO
