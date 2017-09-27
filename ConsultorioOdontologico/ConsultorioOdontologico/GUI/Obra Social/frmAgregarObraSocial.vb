Public Class frmAgregarObraSocial

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click
        Dim id As Integer = BDHelper2.GetObraSocial.Rows.Count

        Dim str As String = "INSERT INTO ObraSocial (idOS, nombre) VALUES ("
        str += id & ",'" & txtNombre.Text & "')"

        BDHelper2.agregarPrestacionPorPlan(str)
        MsgBox("La Obra Social se ha registrado")
        Me.Close()
    End Sub


 

End Class