Public Class frmAgregarEnfermedadInexistente

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim param As New List(Of Object)
        param.Add(txtNombre.Text)

        If BDHelper2.validarDatos(param.ToArray()) = True Then
            If BDHelper2.validarQueNoEsteEn(txtNombre.Text, BDHelper2.GetEnfermedades()) = True Then

                Dim str As String = "INSERT INTO Enfermedades(nombre,descripcion) VALUES("
                str += "'" & txtNombre.Text & "','" & txtDescripcion.Text & "')"

                BDHelper2.agregarAlergiaAPaciente(str)
                MsgBox("Enfermedad agregada.")
                txtDescripcion.Text = ""
                txtNombre.Text = ""
            End If
        End If
    End Sub


End Class