Public Class frmAgregarPrestacionInexistente

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim id As Integer = BDHelper2.GetPrestaciones().Rows.Count + 1

        Dim str As String = "INSERT INTO Prestaciones (idPrestacion, nombre, descripcion, precio, duracion) VALUES ("
        str += id & ",'" & txtNombre.Text & "','" & rtbDescripcion.Text & "'," & txtPrecio.Text & "," & txtDuracion.Text & ")"

        BDHelper2.agregarPrestacionPorPlan(str)
        MsgBox("La prestacion se ha registrado")

    End Sub


End Class