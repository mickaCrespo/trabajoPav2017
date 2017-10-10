Public Class frmAgregarObraSocial

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim param As New List(Of Object)
        param.Add(txtNombre.Text)

        If BDHelper2.validarDatos(param.ToArray()) = True Then


            Dim str As String = "INSERT INTO ObraSocial (nombre) VALUES ("
            str += "'" & txtNombre.Text & "')"

            BDHelper2.agregarPrestacionPorPlan(str)
            MsgBox("La Obra Social se ha registrado")
            Me.Close()
        End If
    End Sub


 


    Private Sub frmAgregarObraSocial_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        txtNombre.Text = ""
    End Sub
End Class