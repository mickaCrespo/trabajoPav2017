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
CREATE TABLE dbo.[dbo.Alergias]
	(
	idAlergia int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Alergias] ADD CONSTRAINT
	[PK_dbo.Alergias] PRIMARY KEY CLUSTERED 
	(
	idAlergia
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Alergias] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Enfermedades]
	(
	idEnfermedades int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Enfermedades] ADD CONSTRAINT
	[PK_dbo.Enfermedades] PRIMARY KEY CLUSTERED 
	(
	idEnfermedades
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Enfermedades] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Medicamentos]
	(
	idMedicamento int NOT NULL,
	droga varchar(50) NULL,
	laboratorio varchar(50) NULL,
	restricciones varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Medicamentos] ADD CONSTRAINT
	[PK_dbo.Medicamentos] PRIMARY KEY CLUSTERED 
	(
	idMedicamento
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Medicamentos] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.DienteTipo]
	(
	idTipo int NOT NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.DienteTipo] ADD CONSTRAINT
	[PK_dbo.DienteTipo] PRIMARY KEY CLUSTERED 
	(
	idTipo
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.DienteTipo] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Ubicaciones
	(
	idUbicacion int NOT NULL,
	idDienteTipo int NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Ubicaciones ADD CONSTRAINT
	PK_Ubicaciones PRIMARY KEY CLUSTERED 
	(
	idUbicacion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Ubicaciones ADD CONSTRAINT
	UbicacionesPorTipo FOREIGN KEY
	(
	idDienteTipo
	) REFERENCES dbo.[dbo.DienteTipo]
	(
	idTipo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Ubicaciones SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Especialidad]
	(
	idEspecialidad int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Especialidad] ADD CONSTRAINT
	[PK_dbo.Especialidad] PRIMARY KEY CLUSTERED 
	(
	idEspecialidad
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Especialidad] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.ObraSocial]
	(
	idOS int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.ObraSocial] ADD CONSTRAINT
	[PK_dbo.ObraSocial] PRIMARY KEY CLUSTERED 
	(
	idOS
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.ObraSocial] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Plan]
	(
	idPlan int NOT NULL,
	idObraSocial int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Plan] ADD CONSTRAINT
	[PK_dbo.Plan] PRIMARY KEY CLUSTERED 
	(
	idPlan,
	idObraSocial
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Plan] ADD CONSTRAINT
	PlanesPorObraSocial FOREIGN KEY
	(
	idObraSocial
	) REFERENCES dbo.[dbo.ObraSocial]
	(
	idOS
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.Plan] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.PrestacionesPorPlan]
	(
	idPlan int NOT NULL,
	idObraSocial int NOT NULL,
	idPrestacion int NOT NULL,
	descripcion varchar(50) NULL,
	montoCubierto float(53) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.PrestacionesPorPlan] ADD CONSTRAINT
	[PK_dbo.PrestacionesPorPlan] PRIMARY KEY CLUSTERED 
	(
	idPlan,
	idObraSocial,
	idPrestacion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.PrestacionesPorPlan] ADD CONSTRAINT
	PrestacionesPorPlan FOREIGN KEY
	(
	idPlan,
	idObraSocial
	) REFERENCES dbo.[dbo.Plan]
	(
	idPlan,
	idObraSocial
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.PrestacionesPorPlan] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Prestaciones]
	(
	idPrestacion int NOT NULL,
	nombre varchar(50) NULL,
	descripcion varchar(50) NULL,
	precio float(53) NULL,
	duracion int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Prestaciones] ADD CONSTRAINT
	[PK_dbo.Prestaciones] PRIMARY KEY CLUSTERED 
	(
	idPrestacion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Prestaciones] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Pacientes]
	(
	idPaciente int NOT NULL,
	dni int NULL,
	nombre varchar(50) NULL,
	apellido varchar(50) NULL,
	sexo nchar(10) NULL,
	fechaNacimiento date NULL,
	telcontacto int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Pacientes] ADD CONSTRAINT
	[PK_dbo.Pacientes] PRIMARY KEY CLUSTERED 
	(
	idPaciente
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Pacientes] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.AlergiasPorPaciente]
	(
	idPaciente int NULL,
	idAlergia int NULL,
	descrpicion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.AlergiasPorPaciente] ADD CONSTRAINT
	[FK_dbo.AlergiasPorPaciente_dbo.Alergias] FOREIGN KEY
	(
	idAlergia
	) REFERENCES dbo.[dbo.Alergias]
	(
	idAlergia
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.AlergiasPorPaciente] ADD CONSTRAINT
	[FK_dbo.AlergiasPorPaciente_dbo.Pacientes] FOREIGN KEY
	(
	idAlergia
	) REFERENCES dbo.[dbo.Pacientes]
	(
	idPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.AlergiasPorPaciente] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.EnfermedadesPorPaciente]
	(
	idPaciente int NOT NULL,
	idEnfermedad int NOT NULL,
	descrpicion varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.EnfermedadesPorPaciente] ADD CONSTRAINT
	[PK_dbo.EnfermedadesPorPaciente] PRIMARY KEY CLUSTERED 
	(
	idPaciente,
	idEnfermedad
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.EnfermedadesPorPaciente] ADD CONSTRAINT
	[FK_dbo.EnfermedadesPorPaciente_dbo.Pacientes] FOREIGN KEY
	(
	idPaciente
	) REFERENCES dbo.[dbo.Pacientes]
	(
	idPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.EnfermedadesPorPaciente] ADD CONSTRAINT
	[FK_dbo.EnfermedadesPorPaciente_dbo.Enfermedades] FOREIGN KEY
	(
	idEnfermedad
	) REFERENCES dbo.[dbo.Enfermedades]
	(
	idEnfermedades
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.EnfermedadesPorPaciente] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.HistoriaClinica]
	(
	idPaciente int NOT NULL,
	idPrestacion int NOT NULL,
	fecha date NOT NULL,
	idUbicacion int NULL,
	observaciones varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.HistoriaClinica] ADD CONSTRAINT
	[PK_dbo.HistoriaClinica] PRIMARY KEY CLUSTERED 
	(
	idPaciente,
	idPrestacion,
	fecha
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.HistoriaClinica] ADD CONSTRAINT
	[FK_dbo.HistoriaClinica_dbo.Paciente] FOREIGN KEY
	(
	idPaciente
	) REFERENCES dbo.[dbo.Pacientes]
	(
	idPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.HistoriaClinica] ADD CONSTRAINT
	[FK_dbo.HistoriaClinica_dbo.Prestaciones] FOREIGN KEY
	(
	idPrestacion
	) REFERENCES dbo.[dbo.Prestaciones]
	(
	idPrestacion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.HistoriaClinica] ADD CONSTRAINT
	[FK_dbo.HistoriaClinica_dbo.Ubicaciones] FOREIGN KEY
	(
	idUbicacion
	) REFERENCES dbo.Ubicaciones
	(
	idUbicacion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.HistoriaClinica] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.ObraSocialPorPaciente]
	(
	idNroAfiliado int NOT NULL,
	idPlan int NOT NULL,
	idObraSocial int NOT NULL,
	idPaciente int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.ObraSocialPorPaciente] ADD CONSTRAINT
	[PK_dbo.ObraSocialPorPaciente] PRIMARY KEY CLUSTERED 
	(
	idNroAfiliado,
	idPlan,
	idObraSocial
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.ObraSocialPorPaciente] ADD CONSTRAINT
	ObraSocialPorPaciente_ObraSocial FOREIGN KEY
	(
	idPlan,
	idObraSocial
	) REFERENCES dbo.[dbo.Plan]
	(
	idPlan,
	idObraSocial
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.ObraSocialPorPaciente] ADD CONSTRAINT
	ObraSocialPorPaciente_Paciente FOREIGN KEY
	(
	idPaciente
	) REFERENCES dbo.[dbo.Pacientes]
	(
	idPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.ObraSocialPorPaciente] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Odontologos]
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
ALTER TABLE dbo.[dbo.Odontologos] ADD CONSTRAINT
	[PK_dbo.Odontologos] PRIMARY KEY CLUSTERED 
	(
	legajo
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Odontologos] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Receta]
	(
	legajoOdontologo int NOT NULL,
	idPaciente int NOT NULL,
	fecha date NOT NULL,
	hora time(7) NOT NULL,
	idMedicamento int NOT NULL,
	observaciones varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Receta] ADD CONSTRAINT
	[PK_dbo.Receta] PRIMARY KEY CLUSTERED 
	(
	legajoOdontologo,
	idPaciente,
	fecha,
	hora,
	idMedicamento
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Receta] ADD CONSTRAINT
	[FK_dbo.Receta_dbo.Odontologos] FOREIGN KEY
	(
	legajoOdontologo
	) REFERENCES dbo.[dbo.Odontologos]
	(
	legajo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.Receta] ADD CONSTRAINT
	[FK_dbo.Receta_dbo.Pacientes] FOREIGN KEY
	(
	idPaciente
	) REFERENCES dbo.[dbo.Pacientes]
	(
	idPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.Receta] ADD CONSTRAINT
	[FK_dbo.Receta_dbo.Medicamentos] FOREIGN KEY
	(
	idMedicamento
	) REFERENCES dbo.[dbo.Medicamentos]
	(
	idMedicamento
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.Receta] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.MedicosXEspecialidad]
	(
	idEspecialidad int NOT NULL,
	idMedico int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.MedicosXEspecialidad] ADD CONSTRAINT
	[PK_dbo.MedicosXEspecialidad] PRIMARY KEY CLUSTERED 
	(
	idEspecialidad,
	idMedico
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.MedicosXEspecialidad] ADD CONSTRAINT
	[FK_dbo.MedicosXEspecialidad_dbo.Odontologos] FOREIGN KEY
	(
	idMedico
	) REFERENCES dbo.[dbo.Odontologos]
	(
	legajo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.MedicosXEspecialidad] ADD CONSTRAINT
	[FK_dbo.MedicosXEspecialidad_dbo.Especialidades] FOREIGN KEY
	(
	idEspecialidad
	) REFERENCES dbo.[dbo.Especialidad]
	(
	idEspecialidad
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.MedicosXEspecialidad] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.Factura]
	(
	nroFactura int NOT NULL,
	fecha date NULL,
	idPaciente int NULL,
	legajoOdontologo int NULL,
	idObraSocial int NULL,
	idPlan int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.Factura] ADD CONSTRAINT
	[PK_dbo.Factura] PRIMARY KEY CLUSTERED 
	(
	nroFactura
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.Factura] ADD CONSTRAINT
	[FK_dbo.Factura_dbo.Paciente] FOREIGN KEY
	(
	idPaciente
	) REFERENCES dbo.[dbo.Pacientes]
	(
	idPaciente
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.Factura] ADD CONSTRAINT
	[FK_dbo.Factura_dbo.PrestacionesPorPlan] FOREIGN KEY
	(
	idPlan,
	idObraSocial
	) REFERENCES dbo.[dbo.Plan]
	(
	idPlan,
	idObraSocial
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.Factura] ADD CONSTRAINT
	[FK_dbo.Factura_dbo.Odontologo] FOREIGN KEY
	(
	legajoOdontologo
	) REFERENCES dbo.[dbo.Odontologos]
	(
	legajo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.Factura] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[dbo.DetalleFactura]
	(
	nroFactura int NOT NULL,
	idPrestacion int NOT NULL,
	monto float(53) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[dbo.DetalleFactura] ADD CONSTRAINT
	[PK_dbo.DetalleFactura] PRIMARY KEY CLUSTERED 
	(
	nroFactura,
	idPrestacion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[dbo.DetalleFactura] ADD CONSTRAINT
	[FK_dbo.DetalleFactura_dbo.Facturas] FOREIGN KEY
	(
	nroFactura
	) REFERENCES dbo.[dbo.Factura]
	(
	nroFactura
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.DetalleFactura] ADD CONSTRAINT
	[FK_dbo.DetalleFactura_dbo.Prestaciones] FOREIGN KEY
	(
	idPrestacion
	) REFERENCES dbo.[dbo.Prestaciones]
	(
	idPrestacion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[dbo.DetalleFactura] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
