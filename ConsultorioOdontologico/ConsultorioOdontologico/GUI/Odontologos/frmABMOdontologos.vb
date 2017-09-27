Public Class frmABMOdontologos

    Private Sub frmABMOdontologos_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        llenarGrid(BDHelper2.GetOdontologos())
    End Sub


    Private Sub llenarGrid(ByVal source As Data.DataTable)
        dgvOdontologos.Rows.Clear()

        For Each fila As DataRow In source.Rows
            dgvOdontologos.Rows.Add(New String() {fila.Item("legajo"), fila.Item("apellido"), fila.Item("nombre"), fila.Item("sexo"), fila.Item("fechaNacimiento"), fila.Item("nroMatricula"), fila.Item("telContacto"), fila.Item("eMail"), fila.Item("Domicilio")})
        Next

    End Sub

    Private Sub cmdConsultar_Click(sender As Object, e As EventArgs) Handles cmdConsultar.Click

        Dim odontologo = BDHelper2.GetOdontologo(txtLegajo.Text)
        Dim P As New Odontologo
        For Each fila As DataRow In odontologo.Rows
            P.Apellido = fila.Item("Apellido")
        Next
        If (P.Apellido IsNot Nothing) Then
            llenarGrid(odontologo)
            cmdConsultar.Enabled = True
        Else
            cmdConsultar.Enabled = False
            MsgBox("Ese odontologo no existe")
        End If

    End Sub

    Private Sub cmdSalir_Click(sender As Object, e As EventArgs) Handles cmdSalir.Click
        'Confirmación de salida.
        If MessageBox.Show("Seguro que desea salir?", _
                "Aviso", MessageBoxButtons.OKCancel, MessageBoxIcon.Question _
                , MessageBoxDefaultButton.Button1) = Windows.Forms.DialogResult.OK Then
            Me.Close()
        End If
    End Sub

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click
        Dim str As String = "INSERT INTO Odontologos (legajo, apellido,nombre,sexo,fechaNacimiento,telcontacto,eMail,domicilio,nroMatricula,fechaIngreso, baja) VALUES("
        str += txtLegajo.Text & ", '" & txtApellido.Text & "','" & txtNombre.Text & "','"
        If cmbSexo.SelectedIndex = 1 Then
            str += "F',"
        Else
            str += "M',"
        End If
        str += "CONVERT(DATE,'" & mtxtDOB.Text & "', 103 ),'" & txtTelefono.Text & "','" & txtMail.Text & "','" & txtDomicilio.Text & "'," & txtNroMatricula.Text & ", GETDATE(), 'F')"
        BDHelper2.agregarOdontologo(str)


        MsgBox("El odontologo se ha registrado")

        llenarGrid(BDHelper2.GetOdontologos())

    End Sub

    Private Sub cmdModificar_Click(sender As Object, e As EventArgs) Handles cmdModificar.Click
        Dim str As String = "UPDATE Odontologos SET apellido = '" & txtApellido.Text & "', nombre = '" & txtNombre.Text & "', sexo ='"
        If cmbSexo.SelectedIndex = 1 Then
            str += "F',"
        Else
            str += "M',"
        End If
        str += "fechaNacimiento = CONVERT(DATE,'" & mtxtDOB.Text & "', 103 ),telcontacto = '" & txtTelefono.Text & "', eMail ='" & txtMail.Text & "', domicilio ='" & txtDomicilio.Text & "' "
        str += "WHERE legajo = " & txtLegajo.Text
        BDHelper2.modificarOdontologo(str)
        llenarGrid(BDHelper2.GetOdontologos())
        MsgBox("La informacion del odontologo ha sido actualizada")

    End Sub

    Private Sub cmdEliminar_Click(sender As Object, e As EventArgs) Handles cmdEliminar.Click
        Dim legajo As String = dgvOdontologos.CurrentRow.Cells(0).Value
        Dim str As String = "UPDATE Odontologos SET baja = 'T' WHERE legajo = " & legajo
        BDHelper2.eliminarOdontologo(str)
        llenarGrid(BDHelper2.GetOdontologos())
        MsgBox("El odontologo ha sido dado de baja")
    End Sub


    Private Sub cmdBorrarCampos_Click(sender As Object, e As EventArgs) Handles cmdBorrarCampos.Click
        txtLegajo.Text = ""
        txtApellido.Text = ""
        txtNombre.Text = ""
        txtTelefono.Text = ""
        mtxtDOB.Text = ""
        txtDomicilio.Text = ""
        txtMail.Text = ""
        txtNroMatricula.Text = ""

    End Sub

    Private Sub dgvOdontologos_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles dgvOdontologos.CellClick
        txtLegajo.Text = dgvOdontologos.CurrentRow.Cells(0).Value
        txtApellido.Text = dgvOdontologos.CurrentRow.Cells(1).Value
        txtNombre.Text = dgvOdontologos.CurrentRow.Cells(2).Value
        mtxtDOB.Text = dgvOdontologos.CurrentRow.Cells(4).Value
        txtNroMatricula.Text = dgvOdontologos.CurrentRow.Cells(5).Value
        txtTelefono.Text = dgvOdontologos.CurrentRow.Cells(6).Value
        txtMail.Text = dgvOdontologos.CurrentRow.Cells(7).Value
        txtDomicilio.Text = dgvOdontologos.CurrentRow.Cells(8).Value
    End Sub



    Private Sub dgvOdontologos_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles dgvOdontologos.CellContentClick

    End Sub
End Class