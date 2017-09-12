/*
   lunes, 11 de septiembre de 201723:35:32
   User: sa
   Server: localhost\SQLEXPRESS
   Database: db_consultorio_odontologico
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
CREATE DATABASE db_consultorio_odontologico

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE Alergias
	(
	idAlergia int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE Alergias ADD CONSTRAINT
	[PK_dbo.Alergias] PRIMARY KEY CLUSTERED 
	(
	idAlergia
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE Alergias SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Enfermedades
	(
	idEnfermedades int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Enfermedades ADD CONSTRAINT
	[PK_dbo.Enfermedades] PRIMARY KEY CLUSTERED 
	(
	idEnfermedades
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Enfermedades SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Medicamentos
	(
	idMedicamento int NOT NULL,
	droga varchar(50) NULL,
	laboratorio varchar(50) NULL,
	restricciones varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Medicamentos ADD CONSTRAINT
	[PK_dbo.Medicamentos] PRIMARY KEY CLUSTERED 
	(
	idMedicamento
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Medicamentos SET (LOCK_ESCALATION = TABLE)
GO
COMMIT

BEGIN TRANSACTION
GO
CREATE TABLE dbo.Ubicaciones
	(
	idUbicacion int NOT NULL,
	TipoDtente int NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Ubicaciones ADD CONSTRAINT
	PK_Ubicaciones PRIMARY KEY CLUSTERED 
	(
	idUbicacion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
GO
ALTER TABLE dbo.Ubicaciones SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Especialidad
	(
	idEspecialidad int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Especialidad ADD CONSTRAINT
	[PK_dbo.Especialidad] PRIMARY KEY CLUSTERED 
	(
	idEspecialidad
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Especialidad SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.ObraSocial
	(
	idOS int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.ObraSocial ADD CONSTRAINT
	[PK_dbo.ObraSocial] PRIMARY KEY CLUSTERED 
	(
	idOS
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.ObraSocial SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Planes
	(
	idPlan int NOT NULL,
	idObraSocial int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Planes ADD CONSTRAINT
	[PK_dbo.Plan] PRIMARY KEY CLUSTERED 
	(
	idPlan,
	idObraSocial
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Planes ADD CONSTRAINT
	PlanesPorObraSocial FOREIGN KEY
	(
	idObraSocial
	) REFERENCES dbo.ObraSocial
	(
	idOS
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Planes SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.PrestacionesPorPlan
	(
	idPlan int NOT NULL,
	idObraSocial int NOT NULL,
	idPrestacion int NOT NULL,
	descripcion varchar(50) NULL,
	montoCubierto float(53) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.PrestacionesPorPlan ADD CONSTRAINT
	[PK_dbo.PrestacionesXPlan] PRIMARY KEY CLUSTERED 
	(
	idPlan,
	idObraSocial,
	idPrestacion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.PrestacionesPorPlan ADD CONSTRAINT
	PrestacionesXPlan FOREIGN KEY
	(
	idPlan,
	idObraSocial
	) REFERENCES dbo.Planes
	(
	idPlan,
	idObraSocial
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.PrestacionesPorPlan SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE Prestaciones
	(
	idPrestacion int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL,
	precio float(53) NULL,
	duracion int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Prestaciones ADD CONSTRAINT
	[PK_dbo.Prestaciones] PRIMARY KEY CLUSTERED 
	(
	idPrestacion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Prestaciones SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Pacientes
	(
	dniPaciente int NOT NULL,
	dni int NULL,
	nombre varchar(50) NULL,
	apellido varchar(50) NULL,
	sexo nchar(10) NULL,
	fechaNacimiento date NULL,
	telcontacto int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Pacientes ADD CONSTRAINT
	[PK_dbo.Pacientes] PRIMARY KEY CLUSTERED 
	(
	dniPaciente
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Pacientes SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE AlergiasXPaciente
	(
	dniPaciente int NULL,
	idAlergia int NULL,
	descrpicion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE AlergiasXPaciente ADD CONSTRAINT
	[FK_dbo.AlergiasPorPaciente_dbo.Alergias] FOREIGN KEY
	(
	idAlergia
	) REFERENCES dbo.Alergias
	(
	idAlergia
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE AlergiasXPaciente ADD CONSTRAINT
	[FK_dbo.AlergiasPorPaciente_dbo.Pacientes] FOREIGN KEY
	(
	dniPaciente
	) REFERENCES dbo.Pacientes
	(
	dniPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE AlergiasXPaciente SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE EnfermedadesXPaciente
	(
	dniPaciente int NOT NULL,
	idEnfermedad int NOT NULL,
	descrpicion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.EnfermedadesXPaciente ADD CONSTRAINT
	[PK_dbo.EnfermedadesXPaciente] PRIMARY KEY CLUSTERED 
	(
	dniPaciente,
	idEnfermedad
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE EnfermedadesXPaciente ADD CONSTRAINT
	[FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes] FOREIGN KEY
	(
	dniPaciente
	) REFERENCES dbo.Pacientes
	(
	dniPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE EnfermedadesXPaciente ADD CONSTRAINT
	[FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades] FOREIGN KEY
	(
	idEnfermedad
	) REFERENCES dbo.Enfermedades
	(
	idEnfermedades
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE EnfermedadesXPaciente SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE HistoriaClinica
	(
	dniPaciente int NOT NULL,
	idPrestacion int NOT NULL,
	fecha date NOT NULL,
	idUbicacion int NULL,
	observaciones varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE HistoriaClinica ADD CONSTRAINT
	[PK_dbo.HistoriaClinica] PRIMARY KEY CLUSTERED 
	(
	dniPaciente,
	idPrestacion,
	fecha
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE HistoriaClinica ADD CONSTRAINT
	[FK_dbo.HistoriaClinica_dbo.Paciente] FOREIGN KEY
	(
	dniPaciente
	) REFERENCES Pacientes
	(
	dniPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE HistoriaClinica ADD CONSTRAINT
	[FK_dbo.HistoriaClinica_dbo.Prestaciones] FOREIGN KEY
	(
	idPrestacion
	) REFERENCES dbo.Prestaciones
	(
	idPrestacion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE HistoriaClinica ADD CONSTRAINT
	[FK_HistoriaClinica_Ubicaciones] FOREIGN KEY
	(
	idUbicacion
	) REFERENCES Ubicaciones
	(
	idUbicacion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.HistoriaClinica SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE ObraSocialXPaciente
	(
	idNroAfiliado int NOT NULL,
	idPlan int NOT NULL,
	idObraSocial int NOT NULL,
	dniPaciente int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE ObraSocialXPaciente ADD CONSTRAINT
	[PK_ObraSocialPorPaciente] PRIMARY KEY CLUSTERED 
	(
	idNroAfiliado,
	idPlan,
	idObraSocial
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.ObraSocialXPaciente ADD CONSTRAINT
	ObraSocialPorPaciente_ObraSocial FOREIGN KEY
	(
	idPlan,
	idObraSocial
	) REFERENCES dbo.Planes
	(
	idPlan,
	idObraSocial
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE ObraSocialXPaciente ADD CONSTRAINT
	ObraSocialPorPaciente_Paciente FOREIGN KEY
	(
	dniPaciente
	) REFERENCES dbo.Pacientes
	(
	dniPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE ObraSocialXPaciente SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE Odontologos
	(
	legajo int NOT NULL,
	apellido varchar(50) NULL,
	nombre varchar(50) NULL,
	sexo nchar(10) NULL,
	fechaNacimiento date NULL,
	telContacto int NULL,
	eMail varchar(50) NULL,
	domicilio varchar(50) NULL,
	nroMatricula int NULL,
	fechaIngreso date NULL
	)  ON [PRIMARY]
GO
ALTER TABLE Odontologos ADD CONSTRAINT
	[PK_Odontologos] PRIMARY KEY CLUSTERED 
	(
	legajo
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE Odontologos SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE Receta
	(
	legajoOdontologo int NOT NULL,
	dniPaciente int NOT NULL,
	fecha date NOT NULL,
	hora time(7) NOT NULL,
	idMedicamento int NOT NULL,
	observaciones varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE Receta ADD CONSTRAINT
	[PK_Receta] PRIMARY KEY CLUSTERED 
	(
	legajoOdontologo,
	dniPaciente,
	fecha,
	hora,
	idMedicamento
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE Receta ADD CONSTRAINT
	[FK_Receta_Odontologos] FOREIGN KEY
	(
	legajoOdontologo
	) REFERENCES Odontologos
	(
	legajo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE Receta ADD CONSTRAINT
	[FK_Receta_Pacientes] FOREIGN KEY
	(
	dniPaciente
	) REFERENCES Pacientes
	(
	dniPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE Receta ADD CONSTRAINT
	[FK_Receta_Medicamentos] FOREIGN KEY
	(
	idMedicamento
	) REFERENCES Medicamentos
	(
	idMedicamento
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE Receta SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE MedicosXEspecialidad
	(
	idEspecialidad int NOT NULL,
	idMedico int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE MedicosXEspecialidad ADD CONSTRAINT
	[PK_MedicosXEspecialidad] PRIMARY KEY CLUSTERED 
	(
	idEspecialidad,
	idMedico
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE MedicosXEspecialidad ADD CONSTRAINT
	[FK_MedicosXEspecialidad_Odontologos] FOREIGN KEY
	(
	idMedico
	) REFERENCES dbo.Odontologos
	(
	legajo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE MedicosXEspecialidad ADD CONSTRAINT
	[FK_MedicosXEspecialidad_Especialidades] FOREIGN KEY
	(
	idEspecialidad
	) REFERENCES dbo.Especialidad
	(
	idEspecialidad
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE MedicosXEspecialidad SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE Factura
	(
	nroFactura int NOT NULL,
	fecha date NULL,
	dniPaciente int NULL,
	legajoOdontologo int NULL,
	idObraSocial int NULL,
	idPlan int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE Factura ADD CONSTRAINT
	[PK_Factura] PRIMARY KEY CLUSTERED 
	(
	nroFactura
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE Factura ADD CONSTRAINT
	[FK_Factura_Paciente] FOREIGN KEY
	(
	dniPaciente
	) REFERENCES Pacientes
	(
	dniPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE Factura ADD CONSTRAINT
	[FK_Factura_PrestacionesXPlan] FOREIGN KEY
	(
	idPlan,
	idObraSocial
	) REFERENCES Planes
	(
	idPlan,
	idObraSocial
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE Factura ADD CONSTRAINT
	[FK_Factura_Odontologo] FOREIGN KEY
	(
	legajoOdontologo
	) REFERENCES Odontologos
	(
	legajo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE Factura SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE DetalleFactura
	(
	nroFactura int NOT NULL,
	idPrestacion int NOT NULL,
	monto float(53) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE DetalleFactura ADD CONSTRAINT
	[PK_DetalleFactura] PRIMARY KEY CLUSTERED 
	(
	nroFactura,
	idPrestacion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE DetalleFactura ADD CONSTRAINT
	[FK_DetalleFactura_Facturas] FOREIGN KEY
	(
	nroFactura
	) REFERENCES Factura
	(
	nroFactura
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE DetalleFactura ADD CONSTRAINT
	[FK_DetalleFactura_Prestaciones] FOREIGN KEY
	(
	idPrestacion
	) REFERENCES Prestaciones
	(
	idPrestacion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE DetalleFactura SET (LOCK_ESCALATION = TABLE)
GO
COMMIT


Insert Into Pacientes (dniPaciente, apellido,nombre,sexo,fechaNacimiento,telcontacto, baja)
Values(93720820, 'Crespo','Mickaela','F', CONVERT(DATE, '11/03/1997', 103 ), '3515100391', 'F')

Insert Into Pacientes (dniPaciente, apellido,nombre,sexo,fechaNacimiento,telcontacto, baja)
Values(39697663, 'Garcia','Eliana Belen','F', CONVERT(DATE, '18/09/1996', 103 ), '2954311249', 'F')

Insert Into Pacientes (dniPaciente, apellido,nombre,sexo,fechaNacimiento,telcontacto, baja)
Values(40576275, 'Perez','Fugiliberto','M', CONVERT(DATE, '21/08/1998', 103 ), '3513101391', 'F')

Insert Into Pacientes (dniPaciente, apellido,nombre,sexo,fechaNacimiento,telcontacto, baja)
Values(16170265, 'Borello','Elizabeth','F', CONVERT(DATE, '04/07/1965', 103 ), '3512100361', 'T')


Insert Into ObraSocial (idOS,nombre)
Values(1, 'N/T')

Insert Into ObraSocial (idOS,nombre)
Values(2, 'OSPE')

Insert Into ObraSocial (idOS,nombre)
Values(3, 'OSDE')

Insert Into ObraSocial (idOS,nombre)
Values(4, 'DASPU')


Insert Into Planes (idPlan,idObraSocial,nombre)
Values(1,2,'Plan 110')

Insert Into Planes (idPlan,idObraSocial,nombre)
Values(1,3,'Plan Simple')

Insert Into Planes (idPlan,idObraSocial,nombre)
Values(2,2,'Plan 210')

Insert Into Planes (idPlan,idObraSocial,nombre)
Values(2,3,'Plan Premium')


Insert into ObraSocialXPaciente (idNroAfiliado,idPlan,idObraSocial,dniPaciente)
Values (1,2,2,93720820)

Insert into ObraSocialXPaciente (idNroAfiliado,idPlan,idObraSocial,dniPaciente)
Values (2,1,2,39697663)

Insert into ObraSocialXPaciente (idNroAfiliado,idPlan,idObraSocial,dniPaciente)
Values (0,0,1,40576275)

Insert into ObraSocialXPaciente (idNroAfiliado,idPlan,idObraSocial,dniPaciente)
Values (1,2,3,16170265)
