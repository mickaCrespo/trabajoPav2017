Public Class frmAgregarEnfermedadInexistente

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim param As New List(Of Object)
        param.Add(txtNombre.Text)
        param.Add(txtDescripcion.Text)

        If BDHelper2.validarDatos(param.ToArray()) = True Then
            Dim id As Integer = BDHelper2.GetEnfermedades.Rows.Count + 1
            Dim str As String = "INSERT INTO Enfermedades(idEnfermedades,nombre,descripcion) VALUES("
            str += id & ",'" & txtNombre.Text & "','" & txtDescripcion.Text & "')"

            BDHelper2.agregarAlergiaAPaciente(str)
            MsgBox("Enfermedad agregada.")
        End If
    End Sub

    Private Sub lblNombre_Click(sender As Object, e As EventArgs) Handles lblNombre.Click

    End Sub
    Private Sub lblDescripcion_Click(sender As Object, e As EventArgs) Handles lblDescripcion.Click

    End Sub
    Private Sub txtNombre_TextChanged(sender As Object, e As EventArgs) Handles txtNombre.TextChanged

    End Sub
    Private Sub txtDescripcion_TextChanged(sender As Object, e As EventArgs) Handles txtDescripcion.TextChanged

    End Sub
End Class