Public Class frmABMPacientes


    Private Sub frmABMPacientes_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbOS, BDHelper2.GetObraSocial(), "idOS", "nombre")

        llenarGrid(BDHelper2.GetPacientes())
    End Sub

    Private Sub llenarGrid(ByVal source As Data.DataTable)
        dgvPacientes.Rows.Clear()

        For Each fila As DataRow In source.Rows
            dgvPacientes.Rows.Add(New String() {fila.Item("dniPaciente"), fila.Item("Apellido"), fila.Item("Nombre"), fila.Item("Sexo"), fila.Item("fechaNacimiento"), fila.Item("telContacto"), fila.Item("NombreOS"), fila.Item("NombrePlan"), fila.Item("idNroAfiliado")})

            Next

    End Sub

    Private Sub CargarCombo(ByRef combo As ComboBox, ByRef datos As Data.DataTable, ByVal pk As String, ByVal descripcion As String)

        combo.DataSource = datos
        combo.ValueMember = pk
        combo.DisplayMember = descripcion
        combo.SelectedIndex = -1

    End Sub


    Private Sub cmdConsultar_Click(sender As Object, e As EventArgs) Handles cmdConsultar.Click

        Dim paciente = BDHelper2.GetPaciente(txtDNI.Text)
        Dim P As New Paciente
        For Each fila As DataRow In paciente.Rows
            P.Apellido = fila.Item("Apellido")
        Next
        If (P.Apellido IsNot Nothing) Then
            llenarGrid(paciente)
            cmdConsultar.Enabled = True
        Else
            cmdConsultar.Enabled = False
            MsgBox("Ese paciente no existe")
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
        Dim str As String = "INSERT INTO Pacientes (dniPaciente, apellido,nombre,sexo,fechaNacimiento,telcontacto, baja) VALUES("
        str += txtDNI.Text & ", '" & txtApellido.Text & "','" & txtNombre.Text & "','"
        If cmbSexo.DisplayMember = "Femenino" Then
            str += "F',"
        Else
            str += "M',"
        End If
        str += "CONVERT(DATE,'" & mtxtDOB.Text & "', 103 ),'" & txtTelCont.Text & "', 'F')"
        BDHelper2.agregarPaciente(str)



        Dim str2 As String = "INSERT INTO ObraSocialXPaciente (idNroAfiliado,idPlan,idObraSocial,dniPaciente) VALUES("
        str2 += txtNroAfiliado.Text & "," & cmbPlan.SelectedValue & "," & cmbOS.SelectedValue & "," & txtDNI.Text & ")"
        MsgBox(cmbPlan.SelectedValue)
        MsgBox(cmbOS.SelectedValue)
        BDHelper2.agregarObraSocialAPaciente(str2)

        MsgBox("El paciente se ha dado de alta correctamente")

        llenarGrid(BDHelper2.GetPacientes())

    End Sub

    Private Sub cmbOS_SelectionChangedCommit(sender As Object, e As EventArgs) Handles cmbOS.SelectedIndexChanged

        CargarCombo(cmbPlan, BDHelper2.GetPlan(cmbOS.SelectedIndex), "idPlan", "nombre")
    End Sub

    Private Sub cmdModificar_Click(sender As Object, e As EventArgs) Handles cmdModificar.Click
        Dim str As String = "UPDATE Pacientes SET apellido = '" & txtApellido.Text & "', nombre = '" & txtNombre.Text & "', sexo ='"
        If cmbSexo.DisplayMember = "Femenino" Then
            str += "F',"
        Else
            str += "M',"
        End If
        str += "fechaNacimiento = CONVERT(DATE,'" & mtxtDOB.Text & "', 103 ),telcontacto = '" & txtTelCont.Text & "' WHERE dniPaciente =" & txtDNI.Text
        BDHelper2.modificarPaciente(str)
        llenarGrid(BDHelper2.GetPacientes())
        MsgBox("La informacion del paciente ha sido actualizada")

    End Sub

    Private Sub dgvPacientes_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles dgvPacientes.CellContentClick

        txtDNI.Text = dgvPacientes.CurrentRow.Cells(0).Value
        txtApellido.Text = dgvPacientes.CurrentRow.Cells(1).Value
        txtNombre.Text = dgvPacientes.CurrentRow.Cells(2).Value
        mtxtDOB.Text = dgvPacientes.CurrentRow.Cells(4).Value
        txtTelCont.Text = dgvPacientes.CurrentRow.Cells(5).Value


    End Sub


    Private Sub cmdEliminar_Click(sender As Object, e As EventArgs) Handles cmdEliminar.Click
        Dim dni As String = dgvPacientes.CurrentRow.Cells(0).Value
        Dim str As String = "UPDATE Pacientes SET baja = 'T' WHERE dniPaciente = " & dni
        BDHelper2.eliminarPaciente(str)
        llenarGrid(BDHelper2.GetPacientes())
        MsgBox("El paciente ha sido dado de baja exitosamente")
    End Sub
End Class
