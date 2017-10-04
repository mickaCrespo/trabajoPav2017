USE [master]
GO
/****** Object:  Database [db_consultorio_odontologico]    Script Date: 10/04/2017 01:57:47 ******/
CREATE DATABASE [db_consultorio_odontologico] ON  PRIMARY 
( NAME = N'db_consultorio_odontologico', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\db_consultorio_odontologico.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_consultorio_odontologico_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\db_consultorio_odontologico_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 10/04/2017 01:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[idUbicacion] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Ubicaciones] PRIMARY KEY CLUSTERED 
(
	[idUbicacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ubicacion] ([idUbicacion], [descripcion]) VALUES (0, N'Todos')
INSERT [dbo].[Ubicacion] ([idUbicacion], [descripcion]) VALUES (1, N'Superior derecho')
INSERT [dbo].[Ubicacion] ([idUbicacion], [descripcion]) VALUES (2, N'Superior izquierdo')
INSERT [dbo].[Ubicacion] ([idUbicacion], [descripcion]) VALUES (3, N'Inferior izquierdo')
INSERT [dbo].[Ubicacion] ([idUbicacion], [descripcion]) VALUES (4, N'Inferior derecho')
/****** Object:  Table [dbo].[TipoDiente]    Script Date: 10/04/2017 01:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDiente](
	[idTipo] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_TipoDiente] PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (0, N'Todos')
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (1, N'Incisivo central')
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (2, N'Incisivo lateral')
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (3, N'Canino')
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (4, N'Primer premolar')
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (5, N'Segundo premolar')
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (6, N'Primer molar')
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (7, N'Segundo molar')
INSERT [dbo].[TipoDiente] ([idTipo], [nombre]) VALUES (8, N'Tercer molar')
/****** Object:  Table [dbo].[Especialidad]    Script Date: 10/04/2017 01:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidad](
	[idEspecialidad] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](1000) NULL,
 CONSTRAINT [PK_dbo.Especialidad] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (1, N'Periodoncia', N'Diagnóstico y tratamiento de las enfermedades')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (2, N'Odontopediatría', N'Trata niños')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (3, N'Ortodoncia', N'tratamiento de malposiciones en piezas dentales')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (4, N'Cariología', N'Especializada en caries y su tratamiento')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (5, N'Gnatología', N'Estudio de la función del aparato masticador')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (6, N'Endodoncia', N'Extirpación y sustitución de la pulpa dental')
/****** Object:  Table [dbo].[ObraSocial]    Script Date: 10/04/2017 01:57:50 ******/
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
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (0, N'N/T')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (1, N'OSPE')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (2, N'OSDE')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (3, N'DASPU')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (4, N'Sancor Salud')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (5, N'Federada Salud')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (6, N'OSFATUN')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (7, N'PAMI')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (8, N'Swiss Medical')
/****** Object:  Table [dbo].[Prestaciones]    Script Date: 10/04/2017 01:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prestaciones](
	[idPrestacion] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](1000) NULL,
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
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (1, N'Radiología', N'Presencia de caries, infecciones y fracturas', 150, 1)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (2, N'Ortodoncia', N'Reposicionar piezas dentales incorrectas', 3000, 20)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (3, N'Implantología', N'Colocación de uno o varios implantes', 1600, 8)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (4, N'Periodoncia', N'Diagnóstico y tratamiento de encías', 600, 3)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (5, N'Prótesis', N'Restaura la anatomía de una o mas piezas dentarias', 1200, 4)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (6, N'Endodoncia', N'Tratamiento de conductos', 700, 4)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (7, N'Blanqueamiento  dental', N'Permite eliminar manchas y oscurecimientos', 600, 1)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (8, N'Cirugía', N'Extracción de la pieza dentaria', 600, 2)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (9, N'Consulta', N'Revisión y diagnóstico del paciente', 500, 1)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (10, N'Arreglo estético', N'Le arreglamos la boca', 600, 1)
INSERT [dbo].[Prestaciones] ([idPrestacion], [nombre], [descripcion], [precio], [duracion]) VALUES (11, N'Extraccion', N'', 300, 1)
/****** Object:  Table [dbo].[Pacientes]    Script Date: 10/04/2017 01:57:50 ******/
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
	[activo] [nchar](10) NULL,
 CONSTRAINT [PK_dbo.Pacientes] PRIMARY KEY CLUSTERED 
(
	[dniPaciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (16170265, N'Elizabeth', N'Borello', N'F         ', CAST(0xD0F20A00 AS Date), N'3512100361', N'F         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (26155344, N'Maribel', N'Cowan', N'M         ', CAST(0xD1040B00 AS Date), N'2954586320', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39458284, N'Nicolás', N'Fernández', N'M         ', CAST(0x9E1F0B00 AS Date), N'351895485', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39697663, N'Eliana Belen', N'Garcia', N'F         ', CAST(0x571F0B00 AS Date), N'2954311249', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39932423, N'Luciana', N'Peron', N'F         ', CAST(0xAD1F0B00 AS Date), N'295469838', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (40576275, N'Fugiliberto', N'Perez', N'M         ', CAST(0x15220B00 AS Date), N'3513101391', N'F         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (93720820, N'Mickaela', N'Crespo', N'F         ', CAST(0x05200B00 AS Date), N'35151003', N'T         ')
/****** Object:  Table [dbo].[Odontologos]    Script Date: 10/04/2017 01:57:50 ******/
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
	[activo] [nchar](10) NULL,
	[telContacto] [varchar](50) NULL,
 CONSTRAINT [PK_Odontologos] PRIMARY KEY CLUSTERED 
(
	[legajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (9, N'Romanov', N'Natasha', N'M         ', CAST(0xDB080B00 AS Date), N'', N'SHIELD Headquarters', 45, CAST(0x5C3D0B00 AS Date), N'T         ', N'4555555')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (154, N'Wayne', N'Bruce', N'M         ', CAST(0x5F010B00 AS Date), N'ImBatman@gmail.com', N'Obispo Trejo 63', 589654, CAST(0x583D0B00 AS Date), N'T         ', N'3518618268')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (2875, N'Benedetto', N'Darío Ismael', N'M         ', CAST(0x300C0B00 AS Date), N'pipabenedetto9@gmail.com', N'Brandsen 805', 25645, CAST(0x5B3D0B00 AS Date), N'T         ', N'011877814855')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (5986, N'García', N'Ricardo', N'M         ', CAST(0x4EFB0A00 AS Date), N'rickygarcia@gmail.com', N'Velez Sarsfield 187', 126855, CAST(0x583D0B00 AS Date), N'T         ', N'3517895828')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (7865, N'Garcia', N'Florencia', N'M         ', CAST(0x571C0B00 AS Date), N'flor543@gmail.com', N'Pueyrredon 65', 69864, CAST(0x5B3D0B00 AS Date), N'T         ', N'295489567')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (8945, N'Torres', N'Esteban', N'M         ', CAST(0x42010B00 AS Date), N'laelupalospi@gmail.com', N'Pueyrredon 45', 59465, CAST(0x563D0B00 AS Date), N'T         ', N'3518959589')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (28965, N'Pessi', N'Daniel', N'M         ', CAST(0xBA0A0B00 AS Date), N'eldanipizzi@gmail.com', N'Pueyrredon 57', 2856, CAST(0x563D0B00 AS Date), N'T         ', N'35189892589')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (35985, N'Rodríguez', N'Enzo', N'M         ', CAST(0x18FD0A00 AS Date), N'enzorodriguez72@gmail.com', N'Obispo Trejo 63', 58965, CAST(0x563D0B00 AS Date), N'T         ', N'3518618268')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (48754, N'Stark', N'Tony', N'M         ', CAST(0x0F020B00 AS Date), N'IronManElMasGenio@gmail.com', N'La Torre Stark Wacho', 123, CAST(0x583D0B00 AS Date), N'T         ', N'5464565')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (70964, N'Cowan', N'Antonia', N'F         ', CAST(0xD1090B00 AS Date), N'laelupeolapalospi@hotmail.com', N'Pueyrredon 45', 52966598, CAST(0x563D0B00 AS Date), N'T         ', N'3511597560')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (4189654, N'Hernandez', N'Gastón', N'M         ', CAST(0xC30A0B00 AS Date), N'elgasti@gmail.com', N'Ituzaingo 588', 1516845, CAST(0x563D0B00 AS Date), N'T         ', N'3514862154')
INSERT [dbo].[Odontologos] ([legajo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (4851562, N'Márquez', N'Juan', N'M         ', CAST(0xA8160B00 AS Date), N'', N'Pueyrredon 598', 48956, CAST(0x5C3D0B00 AS Date), N'T         ', N'351584266')
/****** Object:  Table [dbo].[Alergias]    Script Date: 10/04/2017 01:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alergias](
	[idAlergia] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](1000) NULL,
 CONSTRAINT [PK_dbo.Alergias] PRIMARY KEY CLUSTERED 
(
	[idAlergia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (1, N'Penicilina', N'Respuesta desmedida del sistema inmune a medicamentos y antibióticos relacionados')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (2, N'Manzana', N'Hormigueo, picazón o hinchazón en labios, lengua o garganta')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (3, N'Cítricos', N'Causada por la profilina, proteína que se encuentra en las frutas cítricas')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (4, N'Insectos', N'Reacciones alérgicas como urticaria, dificultad para respirar, pulso rápido y anafilaxia')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (5, N'Látex', N'Especial cuidado con guantes y preservativos médicos.')
/****** Object:  Table [dbo].[Enfermedades]    Script Date: 10/04/2017 01:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enfermedades](
	[idEnfermedades] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](1000) NULL,
 CONSTRAINT [PK_dbo.Enfermedades] PRIMARY KEY CLUSTERED 
(
	[idEnfermedades] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (1, N'Diabetes', N'Exceso de azúcar en la sangre')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (2, N'Asma', N'Enfermedad del aparato respiratorio')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (3, N'Cáncer', N'Tumor maligno, duro o ulceroso')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (4, N'VIH', N'Interfiere con la capacidad del cuerpo de combatir infecciones.')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (5, N'Alzheimer', N'Eenfermedad neurodegenerativa')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (6, N'Hepatitis', N'Hay muchas')
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 10/04/2017 01:57:50 ******/
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
	[restricciones] [varchar](1000) NULL,
 CONSTRAINT [PK_dbo.Medicamentos] PRIMARY KEY CLUSTERED 
(
	[idMedicamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HistoriaClinica]    Script Date: 10/04/2017 01:57:50 ******/
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
	[idTipo] [int] NULL,
	[observaciones] [varchar](1000) NULL,
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
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39932423, 5, CAST(0x5D3D0B00 AS Date), 1, 3, N'Protesis fija')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39932423, 11, CAST(0x5D3D0B00 AS Date), 2, 6, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (93720820, 11, CAST(0x5D3D0B00 AS Date), 2, 4, N'Leve inflamacion')
/****** Object:  Table [dbo].[Planes]    Script Date: 10/04/2017 01:57:50 ******/
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
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (0, 0, N'N/T')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 1, N'Plan 110')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 2, N'Plan Simple')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 6, N'Básico')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 8, N'SMG01')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 1, N'Plan 210')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 2, N'Plan Premium')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 6, N'Integral')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 8, N'SMG02')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 6, N'Premium')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 8, N'SMG10')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 6, N'No Docente')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 8, N'SMG20')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (5, 8, N'SMG30')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (6, 8, N'SMG40')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (7, 8, N'SMG50')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (8, 8, N'SMG60')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (9, 8, N'SMG70')
/****** Object:  Table [dbo].[MedicosXEspecialidad]    Script Date: 10/04/2017 01:57:50 ******/
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
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (1, 9)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (1, 2875)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (1, 5986)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (1, 28965)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (1, 48754)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 9)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 2875)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 8945)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 28965)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (3, 2875)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (4, 7865)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (4, 4189654)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (5, 9)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (5, 5986)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (6, 9)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (6, 2875)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (6, 5986)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (6, 8945)
/****** Object:  Table [dbo].[EnfermedadesXPaciente]    Script Date: 10/04/2017 01:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnfermedadesXPaciente](
	[dniPaciente] [int] NOT NULL,
	[idEnfermedad] [int] NOT NULL,
	[descripcion] [varchar](1000) NULL,
 CONSTRAINT [PK_dbo.EnfermedadesXPaciente] PRIMARY KEY CLUSTERED 
(
	[dniPaciente] ASC,
	[idEnfermedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (26155344, 1, N'Diabetes tipo 2')
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (39458284, 1, N'Tipo 2')
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (93720820, 1, N'Diabetes tipo 1')
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (93720820, 2, N'Asma inducida por medicamentos.')
/****** Object:  Table [dbo].[AlergiasXPaciente]    Script Date: 10/04/2017 01:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlergiasXPaciente](
	[dniPaciente] [int] NULL,
	[idAlergia] [int] NULL,
	[descripcion] [varchar](1000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AlergiasXPaciente] ([dniPaciente], [idAlergia], [descripcion]) VALUES (93720820, 1, N'Alergia tipo 1')
INSERT [dbo].[AlergiasXPaciente] ([dniPaciente], [idAlergia], [descripcion]) VALUES (26155344, 4, N'A las hormigas')
INSERT [dbo].[AlergiasXPaciente] ([dniPaciente], [idAlergia], [descripcion]) VALUES (39458284, 4, N'Alergico a las hormigas')
/****** Object:  Table [dbo].[Receta]    Script Date: 10/04/2017 01:57:50 ******/
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
	[observaciones] [varchar](1000) NULL,
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
/****** Object:  Table [dbo].[PrestacionesPorPlan]    Script Date: 10/04/2017 01:57:50 ******/
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
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 1, 1, 150)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 1, 3, 1000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 1, 5, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 2, 2, 1800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 2, 5, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 2, 7, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 1, 5, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 2, 4, 550)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 2, 6, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 8, 1, 500)
/****** Object:  Table [dbo].[ObraSocialXPaciente]    Script Date: 10/04/2017 01:57:50 ******/
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
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (0, 0, 0, 40576275)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (1, 2, 1, 93720820)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (1, 2, 2, 16170265)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (2, 1, 2, 39697663)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (90, 1, 1, 888888)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (186554, 1, 1, 39932423)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (2894685, 1, 2, 26155344)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (2896595, 7, 8, 39458284)
/****** Object:  Table [dbo].[Factura]    Script Date: 10/04/2017 01:57:50 ******/
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
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 10/04/2017 01:57:50 ******/
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
/****** Object:  ForeignKey [FK_dbo.HistoriaClinica_dbo.Paciente]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Paciente] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Paciente]
GO
/****** Object:  ForeignKey [FK_dbo.HistoriaClinica_dbo.Prestaciones]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Prestaciones] FOREIGN KEY([idPrestacion])
REFERENCES [dbo].[Prestaciones] ([idPrestacion])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Prestaciones]
GO
/****** Object:  ForeignKey [FK_HistoriaClinica_TipoDiente]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaClinica_TipoDiente] FOREIGN KEY([idTipo])
REFERENCES [dbo].[TipoDiente] ([idTipo])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_HistoriaClinica_TipoDiente]
GO
/****** Object:  ForeignKey [FK_HistoriaClinica_Ubicacion]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaClinica_Ubicacion] FOREIGN KEY([idUbicacion])
REFERENCES [dbo].[Ubicacion] ([idUbicacion])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_HistoriaClinica_Ubicacion]
GO
/****** Object:  ForeignKey [PlanesPorObraSocial]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[Planes]  WITH CHECK ADD  CONSTRAINT [PlanesPorObraSocial] FOREIGN KEY([idObraSocial])
REFERENCES [dbo].[ObraSocial] ([idOS])
GO
ALTER TABLE [dbo].[Planes] CHECK CONSTRAINT [PlanesPorObraSocial]
GO
/****** Object:  ForeignKey [FK_MedicosXEspecialidad_Especialidades]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[MedicosXEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicosXEspecialidad_Especialidades] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[MedicosXEspecialidad] CHECK CONSTRAINT [FK_MedicosXEspecialidad_Especialidades]
GO
/****** Object:  ForeignKey [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[EnfermedadesXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades] FOREIGN KEY([idEnfermedad])
REFERENCES [dbo].[Enfermedades] ([idEnfermedades])
GO
ALTER TABLE [dbo].[EnfermedadesXPaciente] CHECK CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades]
GO
/****** Object:  ForeignKey [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[EnfermedadesXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[EnfermedadesXPaciente] CHECK CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes]
GO
/****** Object:  ForeignKey [FK_dbo.AlergiasPorPaciente_dbo.Alergias]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[AlergiasXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Alergias] FOREIGN KEY([idAlergia])
REFERENCES [dbo].[Alergias] ([idAlergia])
GO
ALTER TABLE [dbo].[AlergiasXPaciente] CHECK CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Alergias]
GO
/****** Object:  ForeignKey [FK_dbo.AlergiasPorPaciente_dbo.Pacientes]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[AlergiasXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[AlergiasXPaciente] CHECK CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Pacientes]
GO
/****** Object:  ForeignKey [FK_Receta_Odontologos]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Odontologos] FOREIGN KEY([legajoOdontologo])
REFERENCES [dbo].[Odontologos] ([legajo])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Odontologos]
GO
/****** Object:  ForeignKey [FK_Receta_Pacientes]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Pacientes]
GO
/****** Object:  ForeignKey [PrestacionesXPlan]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[PrestacionesPorPlan]  WITH CHECK ADD  CONSTRAINT [PrestacionesXPlan] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[PrestacionesPorPlan] CHECK CONSTRAINT [PrestacionesXPlan]
GO
/****** Object:  ForeignKey [ObraSocialPorPaciente_ObraSocial]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[ObraSocialXPaciente]  WITH CHECK ADD  CONSTRAINT [ObraSocialPorPaciente_ObraSocial] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[ObraSocialXPaciente] CHECK CONSTRAINT [ObraSocialPorPaciente_ObraSocial]
GO
/****** Object:  ForeignKey [FK_Factura_Odontologo]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Odontologo] FOREIGN KEY([legajoOdontologo])
REFERENCES [dbo].[Odontologos] ([legajo])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Odontologo]
GO
/****** Object:  ForeignKey [FK_Factura_Paciente]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Paciente] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Paciente]
GO
/****** Object:  ForeignKey [FK_Factura_PrestacionesXPlan]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_PrestacionesXPlan] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_PrestacionesXPlan]
GO
/****** Object:  ForeignKey [FK_DetalleFactura_Facturas]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Facturas] FOREIGN KEY([nroFactura])
REFERENCES [dbo].[Factura] ([nroFactura])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Facturas]
GO
/****** Object:  ForeignKey [FK_DetalleFactura_Prestaciones]    Script Date: 10/04/2017 01:57:50 ******/
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Prestaciones] FOREIGN KEY([idPrestacion])
REFERENCES [dbo].[Prestaciones] ([idPrestacion])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Prestaciones]
GO
