USE [master]
GO
/****** Object:  Database [db_consultorio_odontologico]    Script Date: 10/10/2017 09:44:44 ******/
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
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 10/10/2017 09:44:48 ******/
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
/****** Object:  Table [dbo].[TipoDiente]    Script Date: 10/10/2017 09:44:48 ******/
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
/****** Object:  Table [dbo].[Especialidad]    Script Date: 10/10/2017 09:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidad](
	[idEspecialidad] [int] IDENTITY(1,1) NOT NULL,
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
SET IDENTITY_INSERT [dbo].[Especialidad] ON
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (1, N'Periodoncia', N'Diagnóstico y tratamiento de las enfermedades')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (2, N'Odontopediatría', N'Trata niños')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (3, N'Ortodoncia', N'tratamiento de malposiciones en piezas dentales')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (4, N'Cariología', N'Especializada en caries y su tratamiento')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (5, N'Gnatología', N'Estudio de la función del aparato masticador')
INSERT [dbo].[Especialidad] ([idEspecialidad], [nombre], [descripcion]) VALUES (6, N'Endodoncia', N'Extirpación y sustitución de la pulpa dental')
SET IDENTITY_INSERT [dbo].[Especialidad] OFF
/****** Object:  Table [dbo].[ObraSocial]    Script Date: 10/10/2017 09:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObraSocial](
	[idOS] [int] IDENTITY(0,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_dbo.ObraSocial] PRIMARY KEY CLUSTERED 
(
	[idOS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ObraSocial] ON
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (0, N'N/T')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (1, N'OSPE')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (2, N'OSDE')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (3, N'DASPU')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (4, N'Sancor Salud')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (5, N'Federada Salud')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (6, N'OSFATUN')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (7, N'PAMI')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (8, N'Swiss Medical')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (9, N'Medicus')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (10, N'Galeno')
INSERT [dbo].[ObraSocial] ([idOS], [nombre]) VALUES (11, N'Medifé')
SET IDENTITY_INSERT [dbo].[ObraSocial] OFF
/****** Object:  Table [dbo].[Prestaciones]    Script Date: 10/10/2017 09:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prestaciones](
	[idPrestacion] [int] IDENTITY(1,1) NOT NULL,
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
SET IDENTITY_INSERT [dbo].[Prestaciones] ON
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
SET IDENTITY_INSERT [dbo].[Prestaciones] OFF
/****** Object:  Table [dbo].[Pacientes]    Script Date: 10/10/2017 09:44:48 ******/
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
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (5298552, N'Albus', N'Dumbledore', N'M         ', CAST(0xCDE80A00 AS Date), N'351698958', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (14898220, N'Tom Marvolo', N'Riddle', N'M         ', CAST(0xF1F40A00 AS Date), N'351287020', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (16170265, N'Elizabeth', N'Borello', N'F         ', CAST(0xD0F20A00 AS Date), N'3512100361', N'F         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (26155344, N'Maribel', N'Cowan', N'M         ', CAST(0xD1040B00 AS Date), N'2954586320', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (27595008, N'Hermione', N'Granger', N'F         ', CAST(0x16070B00 AS Date), N'351410012', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39458284, N'Nicolás', N'Fernández', N'M         ', CAST(0x9E1F0B00 AS Date), N'351895485', N'F         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39621122, N'Juan', N'Torres', N'M         ', CAST(0xB91F0B00 AS Date), N'35199885', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39654188, N'Fernando', N'Gonzalez', N'M         ', CAST(0x231E0B00 AS Date), N'35114855', N'F         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39665551, N'Martín', N'García', N'M         ', CAST(0xE61E0B00 AS Date), N'35166599', N'F         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39694881, N'Ailin', N'Gonzalez', N'M         ', CAST(0x941F0B00 AS Date), N'35199451', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39697235, N'Sofia', N'Mendez', N'F         ', CAST(0x251F0B00 AS Date), N'29546458', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39697663, N'Eliana Belen', N'Garcia Cowan', N'M         ', CAST(0x571F0B00 AS Date), N'2954311249', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (39932423, N'Luciana', N'Peron', N'F         ', CAST(0xAD1F0B00 AS Date), N'295469838', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (40576275, N'Fugiliberto', N'Perez', N'M         ', CAST(0x15220B00 AS Date), N'3513101391', N'F         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (41054482, N'Cristian', N'Lopez', N'M         ', CAST(0x78220B00 AS Date), N'351147472', N'T         ')
INSERT [dbo].[Pacientes] ([dniPaciente], [nombre], [apellido], [sexo], [fechaNacimiento], [telContacto], [activo]) VALUES (93720820, N'Mickaela', N'Crespo', N'F         ', CAST(0x05200B00 AS Date), N'35151003', N'T         ')
/****** Object:  Table [dbo].[Odontologos]    Script Date: 10/10/2017 09:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Odontologos](
	[legajo] [int] IDENTITY(1,1) NOT NULL,
	[dniOdontologo] [int] NULL,
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
SET IDENTITY_INSERT [dbo].[Odontologos] ON
INSERT [dbo].[Odontologos] ([legajo], [dniOdontologo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (1, 20828842, N'Gonzalez', N'Walter', N'M         ', CAST(0x60FD0A00 AS Date), N'wallygonzalez72@gmail.com', N'Pueyrredon 86 6A', 19687985, CAST(0x623D0B00 AS Date), N'T         ', N'351958882')
INSERT [dbo].[Odontologos] ([legajo], [dniOdontologo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (2, 34928551, N'Efron', N'Zac', N'M         ', CAST(0x9D120B00 AS Date), N'soytroybolton@gmail.com', N'East High', 589656256, CAST(0x623D0B00 AS Date), N'T         ', N'3519879855')
INSERT [dbo].[Odontologos] ([legajo], [dniOdontologo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (3, 35682558, N'Alonso', N'Adriana', N'F         ', CAST(0x83190B00 AS Date), N'', N'Achával Rodríguez 587', 985985984, CAST(0x633D0B00 AS Date), N'T         ', N'351695558')
INSERT [dbo].[Odontologos] ([legajo], [dniOdontologo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (4, 34851128, N'Álvarez', N'Guillermo', N'M         ', CAST(0xA5170B00 AS Date), N'guillealvarez991@gmail.com', N'Bv Illia 593 9B', 89598566, CAST(0x633D0B00 AS Date), N'T         ', N'351996654')
INSERT [dbo].[Odontologos] ([legajo], [dniOdontologo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (5, 33551289, N'Acosta', N'Felipe', N'M         ', CAST(0xFA160B00 AS Date), N'', N'Obispo Oro 52 9D', 9562525, CAST(0x633D0B00 AS Date), N'T         ', N'351995320')
INSERT [dbo].[Odontologos] ([legajo], [dniOdontologo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (6, 29285005, N'Weasley', N'Ron', N'M         ', CAST(0xBA070B00 AS Date), N'rongryffindor@hotmail.com', N'La Madriguera', 589451, CAST(0x633D0B00 AS Date), N'T         ', N'351323058')
INSERT [dbo].[Odontologos] ([legajo], [dniOdontologo], [apellido], [nombre], [sexo], [fechaNacimiento], [eMail], [domicilio], [nroMatricula], [fechaIngreso], [activo], [telContacto]) VALUES (7, 18689950, N'Umbridge', N'Dolores', N'M         ', CAST(0x4DF70A00 AS Date), N'supremaInquisidoraDeHogwarts@gmail.com', N'Ministerio de Magia', 5968459, CAST(0x633D0B00 AS Date), N'T         ', N'351020523')
SET IDENTITY_INSERT [dbo].[Odontologos] OFF
/****** Object:  Table [dbo].[Alergias]    Script Date: 10/10/2017 09:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alergias](
	[idAlergia] [int] IDENTITY(1,1) NOT NULL,
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
SET IDENTITY_INSERT [dbo].[Alergias] ON
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (1, N'Penicilina', N'Respuesta desmedida del sistema inmune a medicamentos y antibióticos relacionados')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (2, N'Manzana', N'Hormigueo, picazón o hinchazón en labios, lengua o garganta')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (3, N'Cítricos', N'Causada por la profilina, proteína que se encuentra en las frutas cítricas')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (4, N'Insectos', N'Reacciones alérgicas como urticaria, dificultad para respirar, pulso rápido y anafilaxia')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (5, N'Látex', N'Especial cuidado con guantes y preservativos médicos.')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (6, N'Ácaros', N'Presentes en polvo, almohadas y colchones.')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (7, N'Polen', N'')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (8, N'Pelo de animales', N'Evitar el contacto y mantener buena limpieza.')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (9, N'Aspirina', N'Alergia o sensibilidad a la aspirina')
INSERT [dbo].[Alergias] ([idAlergia], [nombre], [descripcion]) VALUES (10, N'Cucarachas', N'Consecuencia de las proteínas que se desprenden de sus heces.')
SET IDENTITY_INSERT [dbo].[Alergias] OFF
/****** Object:  Table [dbo].[Enfermedades]    Script Date: 10/10/2017 09:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enfermedades](
	[idEnfermedades] [int] IDENTITY(1,1) NOT NULL,
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
SET IDENTITY_INSERT [dbo].[Enfermedades] ON
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (1, N'Diabetes', N'Exceso de azúcar en la sangre')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (2, N'Asma', N'Enfermedad del aparato respiratorio')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (3, N'Cáncer', N'Tumor maligno, duro o ulceroso')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (4, N'VIH', N'Interfiere con la capacidad del cuerpo de combatir infecciones.')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (5, N'Alzheimer', N'Eenfermedad neurodegenerativa')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (6, N'Hepatitis', N'Hay muchas')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (7, N'EPOC', N'Enfermedad pulmonar obstructiva crónica')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (8, N'Hipertensión arterial', N'Presión de la sangre hacia las paredes de la arteria demasiado alta.')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (9, N'Arritmia', N'Latidos anormales del corazón, ya sea irregulares, demasiado rápidos o demasiado lentos.')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (10, N'Insuficiencia cardíaca', N'Provoca que el corazón no bombee sangre con la eficacia necesaria.')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (11, N'Hipotiroidismo', N'Afección en la que la glándula tiroides no produce suficiente hormona tiroidea.')
INSERT [dbo].[Enfermedades] ([idEnfermedades], [nombre], [descripcion]) VALUES (12, N'Hipertiroidismo', N'Exceso de producción de una hormona de la glándula tiroides.')
SET IDENTITY_INSERT [dbo].[Enfermedades] OFF
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 10/10/2017 09:44:48 ******/
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
/****** Object:  Table [dbo].[HistoriaClinica]    Script Date: 10/10/2017 09:44:48 ******/
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
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (5298552, 5, CAST(0x243D0B00 AS Date), 4, 1, N'Puente fijo (reemplazo diente faltante)')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (5298552, 11, CAST(0x5A3C0B00 AS Date), 2, 7, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (27595008, 5, CAST(0x633D0B00 AS Date), 1, 2, N'Prótesis removible')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (27595008, 7, CAST(0x633D0B00 AS Date), 0, 0, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39621122, 10, CAST(0x633D0B00 AS Date), 0, 0, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39665551, 1, CAST(0x5D3D0B00 AS Date), 0, 0, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39665551, 7, CAST(0x5D3D0B00 AS Date), 0, 0, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39694881, 7, CAST(0x503D0B00 AS Date), 0, 0, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39694881, 11, CAST(0x633D0B00 AS Date), 2, 7, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39697235, 9, CAST(0x633D0B00 AS Date), 0, 0, N'Canino inferior derecho partido.')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39697663, 7, CAST(0xFB3C0B00 AS Date), 0, 0, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39932423, 5, CAST(0x5D3D0B00 AS Date), 1, 3, N'Protesis fija')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (39932423, 11, CAST(0x5D3D0B00 AS Date), 2, 6, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (41054482, 5, CAST(0x633D0B00 AS Date), 4, 1, N'')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (41054482, 8, CAST(0x633D0B00 AS Date), 2, 4, N'Cirugía Preprotésica')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (93720820, 1, CAST(0xCC3C0B00 AS Date), 0, 0, N'-')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (93720820, 5, CAST(0x583D0B00 AS Date), 3, 6, N'Prótesis fija')
INSERT [dbo].[HistoriaClinica] ([dniPaciente], [idPrestacion], [fecha], [idUbicacion], [idTipo], [observaciones]) VALUES (93720820, 11, CAST(0x613D0B00 AS Date), 2, 4, N'Leve inflamacion')
/****** Object:  Table [dbo].[Planes]    Script Date: 10/10/2017 09:44:48 ******/
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
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 1, N'Plan 300')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 2, N'Plan 210')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 3, N'DASPU')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 4, N'Plan 500')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 5, N'Plan 1000')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 6, N'Básico')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 7, N'PAMI')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 8, N'SMG01')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 9, N'Plan Azul')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 10, N'Plan 220')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (1, 11, N'Plan Bronce')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 1, N'Plan 400')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 2, N'Plan 310')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 4, N'Plan 1000')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 5, N'Plan 2000')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 6, N'Integral')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 8, N'SMG02')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 9, N'Plan Celeste')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 10, N'Plan 330')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (2, 11, N'Plan Plata')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 1, N'Plan 500')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 2, N'Plan 410')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 4, N'Plan 2000')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 5, N'Plan 3000')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 6, N'Premium')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 8, N'SMG10')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 9, N'Plan One')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 10, N'Plan 440')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (3, 11, N'Plan Oro')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 1, N'Plan 600')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 2, N'Plan 450')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 4, N'Plan 3000')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 5, N'Plan 4000')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 6, N'No Docente')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 8, N'SMG20')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 9, N'Plan One R')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 10, N'Plan 550')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (4, 11, N'Plan Platinum')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (5, 1, N'Plan 700')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (5, 2, N'Plan 510')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (5, 4, N'Plan 5000')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (5, 8, N'SMG30')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (5, 9, N'Plan Integra')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (6, 2, N'Plan NEO')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (6, 8, N'SMG40')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (7, 4, N'C CORDOBA')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (7, 8, N'SMG50')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (8, 8, N'SMG60')
INSERT [dbo].[Planes] ([idPlan], [idObraSocial], [nombre]) VALUES (9, 8, N'SMG70')
/****** Object:  Table [dbo].[MedicosXEspecialidad]    Script Date: 10/10/2017 09:44:48 ******/
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
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (1, 5)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 1)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 2)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 3)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 5)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (2, 7)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (3, 1)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (3, 3)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (3, 5)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (3, 6)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (3, 7)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (4, 1)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (4, 2)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (4, 5)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (4, 6)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (4, 7)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (5, 2)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (5, 4)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (5, 6)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (6, 4)
INSERT [dbo].[MedicosXEspecialidad] ([idEspecialidad], [idMedico]) VALUES (6, 7)
/****** Object:  Table [dbo].[EnfermedadesXPaciente]    Script Date: 10/10/2017 09:44:48 ******/
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
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (5298552, 5, N'')
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (26155344, 1, N'Diabetes tipo 2')
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (39458284, 1, N'Tipo 2')
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (41054482, 4, N'')
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (93720820, 1, N'Diabetes tipo 1')
INSERT [dbo].[EnfermedadesXPaciente] ([dniPaciente], [idEnfermedad], [descripcion]) VALUES (93720820, 2, N'Asma inducida por medicamentos.')
/****** Object:  Table [dbo].[AlergiasXPaciente]    Script Date: 10/10/2017 09:44:48 ******/
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
INSERT [dbo].[AlergiasXPaciente] ([dniPaciente], [idAlergia], [descripcion]) VALUES (39694881, 5, N'')
INSERT [dbo].[AlergiasXPaciente] ([dniPaciente], [idAlergia], [descripcion]) VALUES (41054482, 1, N'')
INSERT [dbo].[AlergiasXPaciente] ([dniPaciente], [idAlergia], [descripcion]) VALUES (39697235, 3, N'')
/****** Object:  Table [dbo].[Receta]    Script Date: 10/10/2017 09:44:48 ******/
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
/****** Object:  Table [dbo].[PrestacionesPorPlan]    Script Date: 10/10/2017 09:44:48 ******/
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
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 1, 7, 190)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 1, 9, 250)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 2, 2, 2000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 2, 9, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 3, 4, 490)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 3, 7, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 3, 8, 180)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 4, 5, 1000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 4, 7, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 6, 4, 280)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 6, 7, 180)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 6, 8, 200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 7, 1, 150)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 7, 5, 1200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 7, 8, 480)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 7, 10, 480)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 7, 11, 270)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 8, 6, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 9, 2, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 9, 3, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 9, 5, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 9, 6, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 9, 9, 200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 9, 10, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 10, 3, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 10, 5, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 11, 4, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 11, 5, 830)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 11, 6, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (1, 11, 10, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 1, 7, 220)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 1, 9, 315)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 2, 9, 250)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 4, 1, 150)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 4, 2, 3000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 4, 7, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 5, 9, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 6, 2, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 6, 5, 950)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 6, 6, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 8, 6, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 9, 2, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 10, 4, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 10, 5, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 11, 3, 810)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 11, 6, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (2, 11, 7, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 1, 5, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 1, 6, 280)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 1, 7, 450)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 1, 9, 200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 1, 11, 200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 2, 2, 2200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 2, 3, 1000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 2, 5, 900)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 4, 2, 2000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 4, 9, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 5, 3, 860)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 5, 5, 580)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 5, 6, 200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 5, 9, 180)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 6, 1, 150)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 6, 6, 670)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 6, 7, 480)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 6, 10, 380)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 8, 1, 150)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 8, 4, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 9, 5, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 9, 9, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 9, 10, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 10, 5, 1200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 10, 6, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 11, 3, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (3, 11, 5, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 1, 2, 810)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 1, 3, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 1, 4, 480)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 1, 5, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 1, 9, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 2, 3, 1000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 2, 5, 850)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 2, 7, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 4, 2, 3000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 4, 7, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 4, 9, 200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 5, 5, 1000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 6, 2, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 6, 5, 380)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 6, 6, 200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 8, 1, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 9, 2, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 9, 6, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 10, 3, 1200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 10, 9, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 11, 4, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (4, 11, 7, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 1, 3, 1500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 1, 7, 300)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 1, 10, 190)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 2, 3, 1600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 2, 4, 450)
GO
print 'Processed 100 total records'
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 2, 5, 1000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 4, 5, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 9, 2, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (5, 9, 4, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (6, 2, 2, 1800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (6, 2, 3, 1600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (6, 2, 4, 550)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (6, 2, 6, 610)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (6, 2, 7, 500)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (6, 2, 8, 480)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (6, 2, 9, 200)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (7, 4, 2, 3000)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (7, 4, 5, 800)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (7, 4, 7, 600)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (7, 8, 1, 130)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (8, 8, 3, 400)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (8, 8, 9, 100)
INSERT [dbo].[PrestacionesPorPlan] ([idPlan], [idObraSocial], [idPrestacion], [montoCubierto]) VALUES (9, 8, 1, 100)
/****** Object:  Table [dbo].[ObraSocialXPaciente]    Script Date: 10/10/2017 09:44:48 ******/
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
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (1, 0, 0, 39654188)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (2, 0, 0, 39654188)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (8, 0, 0, 39932423)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (859, 2, 1, 39697235)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (2856, 1, 7, 5298552)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (58745, 2, 1, 26155344)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (58964, 5, 2, 39697663)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (156231, 3, 6, 39621122)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (458634, 4, 2, 41054482)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (689864, 2, 2, 93720820)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (875446, 1, 3, 39694881)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (2785887, 1, 1, 16170265)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (2896595, 7, 8, 39458284)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (5895565, 1, 7, 14898220)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (6895624, 4, 1, 39665551)
INSERT [dbo].[ObraSocialXPaciente] ([idNroAfiliado], [idPlan], [idObraSocial], [dniPaciente]) VALUES (28965685, 3, 5, 27595008)
/****** Object:  Table [dbo].[Factura]    Script Date: 10/10/2017 09:44:48 ******/
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
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 10/10/2017 09:44:48 ******/
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
/****** Object:  ForeignKey [FK_dbo.HistoriaClinica_dbo.Paciente]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Paciente] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Paciente]
GO
/****** Object:  ForeignKey [FK_dbo.HistoriaClinica_dbo.Prestaciones]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Prestaciones] FOREIGN KEY([idPrestacion])
REFERENCES [dbo].[Prestaciones] ([idPrestacion])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_dbo.HistoriaClinica_dbo.Prestaciones]
GO
/****** Object:  ForeignKey [FK_HistoriaClinica_TipoDiente]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaClinica_TipoDiente] FOREIGN KEY([idTipo])
REFERENCES [dbo].[TipoDiente] ([idTipo])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_HistoriaClinica_TipoDiente]
GO
/****** Object:  ForeignKey [FK_HistoriaClinica_Ubicacion]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaClinica_Ubicacion] FOREIGN KEY([idUbicacion])
REFERENCES [dbo].[Ubicacion] ([idUbicacion])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_HistoriaClinica_Ubicacion]
GO
/****** Object:  ForeignKey [PlanesPorObraSocial]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[Planes]  WITH CHECK ADD  CONSTRAINT [PlanesPorObraSocial] FOREIGN KEY([idObraSocial])
REFERENCES [dbo].[ObraSocial] ([idOS])
GO
ALTER TABLE [dbo].[Planes] CHECK CONSTRAINT [PlanesPorObraSocial]
GO
/****** Object:  ForeignKey [FK_MedicosXEspecialidad_Especialidades]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[MedicosXEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicosXEspecialidad_Especialidades] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[MedicosXEspecialidad] CHECK CONSTRAINT [FK_MedicosXEspecialidad_Especialidades]
GO
/****** Object:  ForeignKey [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[EnfermedadesXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades] FOREIGN KEY([idEnfermedad])
REFERENCES [dbo].[Enfermedades] ([idEnfermedades])
GO
ALTER TABLE [dbo].[EnfermedadesXPaciente] CHECK CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades]
GO
/****** Object:  ForeignKey [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[EnfermedadesXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[EnfermedadesXPaciente] CHECK CONSTRAINT [FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes]
GO
/****** Object:  ForeignKey [FK_dbo.AlergiasPorPaciente_dbo.Alergias]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[AlergiasXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Alergias] FOREIGN KEY([idAlergia])
REFERENCES [dbo].[Alergias] ([idAlergia])
GO
ALTER TABLE [dbo].[AlergiasXPaciente] CHECK CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Alergias]
GO
/****** Object:  ForeignKey [FK_dbo.AlergiasPorPaciente_dbo.Pacientes]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[AlergiasXPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[AlergiasXPaciente] CHECK CONSTRAINT [FK_dbo.AlergiasPorPaciente_dbo.Pacientes]
GO
/****** Object:  ForeignKey [FK_Receta_Odontologos]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Odontologos] FOREIGN KEY([legajoOdontologo])
REFERENCES [dbo].[Odontologos] ([legajo])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Odontologos]
GO
/****** Object:  ForeignKey [FK_Receta_Pacientes]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Pacientes] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Pacientes]
GO
/****** Object:  ForeignKey [PrestacionesXPlan]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[PrestacionesPorPlan]  WITH CHECK ADD  CONSTRAINT [PrestacionesXPlan] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[PrestacionesPorPlan] CHECK CONSTRAINT [PrestacionesXPlan]
GO
/****** Object:  ForeignKey [ObraSocialPorPaciente_ObraSocial]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[ObraSocialXPaciente]  WITH CHECK ADD  CONSTRAINT [ObraSocialPorPaciente_ObraSocial] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[ObraSocialXPaciente] CHECK CONSTRAINT [ObraSocialPorPaciente_ObraSocial]
GO
/****** Object:  ForeignKey [FK_Factura_Odontologo]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Odontologo] FOREIGN KEY([legajoOdontologo])
REFERENCES [dbo].[Odontologos] ([legajo])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Odontologo]
GO
/****** Object:  ForeignKey [FK_Factura_Paciente]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Paciente] FOREIGN KEY([dniPaciente])
REFERENCES [dbo].[Pacientes] ([dniPaciente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Paciente]
GO
/****** Object:  ForeignKey [FK_Factura_PrestacionesXPlan]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_PrestacionesXPlan] FOREIGN KEY([idPlan], [idObraSocial])
REFERENCES [dbo].[Planes] ([idPlan], [idObraSocial])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_PrestacionesXPlan]
GO
/****** Object:  ForeignKey [FK_DetalleFactura_Facturas]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Facturas] FOREIGN KEY([nroFactura])
REFERENCES [dbo].[Factura] ([nroFactura])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Facturas]
GO
/****** Object:  ForeignKey [FK_DetalleFactura_Prestaciones]    Script Date: 10/10/2017 09:44:48 ******/
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Prestaciones] FOREIGN KEY([idPrestacion])
REFERENCES [dbo].[Prestaciones] ([idPrestacion])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Prestaciones]
GO
