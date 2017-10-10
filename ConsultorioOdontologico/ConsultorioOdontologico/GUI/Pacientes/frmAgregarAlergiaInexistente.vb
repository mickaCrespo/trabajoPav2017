Public Class frmAgregarAlergiaInexistente


    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click
        Dim param As New List(Of Object)


        param.Add(txtNombre.Text)

        If BDHelper2.validarDatos(param.ToArray()) = True Then
            If BDHelper2.validarQueNoEsteEn(txtNombre.Text, BDHelper2.GetAlergias()) = True Then
                Dim str As String = "INSERT INTO Alergias(nombre,descripcion) VALUES("
                str += "'" & txtNombre.Text & "','" & txtDescripcion.Text & "')"

                BDHelper2.agregarAlergiaAPaciente(str)
                MsgBox("Alergia agregada.")
            End If
        End If
    End Sub

    Private Sub frmAgregarAlergiaInexistente_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        txtNombre.Text = ""
        txtDescripcion.Text = ""
    End Sub
End Class