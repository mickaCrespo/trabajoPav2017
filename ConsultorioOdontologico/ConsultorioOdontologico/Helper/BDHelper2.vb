Imports System.Data.SqlClient

Public Class BDHelper2

    Private Shared string_conexion As String = "Data Source=DESKTOP-I4BBJMS\SQLEXPRESS;Initial Catalog=db_consultorio_odontologico;User ID=sa;Password=19781996"

    Private Shared Function EjecutarSQL(ByVal strSql As String) As Integer
        Dim conexion As New SqlConnection
        Dim cmd As New SqlCommand
        Dim tabla As New Data.DataTable
        Try
            conexion.ConnectionString = string_conexion
            conexion.Open()
            cmd.Connection = conexion
            cmd.CommandType = CommandType.Text
            cmd.CommandText = strSql

            Return cmd.ExecuteNonQuery()
        Catch ex As Exception
            Throw ex
        Finally
            conexion.Close()
            conexion.Dispose()
        End Try
    End Function

    

    Private Shared Function ConsultaSQL(ByVal strSql As String) As Data.DataTable
        Dim conexion As New SqlConnection
        Dim cmd As New SqlCommand
        Dim tabla As New DataTable
        Try
            conexion.ConnectionString = string_conexion
            conexion.Open()
            cmd.Connection = conexion
            cmd.CommandType = CommandType.Text
            cmd.CommandText = strSql

            tabla.Load(cmd.ExecuteReader())

            Return tabla
        Catch ex As Exception
            Throw ex
        Finally
            conexion.Close()
            conexion.Dispose()
        End Try
    End Function

    Public Shared Function GetPacientes() As Data.DataTable
        Dim tabla As Data.DataTable
        Dim consulta As String = "SELECT Pacientes.dniPaciente ,Pacientes.nombre , Pacientes.apellido, Pacientes.sexo , Pacientes.fechaNacimiento , Pacientes.telContacto , ObraSocial.nombre AS 'NombreOS', Planes.nombre AS 'NombrePlan', ObraSocialXPaciente.idNroAfiliado, ObraSocialXPaciente.idPlan, ObraSocialXPaciente.idObraSocial  FROM (Pacientes JOIN ObraSocialXPaciente ON (Pacientes.dniPaciente = ObraSocialXPaciente.dniPaciente)) JOIN ObraSocial ON (ObraSocial.idOS = ObraSocialXPaciente.idObraSocial) JOIN Planes ON (Planes.idObraSocial = ObraSocialXPaciente.idObraSocial AND Planes.idPlan = ObraSocialXPaciente.idPlan ) WHERE Pacientes.activo = 'T' ORDER BY Pacientes.apellido"

        tabla = ConsultaSQL(consulta)

        Return tabla

    End Function

    Public Shared Function GetPaciente(ByVal dni As Integer) As Data.DataTable

        Dim tabla As Data.DataTable

        Dim consulta As String = "SELECT Pacientes.dniPaciente ,Pacientes.nombre , Pacientes.apellido, Pacientes.sexo , Pacientes.fechaNacimiento , Pacientes.telContacto , ObraSocial.nombre AS 'NombreOS', Planes.nombre AS 'NombrePlan', ObraSocialXPaciente.idNroAfiliado  FROM Pacientes JOIN ObraSocialXPaciente ON Pacientes.dniPaciente = ObraSocialXPaciente.dniPaciente JOIN ObraSocial ON ObraSocial.idOS = ObraSocialXPaciente.idObraSocial JOIN Planes ON (Planes.idObraSocial = ObraSocialXPaciente.idObraSocial AND Planes.idPlan = ObraSocialXPaciente.idPlan ) WHERE Pacientes.dniPaciente = " & dni & " AND Pacientes.activo = 'T'"

        tabla = ConsultaSQL(consulta)

        Return tabla


    End Function


    Public Shared Function GetOdontologo(ByVal legajo As Integer) As Data.DataTable

        Dim tabla As Data.DataTable

        Dim consulta As String = "SELECT O.legajo , O.apellido, O.nombre , O.sexo , O.fechaNacimiento , O.telContacto , O.eMail, O.nroMatricula, E.nombre AS 'NombreEspecialidad' FROM Odontologos O JOIN MedicosXEspecialidad ME ON O.legajo = ME.idMedico JOIN Especialidad E ON E.idEspecialidad = ME.idEspecialidad WHERE O.legajo = " & legajo & " AND O.activo = 'T'"

        tabla = ConsultaSQL(consulta)

        Return tabla

    End Function

    Public Shared Function GetOdontologos() As Data.DataTable
        Dim tabla As Data.DataTable
        Dim consulta As String = "SELECT O.legajo, O.dniOdontologo, O.apellido, O.nombre , O.sexo , O.fechaNacimiento , O.telContacto , O.eMail, O.nroMatricula, O.domicilio FROM Odontologos O WHERE O.activo = 'T' ORDER BY O.apellido"

        tabla = ConsultaSQL(consulta)


        Return tabla

    End Function




    Public Shared Function GetObraSocial() As DataTable
        Dim strSQL As String = "SELECT * FROM ObraSocial"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function GetObraSocialSinNT() As DataTable
        Dim strSQL As String = "SELECT * FROM ObraSocial WHERE ObraSocial.nombre != 'N/T'"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function GetPlan(ByRef OSSeleccionada As Integer) As DataTable
        Dim strSQL As String = "SELECT * FROM Planes WHERE idObraSocial =  " & OSSeleccionada.ToString
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function GetPrestacionesParaGrilla(ByVal PlanSeleccionado As Integer, ByVal OSSeleccionada As Integer) As Data.DataTable
        Dim tabla As Data.DataTable
        Dim consulta As String = "SELECT PPP.idPlan, PPP.idObraSocial,PPP.idPrestacion, P.nombre, P.descripcion, P.precio, PPP.montoCubierto, P.duracion FROM Prestaciones P JOIN PrestacionesPorPlan PPP ON (P.idPrestacion = PPP.idPrestacion) WHERE (PPP.idObraSocial = " & OSSeleccionada & " AND PPP.idPlan = " & PlanSeleccionado & ") ORDER BY P.nombre"

        tabla = ConsultaSQL(consulta)

        Return tabla

    End Function

    Public Shared Function GetPrestacionesPorPlan(OSSeleccionada As Integer, PlanSeleccionado As Integer) As DataTable

        Dim strSQL As String = "SELECT P.idPrestacion, P.nombre FROM Prestaciones P WHERE P.idPrestacion NOT IN ("
        strSQL += "SELECT P.idPrestacion FROM Prestaciones P LEFT JOIN PrestacionesPorPlan PPP ON (P.idPrestacion = PPP.idPrestacion)"
        strSQL += "WHERE (PPP.idObraSocial  = " & OSSeleccionada & ") AND (PPP.idPlan = " & PlanSeleccionado & "))"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function GetPrestaciones() As DataTable
        Dim strSQL As String = "SELECT * FROM Prestaciones"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function GetEspecialidadesParaGrilla() As Data.DataTable
        Dim tabla As Data.DataTable
        Dim consulta As String = "SELECT * FROM Especialidad"

        tabla = ConsultaSQL(consulta)


        Return tabla

    End Function


    Public Shared Sub agregarPaciente(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Function agregarOdontologo(ByVal str As String) As Integer
        Dim tabla As Data.DataTable = BDHelper2.ConsultaSQL(str)
        Return tabla.Rows(0).Item("ID")

    End Function

    Public Shared Sub agregarEspecialidadesXOdontologo(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub


    Public Shared Sub modificarPaciente(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub modificarOdontologo(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub eliminarPaciente(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub eliminarOdontologo(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub agregarPrestacionPorPlan(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub agregarPlan(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub agregarEspecialidad(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Function getEspecialidadesPorOdontologo(ByVal str As String) As Data.DataTable
        Return BDHelper2.ConsultaSQL(str)
    End Function

    Public Shared Function GetEspecialidades() As DataTable

        Dim strSQL As String = "SELECT E.nombre FROM Especialidad E"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function validarDatos(ByVal params As Object()) As Boolean
        For i = 0 To params.Length - 1


            If params(i.ToString) = vbNullString Then
                MsgBox("Faltan completar datos.")
                Return False
            End If

        Next
        Return True

    End Function

    Public Shared Function validarCombos(ByVal index As Object()) As Boolean

        For i = 0 To index.Length - 1
            If index(i) = -1 Then
                MsgBox("Faltan completar datos.")
                Return False
            End If

        Next
        Return True

    End Function

    Public Shared Function GetHistoriasClinicas(ByVal dni As Integer) As DataTable
        Dim str As String = "SELECT HC.fecha, HC.idPrestacion, P.nombre AS nombrePrestacion, HC.idUbicacion, U.descripcion, HC.idTipo, TD.nombre AS nombreTipo, HC.observaciones FROM HistoriaClinica HC JOIN Prestaciones P ON (HC.idPrestacion = P.idPrestacion) JOIN Ubicacion U ON (HC.idUbicacion = U.idUbicacion)JOIN TipoDiente TD ON (HC.idTipo = TD.idTipo) WHERE HC.dniPaciente = " & dni

        Return BDHelper2.ConsultaSQL(str)
    End Function

    Public Shared Function GetEnfermedadesDePaciente(ByVal dni As Integer) As DataTable
        Dim str As String = "SELECT EPP.idEnfermedad, E.nombre, EPP.descripcion FROM EnfermedadesXPaciente EPP JOIN Enfermedades E ON EPP.idEnfermedad = E.idEnfermedades WHERE dniPaciente = " & dni

        Return BDHelper2.ConsultaSQL(str)
    End Function

    Public Shared Function GetAlergiasDePaciente(ByVal dni As Integer) As DataTable
        Dim str As String = "SELECT APP.idAlergia, A.nombre, APP.descripcion FROM AlergiasXPaciente APP JOIN Alergias A ON APP.idAlergia = A.idAlergia WHERE dniPaciente = " & dni

        Return BDHelper2.ConsultaSQL(str)
    End Function


    Public Shared Function GetAlergias() As DataTable
        Dim strSQL As String = "SELECT * FROM Alergias"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function


    Public Shared Sub agregarAlergiaAPaciente(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Function GetEnfermedades() As DataTable
        Dim strSQL As String = "SELECT * FROM Enfermedades"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function GetUbicaciones() As DataTable
        Dim strSQL As String = "SELECT * FROM Ubicacion"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function GetTipos() As DataTable
        Dim strSQL As String = "SELECT * FROM TipoDiente"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Sub agregarHCAPaciente(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Function validarMonto(ByVal Prestacion As String, ByVal monto As Integer) As Boolean
        Dim strSQL As String = "SELECT precio FROM Prestaciones WHERE nombre = '" & Prestacion & "'"
        Dim tabla As Data.DataTable = BDHelper2.ConsultaSQL(strSQL)
        Dim precio As Integer = tabla.Rows(0).Item("precio")
        If monto > precio Then
            MsgBox("ERROR: El monto ingresado es mayor al precio de la prestación (" & precio & ").")
            Return False
        End If
        Return True
    End Function

    Public Shared Function validarFechaNac(ByVal fecha As DateTime) As Boolean
        Dim fechaMin As New DateTime(1930, 1, 1)
        Dim fechaMax As DateTime = DateTime.Now
        If (fecha < fechaMin) OrElse (fecha > fechaMax) Then
            MsgBox("Fecha de nacimiento errónea")
            Return False
        End If
        Return True
    End Function



End Class

