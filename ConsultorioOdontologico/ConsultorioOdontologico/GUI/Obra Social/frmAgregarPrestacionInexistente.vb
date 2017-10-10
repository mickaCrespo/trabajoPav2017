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
            If BDHelper2.validarQueNoEsteEn(txtNombre.Text, BDHelper2.GetPrestaciones()) = True Then

                Dim str As String = "INSERT INTO Prestaciones (nombre, descripcion, precio, duracion) VALUES ("
                str += "'" & txtNombre.Text & "','" & rtbDescripcion.Text & "'," & txtPrecio.Text & "," & txtDuracion.Text & ")"

                BDHelper2.agregarPrestacionPorPlan(str)
                MsgBox("La prestacion se ha registrado")
                llenarGrid(BDHelper2.GetPrestaciones())

                txtDuracion.Text = ""
                txtNombre.Text = ""
                txtPrecio.Text = ""

            End If
        End If



    End Sub

    Private Sub llenarGrid(ByVal source As Data.DataTable)
        dgvPrestaciones.Rows.Clear()

        For Each fila As DataRow In source.Rows
            dgvPrestaciones.Rows.Add(New String() {fila.Item("idPrestacion"), fila.Item("nombre"), fila.Item("descripcion"), fila.Item("precio"), fila.Item("duracion")})
        Next

    End Sub


    Private Sub cmdSalir_Click(sender As Object, e As EventArgs)
        Me.Close()
    End Sub
End Class