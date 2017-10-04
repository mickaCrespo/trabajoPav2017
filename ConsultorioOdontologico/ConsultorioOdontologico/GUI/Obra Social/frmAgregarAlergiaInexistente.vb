Public Class frmAgregarAlergiaInexistente


    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click
        Dim param As New List(Of Object)
        param.Add(txtNombre.Text)

        If BDHelper2.validarDatos(param.ToArray()) = True Then
            Dim id As Integer = BDHelper2.GetAlergias.Rows.Count + 1
            Dim str As String = "INSERT INTO Alergias(idAlergia,nombre,descripcion) VALUES("
            str += id & ",'" & txtNombre.Text & "','" & txtDescripcion.Text & "')"

            BDHelper2.agregarAlergiaAPaciente(str)
            MsgBox("Alergia agregada.")
        End If
    End Sub
End Class