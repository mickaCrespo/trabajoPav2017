Imports System.Data.SqlClient

Public Class BDHelper2

    Private Shared string_conexion As String = "Data Source=maquis;Initial Catalog=db_consultorio_odontologico;User ID=avisuales1;Password=avisuales1"

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
        Dim contador As Integer
        Dim consulta As String = "SELECT  Pacientes.dniPaciente ,Pacientes.nombre , Pacientes.apellido, Pacientes.sexo , Pacientes.fechaNacimiento , Pacientes.telContacto , ObraSocial.nombre AS 'NombreOS', Planes.nombre AS 'NombrePlan', ObraSocialXPaciente.idNroAfiliado  FROM (Pacientes JOIN ObraSocialXPaciente ON (Pacientes.dniPaciente = ObraSocialXPaciente.dniPaciente)) JOIN ObraSocial ON (ObraSocial.idOS = ObraSocialXPaciente.idObraSocial) JOIN Planes ON (Planes.idObraSocial = ObraSocialXPaciente.idObraSocial AND Planes.idPlan = ObraSocialXPaciente.idPlan ) WHERE Pacientes.baja = 'F' ORDER BY Pacientes.apellido"

        tabla = ConsultaSQL(consulta)
        contador = tabla.Rows.Count

        Return tabla

    End Function

    Public Shared Function GetPaciente(ByVal dni As Integer) As Data.DataTable

        Dim tabla As Data.DataTable

        Dim consulta As String = "SELECT Pacientes.dniPaciente ,Pacientes.nombre , Pacientes.apellido, Pacientes.sexo , Pacientes.fechaNacimiento , Pacientes.telContacto , ObraSocial.nombre AS 'NombreOS', Planes.nombre AS 'NombrePlan', ObraSocialXPaciente.idNroAfiliado  FROM Pacientes JOIN ObraSocialXPaciente ON Pacientes.dniPaciente = ObraSocialXPaciente.dniPaciente JOIN ObraSocial ON ObraSocial.idOS = ObraSocialXPaciente.idObraSocial JOIN Planes ON (Planes.idObraSocial = ObraSocialXPaciente.idObraSocial AND Planes.idPlan = ObraSocialXPaciente.idPlan ) WHERE Pacientes.dniPaciente = " & dni & " AND Pacientes.baja = 'F'"

        tabla = ConsultaSQL(consulta)

        Return tabla


    End Function

    Public Shared Function GetObraSocial() As DataTable
        Dim strSQL As String = "SELECT * FROM ObraSocial"
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Function GetPlan(ByRef OSSeleccionada As Integer) As DataTable
        Dim strSQL As String = "SELECT * FROM Planes WHERE idObraSocial =  " & OSSeleccionada.ToString
        Return BDHelper2.ConsultaSQL(strSQL)
    End Function

    Public Shared Sub agregarPaciente(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub agregarObraSocialAPaciente(ByVal str As String)

        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub modificarPaciente(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub

    Public Shared Sub eliminarPaciente(ByVal str As String)
        BDHelper2.EjecutarSQL(str)
    End Sub
End Class

