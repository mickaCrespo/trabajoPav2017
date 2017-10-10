Public Class frmAgregarEspecialidad

    Private Sub frmAgregarEspecialidad_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarGrid(BDHelper2.GetEspecialidadesParaGrilla())

    End Sub

    Private Sub llenarGrid(ByVal source As Data.DataTable)
        dgvEspecialidades.Rows.Clear()

        For Each fila As DataRow In source.Rows
            dgvEspecialidades.Rows.Add(New String() {fila.Item("idEspecialidad"), fila.Item("nombre"), fila.Item("descripcion")})
        Next

    End Sub

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim param As New List(Of Object)
        param.Add(txtNombre.Text)

        If BDHelper2.validarDatos(param.ToArray()) = True Then

            Dim str As String = "INSERT INTO Especialidad (nombre, descripcion) VALUES("
            str += "'" & txtNombre.Text & "','" & txtDescripcion.Text & "')"


            BDHelper2.agregarEspecialidad(str)

            MsgBox("La especialidad ha sido registrada.")
            llenarGrid(BDHelper2.GetEspecialidadesParaGrilla())
            txtDescripcion.Text = ""
            txtNombre.Text = ""
        End If

    End Sub
End Class