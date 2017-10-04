Public Class frmAgregarPrestacionInexistente

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarGrid(BDHelper2.GetPrestaciones())
    End Sub

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim param As New List(Of Object)
        param.Add(txtNombre.Text)
        param.Add(txtPrecio.Text)
        param.Add(txtDuracion.Text)


        If BDHelper2.validarDatos(param.ToArray()) = True Then
            Dim id As Integer = BDHelper2.GetPrestaciones().Rows.Count + 1

            Dim str As String = "INSERT INTO Prestaciones (idPrestacion, nombre, descripcion, precio, duracion) VALUES ("
            str += id & ",'" & txtNombre.Text & "','" & rtbDescripcion.Text & "'," & txtPrecio.Text & "," & txtDuracion.Text & ")"

            BDHelper2.agregarPrestacionPorPlan(str)
            MsgBox("La prestacion se ha registrado")
            llenarGrid(BDHelper2.GetPrestaciones())

        End If

    End Sub

    Private Sub llenarGrid(ByVal source As Data.DataTable)
        dgvPrestaciones.Rows.Clear()

        For Each fila As DataRow In source.Rows
            dgvPrestaciones.Rows.Add(New String() {fila.Item("idPrestacion"), fila.Item("nombre"), fila.Item("descripcion"), fila.Item("precio"), fila.Item("duracion")})
        Next

    End Sub


    Private Sub cmdSalir_Click(sender As Object, e As EventArgs) Handles cmdSalir.Click
        Me.Close()
    End Sub
End Class