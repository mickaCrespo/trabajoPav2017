USE [master]
GO
/****** Object:  Database [db_consultorio_odontologico]    Script Date: 09/27/2017 14:11:11 ******/
CREATE DATABASE [db_consultorio_odontologico] ON  PRIMARY 
( NAME = N'db_consultorio_odontologico', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\db_consultorio_odontologico.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_consultorio_odontologico_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\db_consultorio_odontologico_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_consultorio_odontologico] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_consultorio_odontologico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_consultorio_odontologico] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET ARITHABORT OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET AUTO_CLOSE ON
GO
ALTER DATABASE [db_consultorio_odontologico] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_consultorio_odontologico] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_consultorio_odontologico] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_consultorio_odontologico] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET  ENABLE_BROKER
GO
ALTER DATABASE [db_consultorio_odontologico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_consultorio_odontologico] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_consultorio_odontologico] SET  READ_WRITE
GO
ALTER DATABASE [db_consultorio_odontologico] SET RECOVERY SIMPLE
GO
ALTER DATABASE [db_consultorio_odontologico] SET  MULTI_USER
GO
ALTER DATABASE [db_consultorio_odontologico] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_consultorio_odontologico] SET DB_CHAINING OFF
GO
USE [db_consultorio_odontologico]
GO
/****** Object:  Table [dbo].[Ubicaciones]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubicaciones](
	[idUbicacion] [int] NOT NULL,
	[TipoDtente] [int] NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Ubicaciones] PRIMARY KEY CLUSTERED 
(
	[idUbicacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidad](
	[idEspecialidad] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.Especialidad] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObraSocial]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObraSocial](
	[idOS] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.ObraSocial] PRIMARY KEY CLUSTERED 
(
	[idOS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prestaciones]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prestaciones](
	[idPrestacion] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[precio] [float] NULL,
	[duracion] [int] NULL,
 CONSTRAINT [PK_dbo.Prestaciones] PRIMARY KEY CLUSTERED 
(
	[idPrestacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pacientes](
	[dniPaciente] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[sexo] [nchar](10) NULL,
	[fechaNacimiento] [date] NULL,
	[telContacto] [varchar](50) NULL,
	[baja] [nchar](10) NULL,
 CONSTRAINT [PK_dbo.Pacientes] PRIMARY KEY CLUSTERED 
(
	[dniPaciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Odontologos]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Odontologos](
	[legajo] [int] NOT NULL,
	[apellido] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[sexo] [nchar](10) NULL,
	[fechaNacimiento] [date] NULL,
	[eMail] [varchar](50) NULL,
	[domicilio] [varchar](50) NULL,
	[nroMatricula] [int] NULL,
	[fechaIngreso] [date] NULL,
	[baja] [nchar](10) NULL,
	[telContacto] [varchar](50) NULL,
 CONSTRAINT [PK_Odontologos] PRIMARY KEY CLUSTERED 
(
	[legajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alergias]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alergias](
	[idAlergia] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.Alergias] PRIMARY KEY CLUSTERED 
(
	[idAlergia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enfermedades]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enfermedades](
	[idEnfermedades] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.Enfermedades] PRIMARY KEY CLUSTERED 
(
	[idEnfermedades] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[idMedicamento] [int] NOT NULL,
	[droga] [varchar](50) NULL,
	[laboratorio] [varchar](50) NULL,
	[restricciones] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.Medicamentos] PRIMARY KEY CLUSTERED 
(
	[idMedicamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HistoriaClinica]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistoriaClinica](
	[dniPaciente] [int] NOT NULL,
	[idPrestacion] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[idUbicacion] [int] NULL,
	[observaciones] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.HistoriaClinica] PRIMARY KEY CLUSTERED 
(
	[dniPaciente] ASC,
	[idPrestacion] ASC,
	[fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Planes]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Planes](
	[idPlan] [int] NOT NULL,
	[idObraSocial] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.Plan] PRIMARY KEY CLUSTERED 
(
	[idPlan] ASC,
	[idObraSocial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MedicosXEspecialidad]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicosXEspecialidad](
	[idEspecialidad] [int] NOT NULL,
	[idMedico] [int] NOT NULL,
 CONSTRAINT [PK_MedicosXEspecialidad] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC,
	[idMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnfermedadesXPaciente]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnfermedadesXPaciente](
	[dniPaciente] [int] NOT NULL,
	[idEnfermedad] [int] NOT NULL,
	[descrpicion] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.EnfermedadesXPaciente] PRIMARY KEY CLUSTERED 
(
	[dniPaciente] ASC,
	[idEnfermedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlergiasXPaciente]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlergiasXPaciente](
	[dniPaciente] [int] NULL,
	[idAlergia] [int] NULL,
	[descrpicion] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receta](
	[legajoOdontologo] [int] NOT NULL,
	[dniPaciente] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[idMedicamento] [int] NOT NULL,
	[observaciones] [varchar](50) NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[legajoOdontologo] ASC,
	[dniPaciente] ASC,
	[fecha] ASC,
	[hora] ASC,
	[idMedicamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrestacionesPorPlan]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrestacionesPorPlan](
	[idPlan] [int] NOT NULL,
	[idObraSocial] [int] NOT NULL,
	[idPrestacion] [int] NOT NULL,
	[montoCubierto] [float] NULL,
 CONSTRAINT [PK_dbo.PrestacionesXPlan] PRIMARY KEY CLUSTERED 
(
	[idPlan] ASC,
	[idObraSocial] ASC,
	[idPrestacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObraSocialXPaciente]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObraSocialXPaciente](
	[idNroAfiliado] [int] NOT NULL,
	[idPlan] [int] NOT NULL,
	[idObraSocial] [int] NOT NULL,
	[dniPaciente] [int] NULL,
 CONSTRAINT [PK_ObraSocialPorPaciente] PRIMARY KEY CLUSTERED 
(
	[idNroAfiliado] ASC,
	[idPlan] ASC,
	[idObraSocial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 09/27/2017 14:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[nroFactura] [int] NOT NULL,
	[fecha] [date] NULL,
	[dniPaciente] [int] NULL,
	[legajoOdontologo] [int] NULL,
	[idObraSocial] [int] NULL,
	[idPlan] [int] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[nroFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 09/27/2017 14:11:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleFactura](
	[nroFactura] [int] NOT NULL,
	[idPrestacion] [int] NOT NULL,
	[monto] [float] NULL,
 CONSTRAINT [PK_DetalleFactura] PRIMARY KEY CLUSTERED 
(
	[nroFactura] ASC,
	[idPrestacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.HistoriaClinica_dbo.Paciente]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Paciente] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Paciente]
GO
/****** Object:  ForeignKey [FK_dbo.HistoriaClinica_dbo.Prestaciones]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Prestaciones] FOREIGN KEY([idPrestacion])
REFERENCES [dbo].[Prestaciones] ([idPrestacion])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Prestaciones]
GO
/****** Object:  ForeignKey [FK_HistoriaClinica_Ubicaciones]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaClinica_Ubicaciones] FOREIGN KEY([idUbicacion])
REFERENCES [dbo].[Ubicaciones] ([idUbicacion])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_HistoriaClinica_Ubicaciones]
GO
/****** Object:  ForeignKey [PlanesPorObraSocial]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[Planes]  WITH CHECK ADD  CONSTRAINT [PlanesPorObraSocial] FOREIGN KEY([idObraSocial])
REFERENCES [dbo].[ObraSocial] ([idOS])
GO
ALTER TABLE [dbo].[Planes] CHECK CONSTRAINT [PlanesPorObraSocial]
GO
/****** Object:  ForeignKey [FK_MedicosXEspecialidad_Especialidades]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[MedicosXEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicosXEspecialidad_Especialidades] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[MedicosXEspecialidad] CHECK CONSTRAINT [FK_MedicosXEspecialidad_Especialidades]
GO
/****** Object:  ForeignKey [FK_MedicosXEspecialidad_Odontologos]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[MedicosXEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicosXEspecialidad_Odontologos] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Odontologos] ([legajo])
GO
ALTER TABLE [dbo].[MedicosXEspecialidad] CHECK CONSTRAINT [FK_MedicosXEspecialidad_Odontologos]
GO
/****** Object:  ForeignKey [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[EnfermedadesXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades] FOREIGN KEY([idEnfermedad])
REFERENCES [dbo].[Enfermedades] ([idEnfermedades])
GO
ALTER TABLE [dbo].[EnfermedadesXPaciente] CHECK CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades]
GO
/****** Object:  ForeignKey [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[EnfermedadesXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[EnfermedadesXPaciente] CHECK CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes]
GO
/****** Object:  ForeignKey [FK_dbo.AlergiasPorPaciente_dbo.Alergias]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[AlergiasXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Alergias] FOREIGN KEY([idAlergia])
REFERENCES [dbo].[Alergias] ([idAlergia])
GO
ALTER TABLE [dbo].[AlergiasXPaciente] CHECK CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Alergias]
GO
/****** Object:  ForeignKey [FK_dbo.AlergiasPorPaciente_dbo.Pacientes]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[AlergiasXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[AlergiasXPaciente] CHECK CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Pacientes]
GO
/****** Object:  ForeignKey [FK_Receta_Medicamentos]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Medicamentos] FOREIGN KEY([idMedicamento])
REFERENCES [dbo].[Medicamentos] ([idMedicamento])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Medicamentos]
GO
/****** Object:  ForeignKey [FK_Receta_Odontologos]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Odontologos] FOREIGN KEY([legajoOdontologo])
REFERENCES [dbo].[Odontologos] ([legajo])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Odontologos]
GO
/****** Object:  ForeignKey [FK_Receta_Pacientes]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Pacientes]
GO
/****** Object:  ForeignKey [PrestacionesXPlan]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[PrestacionesPorPlan]  WITH CHECK ADD  CONSTRAINT [PrestacionesXPlan] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[PrestacionesPorPlan] CHECK CONSTRAINT [PrestacionesXPlan]
GO
/****** Object:  ForeignKey [ObraSocialPorPaciente_ObraSocial]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[ObraSocialXPaciente]  WITH CHECK ADD  CONSTRAINT [ObraSocialPorPaciente_ObraSocial] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[ObraSocialXPaciente] CHECK CONSTRAINT [ObraSocialPorPaciente_ObraSocial]
GO
/****** Object:  ForeignKey [ObraSocialPorPaciente_Paciente]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[ObraSocialXPaciente]  WITH CHECK ADD  CONSTRAINT [ObraSocialPorPaciente_Paciente] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[ObraSocialXPaciente] CHECK CONSTRAINT [ObraSocialPorPaciente_Paciente]
GO
/****** Object:  ForeignKey [FK_Factura_Odontologo]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Odontologo] FOREIGN KEY([legajoOdontologo])
REFERENCES [dbo].[Odontologos] ([legajo])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Odontologo]
GO
/****** Object:  ForeignKey [FK_Factura_Paciente]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Paciente] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Paciente]
GO
/****** Object:  ForeignKey [FK_Factura_PrestacionesXPlan]    Script Date: 09/27/2017 14:11:22 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_PrestacionesXPlan] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_PrestacionesXPlan]
GO
/****** Object:  ForeignKey [FK_DetalleFactura_Facturas]    Script Date: 09/27/2017 14:11:23 ******/
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Facturas] FOREIGN KEY([nroFactura])
REFERENCES [dbo].[Factura] ([nroFactura])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Facturas]
GO
/****** Object:  ForeignKey [FK_DetalleFactura_Prestaciones]    Script Date: 09/27/2017 14:11:23 ******/
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Prestaciones] FOREIGN KEY([idPrestacion])
REFERENCES [dbo].[Prestaciones] ([idPrestacion])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Prestaciones]
GO
