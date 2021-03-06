USE [SIGMA]
GO
/****** Object:  Table [dbo].[Altas_Anuales]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Altas_Anuales](
	[Id_Alta_Anual] [int] IDENTITY(1,1) NOT NULL,
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
	[Año] [int] NOT NULL,
 CONSTRAINT [PK_Altas_Anuales] PRIMARY KEY CLUSTERED 
(
	[Id_Alta_Anual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Altas_Detalladas]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Altas_Detalladas](
	[Id_Alta_Detalle] [int] IDENTITY(1,1) NOT NULL,
	[NroLote] [varchar](11) NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[Origen_Gasto] [varchar](20) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Valor_Adquisicion] [money] NOT NULL,
	[Total_Compra] [money] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Valor_Actual] [money] NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[Desc_Proveedor] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Altas_Detalle] PRIMARY KEY CLUSTERED 
(
	[Id_Alta_Detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Altas_Generales]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Altas_Generales](
	[Id_Alta_Origen] [int] IDENTITY(1,1) NOT NULL,
	[NroLote] [varchar](11) NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[Id_Origen] [int] NOT NULL,
	[Origen_Gasto] [varchar](20) NOT NULL,
	[Documento_Compra] [varchar](50) NOT NULL,
	[Expediente_Compra] [varchar](50) NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[Nomenclatura] [varchar](250) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Total_Compra] [money] NOT NULL,
	[Total_Valorizado] [money] NOT NULL,
 CONSTRAINT [PK_Altas_Origen] PRIMARY KEY CLUSTERED 
(
	[Id_Alta_Origen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Altas_Totalizadas]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Altas_Totalizadas](
	[Id_Alta_Totalizada] [int] IDENTITY(1,1) NOT NULL,
	[Id_Inventario] [int] NOT NULL,
	[Año_Alta] [int] NOT NULL,
	[Total_Altas_Presupuestarias] [money] NOT NULL,
	[Total_Altas_No_Presupuestarias] [money] NOT NULL,
	[Total_Altas_Donacion] [money] NOT NULL,
	[Total_Altas_Transferencia] [money] NOT NULL,
	[Total_Altas_General] [money] NOT NULL,
	[Total_Valorizado] [money] NOT NULL,
 CONSTRAINT [PK_Altas_Totalizadas] PRIMARY KEY CLUSTERED 
(
	[Id_Alta_Totalizada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Amortizaciones_Anuales]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amortizaciones_Anuales](
	[Id_Amortizaciones_Anuales] [int] IDENTITY(1,1) NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[Nomenclatura] [varchar](250) NOT NULL,
	[NroLote] [varchar](11) NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[Vida_Util] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Valor_Compra] [money] NOT NULL,
	[Valor_Residual] [money] NOT NULL,
	[Año_Amortizacion] [int] NOT NULL,
	[Sigla_Destino] [varchar](4) NOT NULL,
	[Cargo_Efecto] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Amortizaciones_Anuales_NEW] PRIMARY KEY CLUSTERED 
(
	[Id_Amortizaciones_Anuales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Descargos_Valorizados]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descargos_Valorizados](
	[Id_Descargo_Valorizado] [int] IDENTITY(1,1) NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[Nomenclatura] [varchar](250) NOT NULL,
	[NroLote] [varchar](11) NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Vida_Util] [int] NOT NULL,
	[Valor_Adquisicion] [money] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Valor_Actual] [money] NOT NULL,
	[Fecha_Descargo] [datetime] NOT NULL,
	[Sigla_Destino] [varchar](4) NOT NULL,
 CONSTRAINT [PK_Descargos_Valorizados] PRIMARY KEY CLUSTERED 
(
	[Id_Descargo_Valorizado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Despiece_Valorizado]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despiece_Valorizado](
	[Id_Despiece_Valorizado] [int] IDENTITY(1,1) NOT NULL,
	[NNE_Primario] [varchar](13) NOT NULL,
	[NroSerie_Primario] [varchar](50) NOT NULL,
	[NroInven_Primario] [bigint] NOT NULL,
	[NNE_Despiece] [varchar](13) NOT NULL,
	[Nomenclatura] [varchar](250) NOT NULL,
	[NroLote] [varchar](11) NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Valor_Compra] [money] NOT NULL,
	[Vida_Util] [int] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Valor_Actual] [money] NOT NULL,
 CONSTRAINT [PK_Despiece_Valorizado] PRIMARY KEY CLUSTERED 
(
	[Id_Despiece_Valorizado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Lote]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Lote](
	[ID_Detalle_Lote] [int] IDENTITY(1,1) NOT NULL,
	[Nro_Lote] [varchar](11) NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Vida_Util] [int] NOT NULL,
	[Porcentaje_Amortizacion] [int] NOT NULL,
	[Precio_Unitario] [money] NOT NULL,
 CONSTRAINT [PK_Detalle_Lote] PRIMARY KEY CLUSTERED 
(
	[ID_Detalle_Lote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Efectos_Amortizados]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Efectos_Amortizados](
	[Id_Amortizacion_Anual] [int] IDENTITY(1,1) NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[Nomenclatura] [varchar](250) NOT NULL,
	[NroLote] [varchar](11) NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Valor_Adquisicion] [money] NOT NULL,
	[Vida_Util] [int] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Valor_Residual] [money] NOT NULL,
 CONSTRAINT [PK_Amortizaciones_Anuales] PRIMARY KEY CLUSTERED 
(
	[Id_Amortizacion_Anual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario_Valorizado]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario_Valorizado](
	[Id_Inventario_Valorizado] [int] IDENTITY(1,1) NOT NULL,
	[Id_Inventario] [int] NOT NULL,
	[Año_Alta] [int] NOT NULL,
	[NroLote] [varchar](11) NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[Nomenclatura] [varchar](250) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Valor_Adquisicion] [money] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Valor_Actualizado] [money] NOT NULL,
	[Año_Amortizacion] [int] NOT NULL,
 CONSTRAINT [PK_Inventario_Valorizado] PRIMARY KEY CLUSTERED 
(
	[Id_Inventario_Valorizado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lotes_Destino]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lotes_Destino](
	[Id_Lotes_Destino] [int] IDENTITY(1,1) NOT NULL,
	[Sigla_Destino] [varchar](4) NOT NULL,
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
 CONSTRAINT [PK_Altas_Destino] PRIMARY KEY CLUSTERED 
(
	[Id_Lotes_Destino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lotes_Inventario]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lotes_Inventario](
	[Id_Lotes_Inventario] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Inventario] [varchar](2) NOT NULL,
	[Des_Inventario] [varchar](250) NOT NULL,
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
	[Id_Inventario] [int] NOT NULL,
 CONSTRAINT [PK_Altas_Inventario] PRIMARY KEY CLUSTERED 
(
	[Id_Lotes_Inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M18_Inventarios]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M18_Inventarios](
	[Id_Inventario] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](2) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_M18_Inventarios] PRIMARY KEY CLUSTERED 
(
	[Id_Inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M18_OrigenGasto]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M18_OrigenGasto](
	[Id_Origen] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_M18_OrigenGasto] PRIMARY KEY CLUSTERED 
(
	[Id_Origen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Id_Pais] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Pais] [varchar](2) NOT NULL,
	[Des_Pais] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[Id_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Id_Pelicula] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](200) NOT NULL,
	[Duracion] [int] NOT NULL,
	[Año] [int] NOT NULL,
	[Genero] [varchar](25) NOT NULL,
	[Id_Pais] [int] NOT NULL,
	[Fecha_Estreno] [datetime] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Id_Pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Totales_Cargo_Destino]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Totales_Cargo_Destino](
	[Id_Total_Destino] [int] IDENTITY(1,1) NOT NULL,
	[Sigla] [varchar](4) NOT NULL,
	[Codigo] [varchar](6) NOT NULL,
	[Cargo_Destino] [varchar](6) NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Valor_Total] [money] NOT NULL,
	[Total_Valorizado] [money] NOT NULL,
	[Amortizacion_Acumulada] [money] NULL,
 CONSTRAINT [PK_Totales_Destino] PRIMARY KEY CLUSTERED 
(
	[Id_Total_Destino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Totales_Cargo_Efecto]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Totales_Cargo_Efecto](
	[Id_Cargo_Efecto] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Cargo_Efecto] [varchar](2) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Total_Cargo_Efecto] [money] NOT NULL,
	[Total_Valorizado] [money] NOT NULL,
	[Total_Amortizado] [money] NULL,
	[Sigla_Destino] [varchar](4) NOT NULL,
	[Cod_CargoDestino] [varchar](6) NULL,
 CONSTRAINT [PK_Totales_Cargo_Efecto] PRIMARY KEY CLUSTERED 
(
	[Id_Cargo_Efecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Totales_Destino]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Totales_Destino](
	[Id_Total_Destino] [int] IDENTITY(1,1) NOT NULL,
	[Sigla] [varchar](4) NOT NULL,
	[Codigo] [varchar](6) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Valor_Total] [money] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Total_Valorizado] [money] NOT NULL,
	[Zona_Naval] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Totales_Destino_1] PRIMARY KEY CLUSTERED 
(
	[Id_Total_Destino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Totales_Efecto]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Totales_Efecto](
	[Id_Efecto] [int] IDENTITY(1,1) NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[Nomenclatura] [varchar](200) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Total_Efecto] [money] NOT NULL,
	[Total_Valorizado] [money] NOT NULL,
	[Total_Amortizado] [money] NULL,
	[Cargo_Efecto] [varchar](2) NOT NULL,
	[Sigla_Destino] [varchar](4) NOT NULL,
	[Cod_CargoDestino] [varchar](6) NULL,
 CONSTRAINT [PK_Totales_Efecto] PRIMARY KEY CLUSTERED 
(
	[Id_Efecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valorizacion_Detallada]    Script Date: 26/02/2021 10:29:33 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Valorizacion_Detallada](
	[Id_Valorizacion_Detallada] [int] IDENTITY(1,1) NOT NULL,
	[NNE] [varchar](13) NOT NULL,
	[NroLote] [varchar](11) NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[Nro_Serie] [varchar](50) NOT NULL,
	[Nro_Inventario] [bigint] NOT NULL,
	[Precio_Compra] [money] NOT NULL,
	[Amortizacion_Acumulada] [money] NOT NULL,
	[Valor_Actual] [money] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
	[Sigla_Destino] [varchar](4) NOT NULL,
 CONSTRAINT [PK_Valorizacion_Detallada] PRIMARY KEY CLUSTERED 
(
	[Id_Valorizacion_Detallada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Altas_Anuales] ON 

INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1, 1000000.0000, 800000.0000, 1200000.0000, 1000000.0000, 900000.0000, 700000.0000, 1500000.0000, 1200000.0000, 4600000.0000, 3700000.0000, 2020)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (2, 1500000.0000, 1000000.0000, 1200000.0000, 800000.0000, 1000000.0000, 700000.0000, 1400000.0000, 1000000.0000, 5100000.0000, 3500000.0000, 2019)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (3, 1300000.0000, 1200000.0000, 1200000.0000, 1100000.0000, 1000000.0000, 800000.0000, 900000.0000, 700000.0000, 4400000.0000, 3800000.0000, 2018)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (4, 1200000.0000, 1000000.0000, 1000000.0000, 800000.0000, 900000.0000, 700000.0000, 800000.0000, 600000.0000, 3900000.0000, 3100000.0000, 2017)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (5, 1400000.0000, 1200000.0000, 1200000.0000, 1000000.0000, 100000.0000, 800000.0000, 900000.0000, 700000.0000, 5500000.0000, 3700000.0000, 2016)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (6, 1500000.0000, 1400000.0000, 1300000.0000, 1200000.0000, 110000.0000, 100000.0000, 100000.0000, 800000.0000, 4900000.0000, 4400000.0000, 2015)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1002, 1200000.0000, 1000000.0000, 1000000.0000, 800000.0000, 900000.0000, 700000.0000, 800000.0000, 600000.0000, 3900000.0000, 3100000.0000, 2014)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1003, 1000000.0000, 800000.0000, 1200000.0000, 1000000.0000, 900000.0000, 700000.0000, 1500000.0000, 1200000.0000, 4600000.0000, 3700000.0000, 2013)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1004, 1500000.0000, 1000000.0000, 1200000.0000, 800000.0000, 1000000.0000, 700000.0000, 1400000.0000, 1000000.0000, 5100000.0000, 3500000.0000, 2012)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1005, 1300000.0000, 1200000.0000, 1200000.0000, 1100000.0000, 1000000.0000, 800000.0000, 900000.0000, 700000.0000, 4400000.0000, 3800000.0000, 2011)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1006, 1200000.0000, 1000000.0000, 1000000.0000, 800000.0000, 900000.0000, 700000.0000, 800000.0000, 600000.0000, 3900000.0000, 3100000.0000, 2010)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1007, 1400000.0000, 1200000.0000, 1200000.0000, 1000000.0000, 100000.0000, 800000.0000, 900000.0000, 700000.0000, 5500000.0000, 3700000.0000, 2009)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1008, 1500000.0000, 1400000.0000, 1300000.0000, 1200000.0000, 110000.0000, 100000.0000, 100000.0000, 800000.0000, 4900000.0000, 4400000.0000, 2008)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1009, 1000000.0000, 800000.0000, 1200000.0000, 1000000.0000, 900000.0000, 700000.0000, 1500000.0000, 1200000.0000, 4600000.0000, 3700000.0000, 2007)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1010, 1500000.0000, 1000000.0000, 1200000.0000, 800000.0000, 1000000.0000, 700000.0000, 1400000.0000, 1000000.0000, 5100000.0000, 3500000.0000, 2006)
INSERT [dbo].[Altas_Anuales] ([Id_Alta_Anual], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Año]) VALUES (1011, 1300000.0000, 1200000.0000, 1200000.0000, 1100000.0000, 1000000.0000, 800000.0000, 900000.0000, 700000.0000, 4400000.0000, 3800000.0000, 2005)
SET IDENTITY_INSERT [dbo].[Altas_Anuales] OFF
GO
SET IDENTITY_INSERT [dbo].[Altas_Detalladas] ON 

INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (1, N'001000-2020', CAST(N'2020-01-11T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 10, 10000.0000, 100000.0000, 20000.0000, 80000.0000, N'1010101010101', N'CORADIR S.A.')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (2, N'002000-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'TRANSFERENCIA', 15, 20000.0000, 300000.0000, 50000.0000, 250000.0000, N'1010101010101', N'COMPUMUNDO')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (3, N'003000-2020', CAST(N'2020-01-31T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 20, 30000.0000, 600000.0000, 100000.0000, 500000.0000, N'1010101010101', N'OMEGA SISTEMAS')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (4, N'040404-2020', CAST(N'2020-03-05T00:00:00.000' AS DateTime), N'TRANSFERENCIA', 10, 25000.0000, 250000.0000, 50000.0000, 200000.0000, N'2020202020202', N'SISTEMAS INFORMATICOS BAIRES')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (5, N'050505-2020', CAST(N'2020-04-25T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 20, 10000.0000, 200000.0000, 50000.0000, 150000.0000, N'2020202020202', N'CORADIR S.A.')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (6, N'060606-2020', CAST(N'2020-05-20T00:00:00.000' AS DateTime), N'NO PRESUPUESTARIO', 25, 20000.0000, 500000.0000, 100000.0000, 400000.0000, N'2020202020202', N'OMEGA SISTEMAS')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (7, N'001010-2020', CAST(N'2020-01-21T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 10, 10000.0000, 100000.0000, 20000.0000, 80000.0000, N'1010101010101', N'CORADIR S.A.')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (8, N'002010-2020', CAST(N'2020-02-25T00:00:00.000' AS DateTime), N'TRANSFERENCIA', 15, 20000.0000, 300000.0000, 50000.0000, 250000.0000, N'1010101010101', N'COMPUMUNDO')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (9, N'003010-2020', CAST(N'2020-05-31T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 20, 30000.0000, 600000.0000, 100000.0000, 500000.0000, N'1010101010101', N'OMEGA SISTEMAS')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (10, N'040410-2020', CAST(N'2020-06-05T00:00:00.000' AS DateTime), N'TRANSFERENCIA', 10, 25000.0000, 250000.0000, 50000.0000, 200000.0000, N'2020202020202', N'SISTEMAS INFORMATICOS BAIRES')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (11, N'050510-2020', CAST(N'2020-07-25T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 20, 10000.0000, 200000.0000, 50000.0000, 150000.0000, N'2020202020202', N'CORADIR S.A.')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (12, N'060610-2020', CAST(N'2020-08-20T00:00:00.000' AS DateTime), N'NO PRESUPUESTARIO', 25, 20000.0000, 500000.0000, 100000.0000, 400000.0000, N'2020202020202', N'OMEGA SISTEMAS')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (13, N'001020-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 10, 10000.0000, 100000.0000, 20000.0000, 80000.0000, N'1010101010101', N'CORADIR S.A.')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (14, N'002020-2020', CAST(N'2020-02-15T00:00:00.000' AS DateTime), N'TRANSFERENCIA', 15, 20000.0000, 300000.0000, 50000.0000, 250000.0000, N'1010101010101', N'COMPUMUNDO')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (15, N'003020-2020', CAST(N'2020-03-20T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 20, 30000.0000, 600000.0000, 100000.0000, 500000.0000, N'1010101010101', N'OMEGA SISTEMAS')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (16, N'040420-2020', CAST(N'2020-04-05T00:00:00.000' AS DateTime), N'TRANSFERENCIA', 10, 25000.0000, 250000.0000, 50000.0000, 200000.0000, N'2020202020202', N'SISTEMAS INFORMATICOS BAIRES')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (17, N'050520-2020', CAST(N'2020-05-25T00:00:00.000' AS DateTime), N'PRESUPUESTARIO', 20, 10000.0000, 200000.0000, 50000.0000, 150000.0000, N'2020202020202', N'CORADIR S.A.')
INSERT [dbo].[Altas_Detalladas] ([Id_Alta_Detalle], [NroLote], [Fecha_Alta], [Origen_Gasto], [Cantidad], [Valor_Adquisicion], [Total_Compra], [Amortizacion_Acumulada], [Valor_Actual], [NNE], [Desc_Proveedor]) VALUES (18, N'060620-2020', CAST(N'2020-06-20T00:00:00.000' AS DateTime), N'NO PRESUPUESTARIO', 25, 20000.0000, 500000.0000, 100000.0000, 400000.0000, N'2020202020202', N'OMEGA SISTEMAS')
SET IDENTITY_INSERT [dbo].[Altas_Detalladas] OFF
GO
SET IDENTITY_INSERT [dbo].[Altas_Generales] ON 

INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (1, N'001000-2020', CAST(N'2020-01-11T00:00:00.000' AS DateTime), 1, N'PRESUPUESTARIO', N'OC 010101-2020', N'EXP 010101-SIPA-2020', N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', 10, 450000.0000, 300000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (2, N'001000-2020', CAST(N'2020-01-11T00:00:00.000' AS DateTime), 1, N'PRESUPUESTARIO', N'OC 010101-2020', N'EXP 010101-SIPA-2020', N'2020202020202', N'IMPRESORA LASER HP 107A', 20, 350000.0000, 250000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (3, N'002000-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 3, N'DONACION', N'OC 030303-2020', N'EXP 030303-SIPA-2020', N'6060606060606', N'IMPRESORA MULTIFUNCION CANON G2100', 15, 400000.0000, 300000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (4, N'002000-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 3, N'DONACION', N'OC 030303-2020', N'EXP 030303-SIPA-2020', N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', 30, 500000.0000, 400000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (9, N'005000-2020', CAST(N'2020-02-28T00:00:00.000' AS DateTime), 1, N'PRESUPUESTARIO', N'OC 050505-2020', N'EXP 050505-SIPA-2020', N'5050505050505', N'MONITOR 20'''' HP P204', 10, 450000.0000, 350000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (13, N'006000-2020', CAST(N'2020-03-05T00:00:00.000' AS DateTime), 2, N'NO PRESUPUESTARIO', N'OC 060606-2020', N'EXP 060606-SIPA-2020', N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', 15, 550000.0000, 400000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (14, N'007000-2020', CAST(N'2020-03-20T00:00:00.000' AS DateTime), 2, N'NO PRESUPUESTARIO', N'OC 070707-2020', N'EXP 070707-SIPA-2020', N'2020202020202', N'IMPRESORA LASER HP 107A', 20, 450000.0000, 350000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (15, N'008000-2020', CAST(N'2020-03-30T00:00:00.000' AS DateTime), 2, N'NO PRESUPUESTARIO', N'OC 080808-2020', N'EXP 080808-SIPA-2020', N'6060606060606', N'IMPRESORA MULTIFUNCION CANON G2100', 10, 300000.0000, 200000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (16, N'009000-2020', CAST(N'2020-04-10T00:00:00.000' AS DateTime), 4, N'TRANSFERENCIA', N'OC 090909-2020', N'EXP 090909-SIPA-2020', N'5050505050505', N'MONITOR PC 19'''' LED PHILIPS VGA HDMI', 25, 250000.0000, 150000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (17, N'001000-2020', CAST(N'2020-01-11T00:00:00.000' AS DateTime), 1, N'PRESUPUESTARIO', N'OC 010101-2020', N'EXP 010101-SIPA-2020', N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', 10, 450000.0000, 300000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (18, N'001000-2020', CAST(N'2020-01-11T00:00:00.000' AS DateTime), 1, N'PRESUPUESTARIO', N'OC 010101-2020', N'EXP 010101-SIPA-2020', N'5050505050505', N'MONITOR 20'''' HP P204', 20, 350000.0000, 250000.0000)
INSERT [dbo].[Altas_Generales] ([Id_Alta_Origen], [NroLote], [Fecha_Alta], [Id_Origen], [Origen_Gasto], [Documento_Compra], [Expediente_Compra], [NNE], [Nomenclatura], [Cantidad], [Total_Compra], [Total_Valorizado]) VALUES (19, N'002000-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 3, N'DONACION', N'OC 030303-2020', N'EXP 030303-SIPA-2020', N'6060606060606', N'IMPRESORA MULTIFUNCION CANON G2100', 15, 400000.0000, 300000.0000)
SET IDENTITY_INSERT [dbo].[Altas_Generales] OFF
GO
SET IDENTITY_INSERT [dbo].[Altas_Totalizadas] ON 

INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (1, 1, 2015, 200000000.0000, 150000000.0000, 100000000.0000, 150000000.0000, 600000000.0000, 10000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (2, 1, 2016, 150000000.0000, 100000000.0000, 150000000.0000, 100000000.0000, 500000000.0000, 20000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (3, 1, 2017, 250000000.0000, 150000000.0000, 100000000.0000, 200000000.0000, 700000000.0000, 25000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (4, 1, 2018, 200000000.0000, 100000000.0000, 100000000.0000, 150000000.0000, 550000000.0000, 30000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (5, 1, 2019, 250000000.0000, 200000000.0000, 150000000.0000, 100000000.0000, 700000000.0000, 35000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (6, 1, 2020, 200000000.0000, 100000000.0000, 150000000.0000, 100000000.0000, 550000000.0000, 40000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (7, 2, 2015, 100000000.0000, 150000000.0000, 100000000.0000, 200000000.0000, 550000000.0000, 5000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (8, 2, 2016, 200000000.0000, 100000000.0000, 100000000.0000, 200000000.0000, 600000000.0000, 1000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (9, 2, 2017, 250000000.0000, 150000000.0000, 100000000.0000, 200000000.0000, 700000000.0000, 25000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (10, 2, 2018, 100000000.0000, 200000000.0000, 150000000.0000, 150000000.0000, 600000000.0000, 40000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (11, 2, 2019, 150000000.0000, 200000000.0000, 200000000.0000, 100000000.0000, 650000000.0000, 45000000000000.0000)
INSERT [dbo].[Altas_Totalizadas] ([Id_Alta_Totalizada], [Id_Inventario], [Año_Alta], [Total_Altas_Presupuestarias], [Total_Altas_No_Presupuestarias], [Total_Altas_Donacion], [Total_Altas_Transferencia], [Total_Altas_General], [Total_Valorizado]) VALUES (12, 2, 2020, 250000000.0000, 200000000.0000, 150000000.0000, 100000000.0000, 700000000.0000, 50000000000000.0000)
SET IDENTITY_INSERT [dbo].[Altas_Totalizadas] OFF
GO
SET IDENTITY_INSERT [dbo].[Amortizaciones_Anuales] ON 

INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (1, N'1010101010101', N'IMPRESORA LASER HP 107A', N'001000-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), 5, 10, 100000.0000, 20000.0000, 2025, N'SIEC', N'IN')
INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (2, N'2020202020202', N'IMPRESORA MULTIFUNCION EPSON L3110', N'001010-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 5, 10, 200000.0000, 100000.0000, 2025, N'SIEC', N'IN')
INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (3, N'3030303030303', N'IMPRESORA MULTIFUNCION CANON G2100', N'001020-2020', CAST(N'2020-02-28T00:00:00.000' AS DateTime), 5, 20, 400000.0000, 100000.0000, 2025, N'SICO', N'IN')
INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (4, N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', N'001020-2020', CAST(N'2020-02-28T00:00:00.000' AS DateTime), 4, 10, 150000.0000, 50000.0000, 2024, N'SICO', N'IN')
INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (5, N'5050505050505', N'MONITOR 20'''' HP P204', N'001000-2015', CAST(N'2015-01-30T00:00:00.000' AS DateTime), 5, 10, 100000.0000, 20000.0000, 2020, N'SISG', N'IN')
INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (6, N'6060606060606', N'MONITOR PC 19'''' LED PHILIPS VGA HDMI', N'001010-2015', CAST(N'2015-03-25T00:00:00.000' AS DateTime), 5, 20, 200000.0000, 50000.0000, 2020, N'SISG', N'IN')
INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (7, N'7070707070707', N'MOUSE INALAMBRICO LOGITECH M280', N'001020-2015', CAST(N'2015-04-10T00:00:00.000' AS DateTime), 5, 20, 20000.0000, 5000.0000, 2020, N'DGCI', N'IN')
INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (8, N'8080808080808', N'TECLADO CX SLIM WK-718 NEGRO', N'001030-2015', CAST(N'2015-04-25T00:00:00.000' AS DateTime), 5, 10, 50000.0000, 20000.0000, 2020, N'DGCI', N'IN')
INSERT [dbo].[Amortizaciones_Anuales] ([Id_Amortizaciones_Anuales], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Vida_Util], [Cantidad], [Valor_Compra], [Valor_Residual], [Año_Amortizacion], [Sigla_Destino], [Cargo_Efecto]) VALUES (9, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', N'001040-2015', CAST(N'2015-04-30T00:00:00.000' AS DateTime), 4, 10, 20000.0000, 10000.0000, 2019, N'DGCI', N'IN')
SET IDENTITY_INSERT [dbo].[Amortizaciones_Anuales] OFF
GO
SET IDENTITY_INSERT [dbo].[Descargos_Valorizados] ON 

INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1, N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', N'001000-2018', CAST(N'2018-01-10T00:00:00.000' AS DateTime), 5, 5, 50000.0000, 30000.0000, 20000.0000, CAST(N'2020-01-11T00:00:00.000' AS DateTime), N'SIEC')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (2, N'2020202020202', N'IMPRESORA LASER HP 107A', N'002000-2018', CAST(N'2018-01-20T00:00:00.000' AS DateTime), 4, 5, 40000.0000, 20000.0000, 20000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'SIEC')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (3, N'3030303030303', N'IMPRESORA MULTIFUNCION CANON G2100', N'003000-2018', CAST(N'2018-01-30T00:00:00.000' AS DateTime), 5, 5, 60000.0000, 50000.0000, 10000.0000, CAST(N'2020-01-30T00:00:00.000' AS DateTime), N'SICO')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (4, N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', N'004000-2018', CAST(N'2018-02-25T00:00:00.000' AS DateTime), 6, 4, 30000.0000, 20000.0000, 10000.0000, CAST(N'2020-02-20T00:00:00.000' AS DateTime), N'SICO')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (5, N'5050505050505', N'MONITOR 20'''' HP P204', N'005000-2018', CAST(N'2018-03-20T00:00:00.000' AS DateTime), 5, 5, 40000.0000, 30000.0000, 10000.0000, CAST(N'2020-02-28T00:00:00.000' AS DateTime), N'SISG')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (6, N'6060606060606', N'MONITOR PC 19'''' LED PHILIPS VGA HDMI', N'006000-2018', CAST(N'2018-03-30T00:00:00.000' AS DateTime), 10, 5, 80000.0000, 60000.0000, 20000.0000, CAST(N'2020-03-15T00:00:00.000' AS DateTime), N'SISG')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (7, N'7070707070707', N'MOUSE INALAMBRICO LOGITECH M280', N'007000-2018', CAST(N'2018-04-20T00:00:00.000' AS DateTime), 20, 4, 20000.0000, 10000.0000, 10000.0000, CAST(N'2020-03-25T00:00:00.000' AS DateTime), N'DGCI')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (8, N'8080808080808', N'TECLADO CX SLIM WK-718 NEGRO', N'008000-2018', CAST(N'2018-04-30T00:00:00.000' AS DateTime), 10, 4, 30000.0000, 20000.0000, 10000.0000, CAST(N'2020-04-20T00:00:00.000' AS DateTime), N'DGCI')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1002, N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', N'001000-2018', CAST(N'2018-01-10T00:00:00.000' AS DateTime), 5, 5, 50000.0000, 30000.0000, 20000.0000, CAST(N'2020-01-11T00:00:00.000' AS DateTime), N'SIAF')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1003, N'2020202020202', N'IMPRESORA LASER HP 107A', N'002000-2018', CAST(N'2018-01-20T00:00:00.000' AS DateTime), 4, 5, 40000.0000, 20000.0000, 20000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'SIAF')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1004, N'3030303030303', N'IMPRESORA MULTIFUNCION CANON G2100', N'003000-2018', CAST(N'2018-01-30T00:00:00.000' AS DateTime), 5, 5, 60000.0000, 50000.0000, 10000.0000, CAST(N'2020-01-30T00:00:00.000' AS DateTime), N'SIPA')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1005, N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', N'004000-2018', CAST(N'2018-02-25T00:00:00.000' AS DateTime), 6, 4, 30000.0000, 20000.0000, 10000.0000, CAST(N'2020-02-20T00:00:00.000' AS DateTime), N'SIPA')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1006, N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', N'001000-2018', CAST(N'2018-01-10T00:00:00.000' AS DateTime), 5, 5, 50000.0000, 30000.0000, 20000.0000, CAST(N'2020-01-11T00:00:00.000' AS DateTime), N'DGMN')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1007, N'2020202020202', N'IMPRESORA LASER HP 107A', N'002000-2018', CAST(N'2018-01-20T00:00:00.000' AS DateTime), 4, 5, 40000.0000, 20000.0000, 20000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'DGAF')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1008, N'3030303030303', N'IMPRESORA MULTIFUNCION CANON G2100', N'003000-2018', CAST(N'2018-01-30T00:00:00.000' AS DateTime), 5, 5, 60000.0000, 50000.0000, 10000.0000, CAST(N'2020-01-30T00:00:00.000' AS DateTime), N'DGPN')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1009, N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', N'004000-2018', CAST(N'2018-02-25T00:00:00.000' AS DateTime), 6, 4, 30000.0000, 20000.0000, 10000.0000, CAST(N'2020-02-20T00:00:00.000' AS DateTime), N'DGSA')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1010, N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', N'001000-2018', CAST(N'2018-01-10T00:00:00.000' AS DateTime), 5, 5, 50000.0000, 30000.0000, 20000.0000, CAST(N'2020-01-11T00:00:00.000' AS DateTime), N'JEOR')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1011, N'2020202020202', N'IMPRESORA LASER HP 107A', N'002000-2018', CAST(N'2018-01-20T00:00:00.000' AS DateTime), 4, 5, 40000.0000, 20000.0000, 20000.0000, CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'JEPR')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1012, N'3030303030303', N'IMPRESORA MULTIFUNCION CANON G2100', N'003000-2018', CAST(N'2018-01-30T00:00:00.000' AS DateTime), 5, 5, 60000.0000, 50000.0000, 10000.0000, CAST(N'2020-01-30T00:00:00.000' AS DateTime), N'JEMA')
INSERT [dbo].[Descargos_Valorizados] ([Id_Descargo_Valorizado], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Vida_Util], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actual], [Fecha_Descargo], [Sigla_Destino]) VALUES (1013, N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', N'004000-2018', CAST(N'2018-02-25T00:00:00.000' AS DateTime), 6, 4, 30000.0000, 20000.0000, 10000.0000, CAST(N'2020-02-20T00:00:00.000' AS DateTime), N'IBBA')
SET IDENTITY_INSERT [dbo].[Descargos_Valorizados] OFF
GO
SET IDENTITY_INSERT [dbo].[Despiece_Valorizado] ON 

INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (1, N'1010101010101', N'1010-SERIE-101010', 100100, N'2020202020202', N'TECLADO INALAMBRICO GENIUS', N'001000-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), 5, 20000.0000, 5, 5000.0000, 15000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (4, N'1010101010101', N'1010-SERIE-101010', 100100, N'3030303030303', N'MONITOR 20'''' HP P204', N'002000-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), 10, 30000.0000, 10, 10000.0000, 20000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (5, N'1010101010101', N'1010-SERIE-101010', 100100, N'4040404040404', N'MOUSE OPTICO LG', N'003000-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 10, 25000.0000, 5, 20000.0000, 15000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (6, N'2020202020202', N'2020-SERIE-202020', 100200, N'2020202020202', N'TECLADO INALAMBRICO GENIUS', N'001000-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), 5, 20000.0000, 5, 5000.0000, 15000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (8, N'2020202020202', N'2020-SERIE-202020', 100200, N'3030303030303', N'MONITOR 20'''' HP P204', N'002000-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), 10, 30000.0000, 10, 10000.0000, 20000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (9, N'2020202020202', N'2020-SERIE-202020', 100200, N'4040404040404', N'MOUSE OPTICO LG', N'003000-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 10, 250000.0000, 5, 20000.0000, 15000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (10, N'1010101010101', N'1010-SERIE-101010', 100100, N'5050505050505', N'TECLADO INALAMBRICO MICROSOFT', N'001000-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), 5, 20000.0000, 5, 5000.0000, 15000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (11, N'1010101010101', N'1010-SERIE-101010', 100100, N'6060606060606', N'MONITOR 23'''' HP P230', N'002000-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), 10, 30000.0000, 10, 10000.0000, 20000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (12, N'1010101010101', N'1010-SERIE-101010', 100100, N'7070707070707', N'MOUSE OPTICO GENIUS', N'003000-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 10, 25000.0000, 5, 20000.0000, 15000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (13, N'1010101010101', N'1010-SERIE-101010', 100100, N'8080808080808', N'TECLADO INALAMBRICO CORADIR', N'001000-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), 5, 20000.0000, 5, 5000.0000, 15000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (14, N'1010101010101', N'1010-SERIE-101010', 100100, N'9090909090909', N'MONITOR 20''''GOLDSTAR', N'002000-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), 10, 30000.0000, 10, 10000.0000, 20000.0000)
INSERT [dbo].[Despiece_Valorizado] ([Id_Despiece_Valorizado], [NNE_Primario], [NroSerie_Primario], [NroInven_Primario], [NNE_Despiece], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Compra], [Vida_Util], [Amortizacion_Acumulada], [Valor_Actual]) VALUES (15, N'1010101010101', N'1010-SERIE-101010', 100100, N'1212121212121', N'MOUSE OPTICO MICROSOFT', N'003000-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 10, 25000.0000, 5, 20000.0000, 15000.0000)
SET IDENTITY_INSERT [dbo].[Despiece_Valorizado] OFF
GO
SET IDENTITY_INSERT [dbo].[Detalle_Lote] ON 

INSERT [dbo].[Detalle_Lote] ([ID_Detalle_Lote], [Nro_Lote], [Fecha_Alta], [NNE], [Cantidad], [Vida_Util], [Porcentaje_Amortizacion], [Precio_Unitario]) VALUES (1, N'001000-2018', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'1010101010101', 1, 4, 20, 10000.0000)
INSERT [dbo].[Detalle_Lote] ([ID_Detalle_Lote], [Nro_Lote], [Fecha_Alta], [NNE], [Cantidad], [Vida_Util], [Porcentaje_Amortizacion], [Precio_Unitario]) VALUES (2, N'001000-2018', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'2020202020202', 10, 4, 25, 5000.0000)
INSERT [dbo].[Detalle_Lote] ([ID_Detalle_Lote], [Nro_Lote], [Fecha_Alta], [NNE], [Cantidad], [Vida_Util], [Porcentaje_Amortizacion], [Precio_Unitario]) VALUES (3, N'001000-2018', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'3030303030303', 5, 5, 20, 20000.0000)
INSERT [dbo].[Detalle_Lote] ([ID_Detalle_Lote], [Nro_Lote], [Fecha_Alta], [NNE], [Cantidad], [Vida_Util], [Porcentaje_Amortizacion], [Precio_Unitario]) VALUES (4, N'001000-2018', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'4040404040404', 10, 4, 20, 20000.0000)
INSERT [dbo].[Detalle_Lote] ([ID_Detalle_Lote], [Nro_Lote], [Fecha_Alta], [NNE], [Cantidad], [Vida_Util], [Porcentaje_Amortizacion], [Precio_Unitario]) VALUES (5, N'001000-2018', CAST(N'2018-10-20T00:00:00.000' AS DateTime), N'5050505050505', 5, 4, 20, 10000.0000)
INSERT [dbo].[Detalle_Lote] ([ID_Detalle_Lote], [Nro_Lote], [Fecha_Alta], [NNE], [Cantidad], [Vida_Util], [Porcentaje_Amortizacion], [Precio_Unitario]) VALUES (6, N'001000-2015', CAST(N'2015-05-20T00:00:00.000' AS DateTime), N'6060606060606', 10, 5, 20, 20000.0000)
SET IDENTITY_INSERT [dbo].[Detalle_Lote] OFF
GO
SET IDENTITY_INSERT [dbo].[Efectos_Amortizados] ON 

INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (1, N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', N'001000-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), 10, 10000.0000, 5, 8000.0000, 2000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (2, N'2020202020202', N'IMPRESORA LASER HP 107A', N'002000-2020', CAST(N'2020-01-30T00:00:00.000' AS DateTime), 20, 20000.0000, 10, 300000.0000, 50000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (3, N'3030303030303', N'IMPRESORA MULTIFUNCION CANON G2100', N'003000-2020', CAST(N'2020-02-25T00:00:00.000' AS DateTime), 10, 30000.0000, 10, 20000.0000, 10000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (4, N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', N'004000-2020', CAST(N'2020-02-28T00:00:00.000' AS DateTime), 20, 40000.0000, 5, 250000.0000, 15000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (5, N'5050505050505', N'MONITOR 20'''' HP P204', N'005000-2019', CAST(N'2019-01-30T00:00:00.000' AS DateTime), 10, 15000.0000, 5, 10000.0000, 5000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (6, N'6060606060606', N'MONITOR PC 19'''' LED PHILIPS VGA HDMI', N'006000-2019', CAST(N'2019-02-20T00:00:00.000' AS DateTime), 20, 10000.0000, 10, 200000.0000, 50000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (7, N'7070707070707', N'MOUSE INALAMBRICO LOGITECH M280', N'007000-2019', CAST(N'2019-03-10T00:00:00.000' AS DateTime), 10, 15000.0000, 10, 10000.0000, 5000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (8, N'8080808080808', N'TECLADO CX SLIM WK-718 NEGRO', N'008000-2019', CAST(N'2019-03-25T00:00:00.000' AS DateTime), 20, 20000.0000, 5, 80000.0000, 20000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (9, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', N'009000-2019', CAST(N'2019-03-30T00:00:00.000' AS DateTime), 10, 10000.0000, 5, 50000.0000, 10000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (10, N'4141414141414', N'MONITOR LG 22''''', N'004000-2020', CAST(N'2020-02-28T00:00:00.000' AS DateTime), 20, 40000.0000, 5, 250000.0000, 15000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (11, N'5151515151515', N'MONITOR 23'''' HP P230', N'005000-2019', CAST(N'2019-01-30T00:00:00.000' AS DateTime), 10, 15000.0000, 5, 10000.0000, 5000.0000)
INSERT [dbo].[Efectos_Amortizados] ([Id_Amortizacion_Anual], [NNE], [Nomenclatura], [NroLote], [Fecha_Alta], [Cantidad], [Valor_Adquisicion], [Vida_Util], [Amortizacion_Acumulada], [Valor_Residual]) VALUES (12, N'6161616161616', N'MONITOR PC 19'''' LED CORADIR', N'006000-2019', CAST(N'2019-02-20T00:00:00.000' AS DateTime), 20, 10000.0000, 10, 200000.0000, 50000.0000)
SET IDENTITY_INSERT [dbo].[Efectos_Amortizados] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventario_Valorizado] ON 

INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (1, 1, 2019, N'001000-2019', N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', 10, 50000.0000, 20000.0000, 30000.0000, 2024)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (2, 1, 2019, N'001000-2019', N'2020202020202', N'IMPRESORA LASER HP 107A', 20, 100000.0000, 30000.0000, 70000.0000, 2024)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (3, 1, 2019, N'001000-2019', N'3030303030303', N'IMPRESORA MULTIFUNCION CANON G2100', 10, 80000.0000, 20000.0000, 60000.0000, 2024)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (4, 1, 2018, N'001000-2018', N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', 20, 150000.0000, 50000.0000, 100000.0000, 2023)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (5, 1, 2018, N'001000-2018', N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', 10, 80000.0000, 20000.0000, 60000.0000, 2023)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (6, 1, 2018, N'002000-2018', N'5050505050505', N'MONITOR 20'''' HP P204', 20, 120000.0000, 40000.0000, 80000.0000, 2023)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (7, 2, 2019, N'002000-2019', N'1515151515151', N'MICROCONTROLADOR ATMEL SM-3020', 20, 20000.0000, 10000.0000, 10000.0000, 2024)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (8, 2, 2019, N'002000-2019', N'1616161616161', N'PROCESADOR INTEL CORE I3-9100', 15, 50000.0000, 20000.0000, 30000.0000, 2025)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (9, 2, 2019, N'002000-2019', N'1717171717171', N'MULTIPLEXOR ANALOGICO DIGITAL 16CH', 10, 40000.0000, 20000.0000, 30000.0000, 2025)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (10, 2, 2018, N'003000-2018', N'1818181818181', N'DECODIFICADOR-DEMULTIPLEXOR 74HC', 20, 50000.0000, 10000.0000, 40000.0000, 2025)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (11, 2, 2018, N'003000-2018', N'1919191919191', N'FOTORESISTENCIA LDR 5MM 5528', 25, 60000.0000, 25000.0000, 45000.0000, 2024)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (12, 1, 2019, N'001010-2019', N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', 20, 150000.0000, 50000.0000, 100000.0000, 2023)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (13, 1, 2019, N'001010-2019', N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', 10, 80000.0000, 20000.0000, 60000.0000, 2023)
INSERT [dbo].[Inventario_Valorizado] ([Id_Inventario_Valorizado], [Id_Inventario], [Año_Alta], [NroLote], [NNE], [Nomenclatura], [Cantidad], [Valor_Adquisicion], [Amortizacion_Acumulada], [Valor_Actualizado], [Año_Amortizacion]) VALUES (14, 1, 2019, N'002010-2019', N'5050505050505', N'MONITOR 20'''' HP P204', 20, 120000.0000, 40000.0000, 80000.0000, 2023)
SET IDENTITY_INSERT [dbo].[Inventario_Valorizado] OFF
GO
SET IDENTITY_INSERT [dbo].[Lotes_Destino] ON 

INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1, N'SIEC', 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 20000000.0000, 15000000.0000, 10000000.0000, 5000000.0000, 100000000.0000, 80000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (2, N'SICO', 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 20000000.0000, 15000000.0000, 140000000.0000, 120000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (3, N'SISG', 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 180000000.0000, 160000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (4, N'DGCI', 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 220000000.0000, 180000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (5, N'DGAF', 80000000.0000, 75000000.0000, 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 260000000.0000, 240000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (6, N'DGMN', 90000000.0000, 85000000.0000, 80000000.0000, 75000000.0000, 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 300000000.0000, 300000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1002, N'DIAP', 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 20000000.0000, 15000000.0000, 10000000.0000, 5000000.0000, 100000000.0000, 80000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1003, N'DGPN', 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 20000000.0000, 15000000.0000, 140000000.0000, 120000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1004, N'SIAF', 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 180000000.0000, 160000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1005, N'SGNA', 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 220000000.0000, 180000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1006, N'JEOR', 80000000.0000, 75000000.0000, 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 260000000.0000, 240000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1007, N'JEPR', 90000000.0000, 85000000.0000, 80000000.0000, 75000000.0000, 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 300000000.0000, 300000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1008, N'JEMA', 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 20000000.0000, 15000000.0000, 10000000.0000, 5000000.0000, 100000000.0000, 80000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1009, N'HNPM', 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 20000000.0000, 15000000.0000, 140000000.0000, 120000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1010, N'IBBA', 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 30000000.0000, 25000000.0000, 180000000.0000, 160000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1011, N'IBUS', 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 40000000.0000, 35000000.0000, 220000000.0000, 180000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1012, N'IBPB', 80000000.0000, 75000000.0000, 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 50000000.0000, 45000000.0000, 260000000.0000, 240000000.0000)
INSERT [dbo].[Lotes_Destino] ([Id_Lotes_Destino], [Sigla_Destino], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General]) VALUES (1013, N'ADBA', 90000000.0000, 85000000.0000, 80000000.0000, 75000000.0000, 70000000.0000, 65000000.0000, 60000000.0000, 55000000.0000, 300000000.0000, 300000000.0000)
SET IDENTITY_INSERT [dbo].[Lotes_Destino] OFF
GO
SET IDENTITY_INSERT [dbo].[Lotes_Inventario] ON 

INSERT [dbo].[Lotes_Inventario] ([Id_Lotes_Inventario], [Cod_Inventario], [Des_Inventario], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Id_Inventario]) VALUES (1, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 10000000.0000, 5000000.0000, 20000000.0000, 10000000.0000, 30000000.0000, 20000000.0000, 40000000.0000, 30000000.0000, 100000000.0000, 65000000.0000, 1)
INSERT [dbo].[Lotes_Inventario] ([Id_Lotes_Inventario], [Cod_Inventario], [Des_Inventario], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Id_Inventario]) VALUES (2, N'IO', N'MATERIAL DE INFORMATICA OPERATIVA', 20000000.0000, 10000000.0000, 30000000.0000, 20000000.0000, 40000000.0000, 30000000.0000, 50000000.0000, 40000000.0000, 140000000.0000, 10000000.0000, 2)
INSERT [dbo].[Lotes_Inventario] ([Id_Lotes_Inventario], [Cod_Inventario], [Des_Inventario], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Id_Inventario]) VALUES (3, N'AF', N'ARMAS PORTATILES', 30000000.0000, 20000000.0000, 40000000.0000, 30000000.0000, 50000000.0000, 40000000.0000, 60000000.0000, 50000000.0000, 180000000.0000, 14000000.0000, 3)
INSERT [dbo].[Lotes_Inventario] ([Id_Lotes_Inventario], [Cod_Inventario], [Des_Inventario], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Id_Inventario]) VALUES (4, N'NT', N'TRACCION TERRESTRE', 40000000.0000, 30000000.0000, 50000000.0000, 40000000.0000, 60000000.0000, 50000000.0000, 70000000.0000, 60000000.0000, 220000000.0000, 18000000.0000, 4)
INSERT [dbo].[Lotes_Inventario] ([Id_Lotes_Inventario], [Cod_Inventario], [Des_Inventario], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Id_Inventario]) VALUES (5, N'ED', N'ELECTRONICA DIGITAL', 50000000.0000, 40000000.0000, 60000000.0000, 50000000.0000, 70000000.0000, 60000000.0000, 80000000.0000, 70000000.0000, 260000000.0000, 22000000.0000, 5)
INSERT [dbo].[Lotes_Inventario] ([Id_Lotes_Inventario], [Cod_Inventario], [Des_Inventario], [Valor_Total_Presupuestario], [Total_Valorizado_Presupuestario], [Valor_Total_No_Presupuestario], [Total_Valorizado_No_Presupuestario], [Valor_Total_Donacion], [Total_Valorizado_Donacion], [Valor_Total_Transferencia], [Total_Valorizado_Transferencia], [Valor_Total_General], [Total_Valorizado_General], [Id_Inventario]) VALUES (6, N'EP', N'ELECTRONICA DE POTENCIA', 60000000.0000, 50000000.0000, 70000000.0000, 60000000.0000, 80000000.0000, 70000000.0000, 90000000.0000, 80000000.0000, 300000000.0000, 26000000.0000, 6)
SET IDENTITY_INSERT [dbo].[Lotes_Inventario] OFF
GO
SET IDENTITY_INSERT [dbo].[M18_Inventarios] ON 

INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1, N'IN', N'MATERIAL DE INFORMATICA NO OPERATIVA')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (2, N'IO', N'MATERIAL DE INFORMATICA OPERATIVA')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (3, N'AF', N'ARMAS PORTATILES')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (4, N'NT', N'TRACCION TERRESTRE')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (5, N'ED', N'ELECTRONICA DIGITAL')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (6, N'EP', N'ELECTRONICA DE POTENCIA')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (7, N'EC', N'ELECTRONICA DE CONSUMO')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (8, N'CA', N'COMUNICACIONES ANALOGICAS')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (9, N'CD', N'COMUNICACIONES DIGITALES')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (10, N'PB', N'PUBLICACIONES D.G.M.N.')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1002, N'MH', N'MATERIAL DE HIDROGRAFIA NAVAL')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1003, N'HA', N'HERRAMIENTAS MANUALES')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1004, N'HE', N'HERRAMIENTAS MECANICAS')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1005, N'HM', N'HERRAMIENTAS DE MONTAJE')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1006, N'HS', N'HERRAMIENTAS DE SUJECION')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1007, N'HG', N'HERRAMIENTAS DE GOLPE')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1008, N'HU', N'HERRAMIENTAS DE UNION Y MEDICION')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1009, N'HC', N'HERRAMIENTAS DE CORTE')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1010, N'HT', N'HERRAMIENTAS DE TRAZO')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1011, N'EA', N'ELECTRONICA AUTOMOTRIZ')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1012, N'EN', N'ELECTRONICA NAVAL')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1013, N'CE', N'COMUNICACION ELECTRONICA')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1014, N'EM', N'EQUIPAMIENTO MECANICO')
INSERT [dbo].[M18_Inventarios] ([Id_Inventario], [Codigo], [Descripcion]) VALUES (1015, N'MC', N'MATERIAL DE CARPINTERIA')
SET IDENTITY_INSERT [dbo].[M18_Inventarios] OFF
GO
SET IDENTITY_INSERT [dbo].[M18_OrigenGasto] ON 

INSERT [dbo].[M18_OrigenGasto] ([Id_Origen], [Codigo], [Descripcion]) VALUES (1, N'P', N'PRESUPUESTARIO')
INSERT [dbo].[M18_OrigenGasto] ([Id_Origen], [Codigo], [Descripcion]) VALUES (2, N'N', N'NO PRESUPUESTARIO')
INSERT [dbo].[M18_OrigenGasto] ([Id_Origen], [Codigo], [Descripcion]) VALUES (3, N'D', N'DONACION')
INSERT [dbo].[M18_OrigenGasto] ([Id_Origen], [Codigo], [Descripcion]) VALUES (4, N'T', N'TRANSFERENCIA')
SET IDENTITY_INSERT [dbo].[M18_OrigenGasto] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([Id_Pais], [Cod_Pais], [Des_Pais]) VALUES (1, N'AR', N'ARGENTINA')
INSERT [dbo].[Paises] ([Id_Pais], [Cod_Pais], [Des_Pais]) VALUES (2, N'MX', N'MEXICO')
INSERT [dbo].[Paises] ([Id_Pais], [Cod_Pais], [Des_Pais]) VALUES (3, N'ES', N'ESPAÑA')
INSERT [dbo].[Paises] ([Id_Pais], [Cod_Pais], [Des_Pais]) VALUES (4, N'IT', N'ITALIA')
INSERT [dbo].[Paises] ([Id_Pais], [Cod_Pais], [Des_Pais]) VALUES (5, N'US', N'ESTADOS UNIDOS')
INSERT [dbo].[Paises] ([Id_Pais], [Cod_Pais], [Des_Pais]) VALUES (6, N'UK', N'REINO UNIDO')
INSERT [dbo].[Paises] ([Id_Pais], [Cod_Pais], [Des_Pais]) VALUES (7, N'FR', N'FRANCIA')
INSERT [dbo].[Paises] ([Id_Pais], [Cod_Pais], [Des_Pais]) VALUES (8, N'AL', N'ALEMANIA')
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
SET IDENTITY_INSERT [dbo].[Peliculas] ON 

INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1, N'EL ROBO DEL SIGLO', 125, 2020, N'POLICIAL', 1, CAST(N'2020-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (2, N'EL AMOR MENOS PENSADO', 130, 2018, N'COMEDIA', 1, CAST(N'2018-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (3, N'EL CUENTO DE LAS COMADREJAS', 110, 2018, N'COMEDIA', 1, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (4, N'LA ODISEA DE LOS GILES', 125, 2019, N'COMEDIA', 1, CAST(N'2019-07-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (5, N'EL ANGEL', 140, 2018, N'POLICIAL', 1, CAST(N'2018-10-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (6, N'EL SECRETO DE SUS OJOS', 120, 2010, N'SUSPENSO', 1, CAST(N'2010-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (7, N'RELATOS SALVAJES', 110, 2014, N'COMEDIA', 1, CAST(N'2014-09-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (9, N'TIEMPO DE VALIENTES', 125, 2010, N'COMEDIA', 1, CAST(N'2010-07-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (11, N'LA BATALLA DE MIDWAY', 140, 2019, N'BELICO', 5, CAST(N'2019-05-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (12, N'LOS VIOLENTOS DE KELLY', 145, 1977, N'BELICO', 5, CAST(N'1977-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (13, N'EL DESAFIO DE LAS AGUILAS', 150, 1975, N'BELICO', 5, CAST(N'1975-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (14, N'LA BATALLA DE LAS ARDENAS', 145, 1970, N'BELICO', 5, CAST(N'1970-01-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (15, N'ESPIA POR MANDATO', 140, 1965, N'BELICO', 5, CAST(N'1965-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (16, N'LA NOCHE DE LOS GENERALES', 150, 1977, N'BELICO', 5, CAST(N'1977-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (17, N'DOCE DEL PATIBULO', 145, 1978, N'BELICO', 5, CAST(N'1978-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (18, N'EL DIA MAS LARGO', 155, 1968, N'BELICO', 5, CAST(N'1968-08-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (19, N'CRIMENES DE FAMILIA', 98, 2020, N'DRAMA', 1, CAST(N'2020-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (20, N'ALL INCLUSIVE', 95, 2018, N'COMEDIA', 1, CAST(N'2018-10-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (21, N'LUNA DE AVELLANEDA', 130, 2010, N'COMEDIA', 1, CAST(N'2010-04-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (22, N'EL HIJO DE LA NOVIA', 115, 2008, N'COMEDIA', 1, CAST(N'2008-11-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (23, N'GUASON', 130, 2019, N'DRAMA', 5, CAST(N'2019-01-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1023, N'MI OBRA MAESTRA', 110, 2018, N'COMEDIA', 1, CAST(N'2018-04-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1024, N'LA REINA DEL MIEDO', 105, 2018, N'COMEDIA', 1, CAST(N'2018-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1025, N'MI AMIGA DEL PARQUE', 98, 2018, N'DRAMA', 1, CAST(N'2018-05-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1026, N'LA MIRADA INVISIBLE', 100, 2018, N'DRAMA', 1, CAST(N'2018-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1027, N'LA MISMA SANGRE', 105, 2018, N'POLICIAL', 1, CAST(N'2018-05-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1028, N'LOS SONAMBULOS', 100, 2018, N'DRAMA', 1, CAST(N'2018-06-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1029, N'BADUR HOGAR', 110, 2018, N'COMEDIA', 1, CAST(N'2018-06-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1030, N'LA GUARIDA DEL LOBO', 100, 2018, N'THRILLER', 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1031, N'AMOR DE PELICULA', 95, 2018, N'ROMANCE', 1, CAST(N'2018-06-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1032, N'LA CORDILLERA', 120, 2018, N'SUSPENSO', 1, CAST(N'2018-06-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1033, N'NIEVE NEGRA', 125, 2018, N'THRILLER', 1, CAST(N'2018-07-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1034, N'TESIS SOBRE UN HOMICIDIO', 120, 2018, N'THRILLER', 1, CAST(N'2018-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1035, N'LOS QUE AMAN ODIAN', 100, 2018, N'DRAMA', 1, CAST(N'2018-07-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1036, N'EL FUTBOL O YO', 110, 2018, N'COMEDIA', 1, CAST(N'2018-07-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1037, N'EL PESO DE LA LEY', 100, 2018, N'DRAMA', 1, CAST(N'2018-07-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1038, N'EL CIUDADANO ILUSTRE', 105, 2018, N'DRAMA', 1, CAST(N'2018-07-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1039, N'CAIDA DEL CIELO', 90, 2018, N'ROMANCE', 1, CAST(N'2018-08-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1040, N'EL REY DEL ONCE', 100, 2018, N'COMEDIA', 1, CAST(N'2018-08-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1041, N'SANGRE EN LA BOCA', 120, 2018, N'DRAMA', 1, CAST(N'2018-08-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1042, N'UN AMOR EN TIEMPOS DE SELFIES', 100, 2018, N'ROMANCE', 1, CAST(N'2018-08-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Peliculas] ([Id_Pelicula], [Titulo], [Duracion], [Año], [Genero], [Id_Pais], [Fecha_Estreno]) VALUES (1043, N'PAPELES EN EL VIENTO', 120, 2018, N'COMEDIA', 1, CAST(N'2018-08-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Peliculas] OFF
GO
SET IDENTITY_INSERT [dbo].[Totales_Cargo_Destino] ON 

INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (1, N'SIEC', N'696000', N'696DES', N'DEPARTAMENTO DESARROLLO DE SISTEMAS', 900000.0000, 700000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (2, N'SIEC', N'696000', N'696CED', N'DEPARTAMENTO CENTRO DE DATOS', 7500000.0000, 500000.0000, 250000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (3, N'SIEC', N'696000', N'696PLN', N'DEPARTAMENTO PLANES', 800000.0000, 600000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (4, N'SIEC', N'696000', N'696SOP', N'DEPARTAMENTO SOPORTE TECNICO', 650000.0000, 450000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (5, N'DIAP', N'355000', N'355SUP', N'DAP1 - PERSONAL MILITAR SUPERIOR', 950000.0000, 750000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (6, N'DIAP', N'355000', N'355SUB', N'DAP2 - PERSONAL MILITAR SUBALTERNO', 12000000.0000, 900000.0000, 300000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (7, N'DIAP', N'355000', N'355CIV', N'DAP3 - PERSONAL CIVIL', 800000.0000, 600000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (8, N'DIAP', N'355000', N'355LEG', N'DEPARTAMENTO LEGAJOS Y ASCENSOS', 750000.0000, 500000.0000, 250000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (1007, N'SICO', N'685000', N'685INO', N'DEPARTAMENTO INFORMATICA NO OPERATIVA', 900000.0000, 700000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (1008, N'SICO', N'685000', N'685EDG', N'DEPARTAMENTO ELECTRONICA DIGITAL', 850000.0000, 650000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (1009, N'DIAP', N'355000', N'355SPR', N'DAP1 - PERSONAL MILITAR SUPERIOR - RETIRADOS', 950000.0000, 750000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (1010, N'DIAP', N'355000', N'355SBR', N'DAP2 - PERSONAL MILITAR SUBALTERNO - RETIRADOS', 12000000.0000, 900000.0000, 300000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (1011, N'DIAP', N'355000', N'355CVR', N'DAP3 - PERSONAL CIVIL - RETIRADOS', 800000.0000, 600000.0000, 200000.0000)
INSERT [dbo].[Totales_Cargo_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Cargo_Destino], [Descripcion], [Valor_Total], [Total_Valorizado], [Amortizacion_Acumulada]) VALUES (1012, N'DIAP', N'355000', N'355INF', N'DEPARTAMENTO INFORMATICA', 750000.0000, 500000.0000, 250000.0000)
SET IDENTITY_INSERT [dbo].[Totales_Cargo_Destino] OFF
GO
SET IDENTITY_INSERT [dbo].[Totales_Cargo_Efecto] ON 

INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (1, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'DIAP', N'355SUP')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (2, N'IO', N'MATERIAL DE INFORMATICA NO OPERATIVA', 190000.0000, 130000.0000, 600000.0000, N'DIAP', N'355SUP')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3, N'AF', N'ARMAS PORTATILES', 180000.0000, 100000.0000, 800000.0000, N'DIAP', N'355SUP')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (4, N'NT', N'TRACCION TERRESTRE', 100000.0000, 75000.0000, 250000.0000, N'DIAP', N'355SUB')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (5, N'OC', N'COMUNICACIONES ANALOGICAS', 150000.0000, 120000.0000, 300000.0000, N'DIAP', N'355SUB')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (6, N'WX', N'PUBLICACIONES D.G.M.N.', 190000.0000, 140000.0000, 500000.0000, N'DIAP', N'355SUB')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (7, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 700000.0000, 500000.0000, 200000.0000, N'SIEC', N'696DES')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (8, N'IO', N'MATERIAL DE INFORMATICA NO OPERATIVA', 500000.0000, 400000.0000, 100000.0000, N'SIEC', N'696DES')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (9, N'OC', N'COMUNICACIONES ANALOGICAS', 600000.0000, 500000.0000, 100000.0000, N'SIEC', N'696DES')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (10, N'ED', N'ELECTRONICA DIGITAL', 700000.0000, 600000.0000, 100000.0000, N'SIEC', N'696DES')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (11, N'EP', N'ELECTRONICA DE POTENCIA', 900000.0000, 700000.0000, 200000.0000, N'SIEC', N'696CED')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (12, N'EC', N'ELECTRONICA DE CONSUMO', 1200000.0000, 800000.0000, 400000.0000, N'SIEC', N'696CED')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (13, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 800000.0000, 600000.0000, 200000.0000, N'SIEC', N'696CED')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (14, N'CD', N'COMUNICACIONES DIGITALES', 950000.0000, 700000.0000, 250000.0000, N'SIEC', N'696CED')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (15, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'DIAP', N'355SUB')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (16, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'DIAP', N'355CIV')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (17, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'DIAP', N'355INO')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (18, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'DIAP', N'355LEG')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (19, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'DIAP', N'355RET')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (20, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'DIAP', N'355ASC')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (21, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'SICO', N'685INO')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (22, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'SISG', N'675INO')
INSERT [dbo].[Totales_Cargo_Efecto] ([Id_Cargo_Efecto], [Cod_Cargo_Efecto], [Descripcion], [Total_Cargo_Efecto], [Total_Valorizado], [Total_Amortizado], [Sigla_Destino], [Cod_CargoDestino]) VALUES (23, N'IN', N'MATERIAL DE INFORMATICA OPERATIVA', 200000.0000, 150000.0000, 500000.0000, N'DGCI', N'399INO')
SET IDENTITY_INSERT [dbo].[Totales_Cargo_Efecto] OFF
GO
SET IDENTITY_INSERT [dbo].[Totales_Destino] ON 

INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1, N'SIEC', N'696000', N'SERVICIO DE INFORMATICA DE LA ARMADA', 5000000.0000, 2000000.0000, 3000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (2, N'SICO', N'685000', N'SERVICIO DE COMUNICACIONES NAVALES', 6000000.0000, 3000000.0000, 3000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (3, N'DGCI', N'699000', N'DIRECCION GENERAL DE COMUNICACIONES E INFORMATICA DE LA ARMADA', 8000000.0000, 4000000.0000, 4000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (4, N'SISG', N'690000', N'SERVICIO DE CIBERDEFENSA DE LA ARMADA', 7000000.0000, 4000000.0000, 3000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (5, N'BNPB', N'755000', N'BASE NAVAL PUERTO BELGRANO', 10000000.0000, 3000000.0000, 7000000.0000, N'75')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (6, N'ARPB', N'758000', N'ARSENAL NAVAL PUERTO BELGRANO', 8000000.0000, 5000000.0000, 3000000.0000, N'75')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (7, N'IBPB', N'759000', N'INTENDENCIA NAVAL PUERTO BELGRANO', 5000000.0000, 2000000.0000, 3000000.0000, N'75')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (8, N'HNPB', N'754000', N'HOSPITAL NAVAL PUERTO BELGRANO', 7000000.0000, 3000000.0000, 4000000.0000, N'75')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1002, N'ADBA', N'345000', N'APOSTADERO NAVAL BUENOS AIRES', 6000000.0000, 2000000.0000, 4000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1003, N'SGNA', N'355000', N'SECRETARIA GENERAL NAVAL', 7000000.0000, 2500000.0000, 4500000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1004, N'DGAF', N'455000', N'DIRECCION GENERAL DE ADMINISTRACION FINANCIERA DE LA ARMADA', 8000000.0000, 3500000.0000, 4500000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1005, N'SIAF', N'465000', N'SERVICIO ADMINISTRATIVO FINANCIERO DE LA ARMADA', 7500000.0000, 3000000.0000, 4500000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1006, N'DGIA', N'567000', N'DIRECCION GENERAL DE INTELIGENCIA DE LA ARMADA', 8000000.0000, 3000000.0000, 5000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1007, N'DGMN', N'654000', N'DIRECCION GENERAL DEL MATERIAL NAVAL', 1200000.0000, 2000000.0000, 1000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1008, N'JEOR', N'750000', N'JEFATURA DE ORGANICA DE LA ARMADA', 9000000.0000, 2500000.0000, 6500000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1009, N'HNPM', N'785000', N'HOSPITAL NAVAL PEDRO MALLO', 8500000.0000, 3000000.0000, 5500000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1010, N'DIAP', N'855000', N'DIRECCION DE PERSONAL DE LA ARMADA', 9000000.0000, 3000000.0000, 6000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1011, N'DGPN', N'865000', N'DIRECCION GENERAL DE PERSONAL DE LA ARMADA', 7500000.0000, 2500000.0000, 5000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1012, N'SIHN', N'980000', N'SERVICIO DE HIDROGRAFIA NAVAL', 8500000.0000, 2500000.0000, 6000000.0000, N'50')
INSERT [dbo].[Totales_Destino] ([Id_Total_Destino], [Sigla], [Codigo], [Descripcion], [Valor_Total], [Amortizacion_Acumulada], [Total_Valorizado], [Zona_Naval]) VALUES (1013, N'DIAB', N'950000', N'DIRECCION DE ABASTECIMIENTO DE LA ARMADA', 9000000.0000, 3000000.0000, 6000000.0000, N'50')
SET IDENTITY_INSERT [dbo].[Totales_Destino] OFF
GO
SET IDENTITY_INSERT [dbo].[Totales_Efecto] ON 

INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (1, N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', 10, 300000.0000, 200000.0000, 100000.0000, N'IN', N'SIEC', N'696DES')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (2, N'2020202020202', N'IMPRESORA LASER HP 107A', 12, 400000.0000, 250000.0000, 150000.0000, N'IN', N'SIEC', N'696DES')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3, N'3030303030303', N'IMPRESORA MULTIFUNCION CANON G2100', 5, 350000.0000, 250000.0000, 100000.0000, N'IN', N'SIEC', N'696DES')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (4, N'4040404040404', N'MONITOR SAMSUNG LS22F350 22''''', 20, 400000.0000, 300000.0000, 100000.0000, N'IN', N'SIEC', N'696DES')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (5, N'5050505050505', N'MONITOR 20'''' HP P204', 15, 350000.0000, 200000.0000, 150000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (6, N'6060606060606', N'MONITOR PC 19'''' LED PHILIPS VGA HDMI', 20, 400000.0000, 350000.0000, 150000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (7, N'7070707070707', N'MOUSE INALAMBRICO LOGITECH M280', 40, 120000.0000, 100000.0000, 200000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (8, N'8080808080808', N'TECLADO CX SLIM WK-718 NEGRO', 50, 400000.0000, 300000.0000, 100000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (9, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'SICO', N'685INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (11, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'SICO', N'685INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (13, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'SICO', N'685INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (15, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'SICO', N'685INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (16, N'1515151515151', N'MICROCONTROLADOR ATMEL SM-3020', 20, 300000.0000, 600000.0000, 200000.0000, N'ED', N'SICO', N'685EDG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (17, N'1616161616161', N'PROCESADOR INTEL CORE I3-9100', 10, 200000.0000, 800000.0000, 100000.0000, N'ED', N'SICO', N'685EDG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (18, N'1717171717171', N'MULTIPLEXOR ANALOGICO DIGITAL 16CH', 5, 400000.0000, 900000.0000, 300000.0000, N'ED', N'SICO', N'685EDG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (19, N'1818181818181', N'DECODIFICADOR-DEMULTIPLEXOR 74HC', 10, 350000.0000, 950000.0000, 300000.0000, N'ED', N'SICO', N'685EDG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (20, N'1919191919191', N'FOTORESISTENCIA LDR 5MM 5528', 20, 150000.0000, 700000.0000, 200000.0000, N'ED', N'SICO', N'685EDG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (1017, N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', 10, 200000.0000, 1500000.0000, 50000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (1018, N'1010101010101', N'IMPRESORA MULTIFUNCION EPSON L3110', 5, 100000.0000, 80000.0000, 20000.0000, N'IN', N'SICO', N'685INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (2017, N'2020202020202', N'IMPRESORA LASER HP 107A', 5, 100000.0000, 80000.0000, 20000.0000, N'IN', N'SICO', N'685INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3017, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'SIEC', N'696DES')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3018, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'SIEC', N'696DES')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3019, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'SIEC', N'696DES')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3020, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'SIEC', N'696DES')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3021, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3022, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3023, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3024, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'SIEC', N'696CED')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3025, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'DIAP', N'355SUP')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3026, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'DIAP', N'355SUP')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3027, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'DIAP', N'355SUP')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3028, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'DIAP', N'355SUP')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3029, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'DIAP', N'355SUB')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3030, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'DIAP', N'355SUB')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3031, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'DIAP', N'355SUB')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3032, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'DIAP', N'355SUB')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3033, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'DIAP', N'355CIV')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3034, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'DIAP', N'355CIV')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3035, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'DIAP', N'355CIV')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3036, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'DIAP', N'355CIV')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3037, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'DIAP', N'355INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3038, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'DIAP', N'355INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3039, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'DIAP', N'355INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3040, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'DIAP', N'355INO')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3041, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'DIAP', N'355LEG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3042, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'DIAP', N'355LEG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3043, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'DIAP', N'355LEG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3044, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'DIAP', N'355LEG')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3045, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'DIAP', N'355RSP')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3046, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'DIAP', N'355RSP')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3047, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'DIAP', N'355RSP')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3048, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'DIAP', N'355RSP')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3049, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'DIAP', N'355RSB')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3050, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'DIAP', N'355RSB')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3051, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'DIAP', N'355RSB')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3052, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'DIAP', N'355RSB')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3053, N'9090909090909', N'DISCO SSD WESTERN DIGITAL 480 GB', 20, 300000.0000, 200000.0000, 100000.0000, N'IN', N'DIAP', N'355RCV')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3054, N'1212121212121', N'MEMORIA KINGSTON 4GB DDR4', 30, 120000.0000, 100000.0000, 200000.0000, N'IN', N'DIAP', N'355RCV')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3055, N'1313131313131', N'PLACA DE VIDEO EVGA NVIDIA', 25, 140000.0000, 120000.0000, 200000.0000, N'IN', N'DIAP', N'355RCV')
INSERT [dbo].[Totales_Efecto] ([Id_Efecto], [NNE], [Nomenclatura], [Cantidad], [Total_Efecto], [Total_Valorizado], [Total_Amortizado], [Cargo_Efecto], [Sigla_Destino], [Cod_CargoDestino]) VALUES (3056, N'1414141414141', N'NOTEBOOK EXO E25 INTEL CELERON', 20, 250000.0000, 100000.0000, 150000.0000, N'IN', N'DIAP', N'355RCV')
SET IDENTITY_INSERT [dbo].[Totales_Efecto] OFF
GO
SET IDENTITY_INSERT [dbo].[Valorizacion_Detallada] ON 

INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (3, N'1010101010101', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0101-SERIE-1010', 100100, 20000.0000, 5000.0000, 15000.0000, N'ASIGNADO', N'SIEC')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (4, N'1010101010101', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0101-SERIE-2020', 100200, 20000.0000, 5000.0000, 15000.0000, N'ASIGNADO', N'SICO')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (5, N'1010101010101', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0101-SERIE-3030', 100300, 20000.0000, 5000.0000, 15000.0000, N'ASIGNADO', N'SISG')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (6, N'1010101010101', N'001020-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'0101-SERIE-4040', 100400, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'DGCI')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (7, N'1010101010101', N'001020-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'0101-SERIE-5050', 100500, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'DGMN')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (8, N'1010101010101', N'001020-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'0101-SERIE-6060', 100600, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'DGAF')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (9, N'2020202020202', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0202-SERIE-1010', 100700, 40000.0000, 10000.0000, 30000.0000, N'ASIGNADO', N'SIEC')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (10, N'2020202020202', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0202-SERIE-2020', 100800, 40000.0000, 10000.0000, 30000.0000, N'ASIGNADO', N'SICO')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (11, N'2020202020202', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0202-SERIE-3030', 100900, 40000.0000, 10000.0000, 30000.0000, N'ASIGNADO', N'SISG')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (1009, N'1010101010101', N'001030-2020', CAST(N'2020-03-30T00:00:00.000' AS DateTime), N'0303-SERIE-1010', 200100, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'SIEC')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (1010, N'1010101010101', N'001030-2020', CAST(N'2020-03-30T00:00:00.000' AS DateTime), N'0303-SERIE-1020', 200200, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'SICO')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (1011, N'1010101010101', N'001030-2020', CAST(N'2020-03-30T00:00:00.000' AS DateTime), N'0303-SERIE-1030', 200300, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'SISG')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (2009, N'1010101010101', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0101-SERIE-1020', 100110, 20000.0000, 5000.0000, 15000.0000, N'ASIGNADO', N'SIEC')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (2010, N'1010101010101', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0101-SERIE-2030', 100210, 20000.0000, 5000.0000, 15000.0000, N'ASIGNADO', N'SICO')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (2011, N'1010101010101', N'001010-2020', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'0101-SERIE-3040', 100310, 20000.0000, 5000.0000, 15000.0000, N'ASIGNADO', N'SISG')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (2012, N'1010101010101', N'001020-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'0101-SERIE-4050', 100410, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'DGCI')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (2013, N'1010101010101', N'001020-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'0101-SERIE-5060', 100510, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'DGMN')
INSERT [dbo].[Valorizacion_Detallada] ([Id_Valorizacion_Detallada], [NNE], [NroLote], [Fecha_Alta], [Nro_Serie], [Nro_Inventario], [Precio_Compra], [Amortizacion_Acumulada], [Valor_Actual], [Estado], [Sigla_Destino]) VALUES (2014, N'1010101010101', N'001020-2020', CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'0101-SERIE-6070', 100610, 30000.0000, 10000.0000, 20000.0000, N'ASIGNADO', N'DGAF')
SET IDENTITY_INSERT [dbo].[Valorizacion_Detallada] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_M18_Inventarios]    Script Date: 26/02/2021 10:29:34 a.m. ******/
ALTER TABLE [dbo].[M18_Inventarios] ADD  CONSTRAINT [IX_M18_Inventarios] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_M18_OrigenGasto]    Script Date: 26/02/2021 10:29:34 a.m. ******/
ALTER TABLE [dbo].[M18_OrigenGasto] ADD  CONSTRAINT [IX_M18_OrigenGasto] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Paises] FOREIGN KEY([Id_Pais])
REFERENCES [dbo].[Paises] ([Id_Pais])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FK_Peliculas_Paises]
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spAltas_Anuales_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spAltas_Anuales_Obtener]
	@iAño_Desde int,
	@iAño_Hasta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Valor_Total_Presupuestario]
      ,[Total_Valorizado_Presupuestario]
      ,[Valor_Total_No_Presupuestario]
      ,[Total_Valorizado_No_Presupuestario]
      ,[Valor_Total_Donacion]
      ,[Total_Valorizado_Donacion]
      ,[Valor_Total_Transferencia]
      ,[Total_Valorizado_Transferencia]
      ,[Valor_Total_General]
      ,[Total_Valorizado_General]
      ,[Año]
    FROM [SIGMA].[dbo].[Altas_Anuales]
	WHERE (dbo.Altas_Anuales.Año >= @iAño_Desde OR @iAño_Desde = 0)
	  AND (dbo.Altas_Anuales.Año <= @iAño_Hasta OR @iAño_Hasta = 0)
    ORDER BY dbo.Altas_Anuales.Año
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spAltas_Detalladas_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spAltas_Detalladas_Obtener]
	@sNNE varchar(13),
	@dFecha_Desde datetime,
	@dFecha_Hasta datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [NroLote]
      ,[Fecha_Alta]
      ,[Origen_Gasto]
      ,[Cantidad]
      ,[Valor_Adquisicion]
      ,[Total_Compra]
      ,[Amortizacion_Acumulada]
      ,[Valor_Actual]
      ,[NNE]
      ,[Desc_Proveedor]
  FROM [SIGMA].[dbo].[Altas_Detalladas]
  WHERE (dbo.Altas_Detalladas.NNE = @sNNE)
    AND (dbo.Altas_Detalladas.Fecha_Alta >= @dFecha_Desde OR YEAR(@dFecha_Desde) = 9999)
	AND (dbo.Altas_Detalladas.Fecha_Alta <= @dFecha_Hasta OR YEAR(@dFecha_Hasta) = 9999)
  ORDER BY dbo.Altas_Detalladas.Fecha_Alta, dbo.Altas_Detalladas.NroLote, dbo.Altas_Detalladas.NNE
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spAltas_Generales_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spAltas_Generales_Obtener]
	@dFecha_Desde datetime,
	@dFecha_Hasta datetime,
	@iID_Origen int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [NroLote]
      ,[Fecha_Alta]
      ,[Id_Origen]
      ,[Origen_Gasto]
      ,[Documento_Compra]
      ,[Expediente_Compra]
      ,[NNE]
      ,[Nomenclatura]
      ,[Cantidad]
      ,[Total_Compra]
      ,[Total_Valorizado]
  FROM [SIGMA].[dbo].[Altas_Generales]
  WHERE (dbo.Altas_Generales.Fecha_Alta >= @dFecha_Desde)
    AND (dbo.Altas_Generales.Fecha_Alta <= @dFecha_Hasta)
    AND (dbo.Altas_Generales.Id_Origen = @iID_Origen OR @iID_Origen = 0)
  ORDER BY dbo.Altas_Generales.Fecha_Alta, dbo.Altas_Generales.Documento_Compra, dbo.Altas_Generales.NNE
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spAltas_Totalizadas_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spAltas_Totalizadas_Obtener]
	@iID_Inventario int,
	@iAño_Desde int,
	@iAño_Hasta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Año_Alta]
      ,[Total_Altas_Presupuestarias]
      ,[Total_Altas_No_Presupuestarias]
      ,[Total_Altas_Donacion]
      ,[Total_Altas_Transferencia]
      ,[Total_Altas_General]
      ,[Total_Valorizado]
  FROM [SIGMA].[dbo].[Altas_Totalizadas]
  WHERE (dbo.Altas_Totalizadas.Id_Inventario = @iID_Inventario)
    AND (dbo.Altas_Totalizadas.Año_Alta >= @iAño_Desde OR @iAño_Desde = 0)
	AND (dbo.Altas_Totalizadas.Año_Alta <= @iAño_Hasta OR @iAño_Hasta = 0)
  ORDER BY dbo.Altas_Totalizadas.Año_Alta
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spAmortizaciones_Anuales_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spAmortizaciones_Anuales_Obtener]
	@dFecha_Desde datetime,
	@dFecha_Hasta datetime,
	@sNroLote varchar(11),
	@sNNE varchar(13)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [NNE]
      ,[Nomenclatura]
      ,[NroLote]
      ,[Fecha_Alta]
      ,[Vida_Util]
      ,[Cantidad]
      ,[Valor_Compra]
      ,[Valor_Residual]
      ,[Año_Amortizacion]
      ,[Sigla_Destino]
      ,[Cargo_Efecto]
    FROM [SIGMA].[dbo].[Amortizaciones_Anuales]
    WHERE (dbo.Amortizaciones_Anuales.Fecha_Alta >= @dFecha_Desde)
      AND (dbo.Amortizaciones_Anuales.Fecha_Alta <= @dFecha_Hasta)
      AND (dbo.Amortizaciones_Anuales.NroLote = @sNroLote OR @sNroLote = '')
      AND (dbo.Amortizaciones_Anuales.NNE = @sNNE OR @sNNE = '')
    ORDER BY dbo.Amortizaciones_Anuales.Fecha_Alta, dbo.Amortizaciones_Anuales.NroLote, dbo.Amortizaciones_Anuales.NNE
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spDescargos_Valorizados_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spDescargos_Valorizados_Obtener]
	@dFecha_Desde datetime,
	@dFecha_Hasta datetime,
	@sSigla varchar(4),
	@sNNE varchar(13)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [NNE]
      ,[Nomenclatura]
      ,[NroLote]
      ,[Fecha_Alta]
      ,[Cantidad]
      ,[Vida_Util]
      ,[Valor_Adquisicion]
      ,[Amortizacion_Acumulada]
      ,[Valor_Actual]
      ,[Fecha_Descargo]
      ,[Sigla_Destino]
    FROM [SIGMA].[dbo].[Descargos_Valorizados]
    WHERE (Fecha_Alta >= @dFecha_Desde)
      AND (Fecha_Alta <= @dFecha_Hasta)
      AND (Sigla_Destino = @sSigla OR @sSigla = '')
      AND (NNE = @sNNE OR @sNNE = '')
    ORDER BY Fecha_Alta, Sigla_Destino, NNE
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spDespiece_Valorizado_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spDespiece_Valorizado_Obtener]
	@sNNE_Primario varchar(13),
	@iNroInven_Primario bigint,
	@sNroSerie_Primario varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [NNE_Primario]
      ,[NroSerie_Primario]
      ,[NroInven_Primario]
      ,[NNE_Despiece]
      ,[Nomenclatura]
      ,[NroLote]
      ,[Fecha_Alta]
      ,[Cantidad]
      ,[Valor_Compra]
      ,[Vida_Util]
      ,[Amortizacion_Acumulada]
      ,[Valor_Actual]
    FROM [SIGMA].[dbo].[Despiece_Valorizado]
	WHERE (NNE_Primario = @sNNE_Primario)
	  AND (NroInven_Primario = @iNroInven_Primario OR @iNroInven_Primario = 0)
	  AND (NroSerie_Primario = @sNroSerie_Primario OR @sNroSerie_Primario = '')
    ORDER BY NNE_Despiece
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spEfectos_Amortizados_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spEfectos_Amortizados_Obtener]
	@dFecha_Desde datetime,
	@dFecha_Hasta datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [NNE]
      ,[Nomenclatura]
      ,[NroLote]
      ,[Fecha_Alta]
      ,[Cantidad]
      ,[Valor_Adquisicion]
      ,[Vida_Util]
      ,[Amortizacion_Acumulada]
      ,[Valor_Residual]
    FROM [SIGMA].[dbo].[Efectos_Amortizados]
	WHERE (Fecha_Alta >= @dFecha_Desde)
	  AND (Fecha_Alta <= @dFecha_Hasta)
	ORDER BY Fecha_Alta, NroLote, NNE
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spInventario_Valorizado_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spInventario_Valorizado_Obtener]
	@iID_Inventario int,
	@iAño int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Id_Inventario]
      ,[Año_Alta]
      ,[NroLote]
      ,[NNE]
      ,[Nomenclatura]
      ,[Cantidad]
      ,[Valor_Adquisicion]
      ,[Amortizacion_Acumulada]
      ,[Valor_Actualizado]
      ,[Año_Amortizacion]
    FROM [SIGMA].[dbo].[Inventario_Valorizado]
	WHERE (Id_Inventario = @iID_Inventario)
	  AND (Año_Alta = @iAño)
    ORDER BY NNE, NroLote
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spLotes_Destino_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spLotes_Destino_Obtener]
	@dFecha_Desde datetime,
	@dFecha_Hasta datetime,
    @sSigla varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Sigla_Destino]
      ,[Valor_Total_Presupuestario]
      ,[Total_Valorizado_Presupuestario]
      ,[Valor_Total_No_Presupuestario]
      ,[Total_Valorizado_No_Presupuestario]
      ,[Valor_Total_Donacion]
      ,[Total_Valorizado_Donacion]
      ,[Valor_Total_Transferencia]
      ,[Total_Valorizado_Transferencia]
      ,[Valor_Total_General]
      ,[Total_Valorizado_General]
    FROM [SIGMA].[dbo].[Lotes_Destino]
	WHERE (Sigla_Destino = @sSigla OR @sSigla = '')
    ORDER BY Sigla_Destino
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spLotes_Inventario_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spLotes_Inventario_Obtener]
	@dFecha_Desde datetime,
	@dFecha_Hasta datetime,
	@iID_Inventario int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Cod_Inventario]
      ,[Des_Inventario]
      ,[Valor_Total_Presupuestario]
      ,[Total_Valorizado_Presupuestario]
      ,[Valor_Total_No_Presupuestario]
      ,[Total_Valorizado_No_Presupuestario]
      ,[Valor_Total_Donacion]
      ,[Total_Valorizado_Donacion]
      ,[Valor_Total_Transferencia]
      ,[Total_Valorizado_Transferencia]
      ,[Valor_Total_General]
      ,[Total_Valorizado_General]
      ,[Id_Inventario]
    FROM [SIGMA].[dbo].[Lotes_Inventario]
	WHERE (Id_Inventario = @iID_Inventario OR @iID_Inventario = 0)
    ORDER BY Cod_Inventario
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spPeliculas_Seleccionar]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spPeliculas_Seleccionar]
	@sCod_Pais varchar(2),
	@iAño int,
	@dFecha_Desde datetime,
	@dFecha_Hasta datetime
AS
BEGIN
	SET NOCOUNT ON;

	SELECT dbo.Peliculas.Titulo, dbo.Peliculas.Duracion, dbo.Peliculas.Año, dbo.Peliculas.Genero, dbo.Paises.Cod_Pais, dbo.Paises.Des_Pais, dbo.Peliculas.Fecha_Estreno
      FROM dbo.Peliculas INNER JOIN
           dbo.Paises ON dbo.Peliculas.Id_Pais = dbo.Paises.Id_Pais
		   WHERE (Cod_Pais = @sCod_Pais OR @sCod_Pais = '')
		     AND (Año = @iAño OR @iAño = 0)
			 AND (Fecha_Estreno >= @dFecha_Desde OR YEAR(@dFecha_Desde) = 9999)
			 AND (Fecha_Estreno <= @dFecha_Hasta OR YEAR(@dFecha_Hasta) = 9999)
			 ORDER BY dbo.Peliculas.Titulo
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spTotales_Cargo_Destino_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spTotales_Cargo_Destino_Obtener]
	@sSigla varchar(4),
	@sCargo_Destino varchar(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Sigla]
      ,[Codigo]
      ,[Cargo_Destino]
      ,[Descripcion]
      ,[Valor_Total]
      ,[Total_Valorizado]
      ,[Amortizacion_Acumulada]
    FROM [SIGMA].[dbo].[Totales_Cargo_Destino]
	WHERE (Sigla = @sSigla)
	  AND (Cargo_Destino = @sCargo_Destino OR @sCargo_Destino = '')
	ORDER BY Cargo_Destino
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spTotales_Cargo_Efecto_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spTotales_Cargo_Efecto_Obtener]
	@sCod_Cargo_Efecto varchar(2),
	@sSigla_Destino varchar(4),
	@sCod_CargoDestino varchar(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Cod_Cargo_Efecto]
      ,[Descripcion]
      ,[Total_Cargo_Efecto]
      ,[Total_Valorizado]
      ,[Total_Amortizado]
      ,[Sigla_Destino]
      ,[Cod_CargoDestino]
     FROM [SIGMA].[dbo].[Totales_Cargo_Efecto]
	WHERE (Cod_Cargo_Efecto = @sCod_Cargo_Efecto OR @sCod_Cargo_Efecto = '')
	  AND (Sigla_Destino = @sSigla_Destino OR @sSigla_Destino = '')
	  AND (Cod_CargoDestino = @sCod_CargoDestino OR @sCod_CargoDestino = '')
	ORDER BY Sigla_Destino, Cod_CargoDestino
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spTotales_Destino_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spTotales_Destino_Obtener]
	@sZona varchar(2),
	@sSigla varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Sigla]
      ,[Codigo]
      ,[Descripcion]
      ,[Valor_Total]
      ,[Amortizacion_Acumulada]
      ,[Total_Valorizado]
      ,[Zona_Naval]
    FROM [SIGMA].[dbo].[Totales_Destino]
	WHERE (Zona_Naval = @sZona OR @sZona = '')
	  AND (Sigla = @sSigla OR @sSigla = '')
	ORDER BY Sigla
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spTotales_Efecto_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spTotales_Efecto_Obtener]
	@sNNE varchar(13),
	@sSigla_Destino varchar(4),
	@sCod_CargoDestino varchar(6),
	@sCargo_Efecto varchar(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [NNE]
      ,[Nomenclatura]
      ,[Cantidad]
      ,[Total_Efecto]
      ,[Total_Valorizado]
      ,[Total_Amortizado]
      ,[Cargo_Efecto]
      ,[Sigla_Destino]
      ,[Cod_CargoDestino]
    FROM [SIGMA].[dbo].[Totales_Efecto]
	WHERE (NNE = @sNNE OR @sNNE = '')
	  AND (Sigla_Destino = @sSigla_Destino OR @sSigla_Destino = '')
	  AND (Cod_CargoDestino = @sCod_CargoDestino OR @sCod_CargoDestino = '')
	  AND (Cargo_Efecto = @sCargo_Efecto OR @sCargo_Efecto = '')
	ORDER BY Sigla_Destino, Cod_CargoDestino, Cargo_Efecto
END
GO
/****** Object:  StoredProcedure [dbo].[SIGMA_spValorizacion_Detallada_Obtener]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SIGMA_spValorizacion_Detallada_Obtener]
	@sNNE varchar(13),
	@sNroLote varchar(11),
	@sSigla varchar(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [NNE]
      ,[NroLote]
      ,[Fecha_Alta]
      ,[Nro_Serie]
      ,[Nro_Inventario]
      ,[Precio_Compra]
      ,[Amortizacion_Acumulada]
      ,[Valor_Actual]
      ,[Estado]
      ,[Sigla_Destino]
    FROM [SIGMA].[dbo].[Valorizacion_Detallada]
	WHERE (NNE = @sNNE)
	  AND (NroLote = @sNroLote OR @sNroLote = '')
	  AND (Sigla_Destino = @sSigla OR @sSigla = '')
	ORDER BY NroLote, Sigla_Destino
END
GO
/****** Object:  StoredProcedure [dbo].[spPRUEBAS_VALORIZACION]    Script Date: 26/02/2021 10:29:34 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spPRUEBAS_VALORIZACION]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT DATEDIFF(DAY, Fecha_Alta, GETDATE()) / 365 AS AÑOS, Cantidad * Precio_Unitario AS VALOR_COMPRA,
       Vida_Util, Porcentaje_Amortizacion,
	   (DATEDIFF(DAY, Fecha_Alta, GETDATE()) / 365) * Porcentaje_Amortizacion AS Porcentaje_Amortizado,
	   ((Cantidad * Precio_Unitario) * (DATEDIFF(DAY, Fecha_Alta, GETDATE()) / 365) * Porcentaje_Amortizacion) / 100 AS AMORTIZACION_ACUMULADA,
	   (Cantidad * Precio_Unitario) - (((Cantidad * Precio_Unitario) * (DATEDIFF(DAY, Fecha_Alta, GETDATE()) / 365) * Porcentaje_Amortizacion) / 100) AS VALOR_ACTUAL,
	   (Cantidad * Precio_Unitario) - (((Cantidad * Precio_Unitario) * Vida_Util * Porcentaje_Amortizacion) / 100) AS VALOR_RESIDUAL
    FROM dbo.Detalle_Lote
END
GO
