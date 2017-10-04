Public Class frmAgregarObraSocial

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim param As New List(Of Object)
        param.Add(txtNombre.Text)

        If BDHelper2.validarDatos(param.ToArray()) = True Then

            Dim id As Integer = BDHelper2.GetObraSocial.Rows.Count

            Dim str As String = "INSERT INTO ObraSocial (idOS, nombre) VALUES ("
            str += id & ",'" & txtNombre.Text & "')"

            BDHelper2.agregarPrestacionPorPlan(str)
            MsgBox("La Obra Social se ha registrado")
            Me.Close()
        End If
    End Sub


 


End Class