Public Class frmABMOdontologos

    Private Sub frmABMOdontologos_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        llenarGrid(BDHelper2.GetOdontologos())
        Dim tabla As Data.DataTable = BDHelper2.GetEspecialidades()
        For Each fila As DataRow In tabla.Rows
            clbEspecialidades.Items.Add(fila.Item("nombre"))
        Next

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

        Dim param As New List(Of Object)
        param.Add(txtLegajo.Text)
        param.Add(txtApellido.Text)
        param.Add(txtNombre.Text)
        param.Add(mtxtDOB.Text)
        param.Add(txtNroMatricula.Text)
        param.Add(txtTelefono.Text)
        param.Add(txtDomicilio.Text)

        If clbEspecialidades.SelectedItems.Count > 0 Then



            If BDHelper2.validarDatos(param.ToArray()) = True Then

                Dim str As String = "INSERT INTO Odontologos (legajo, apellido,nombre,sexo,fechaNacimiento,telcontacto,eMail,domicilio,nroMatricula,fechaIngreso, activo) VALUES("
                str += txtLegajo.Text & ", '" & txtApellido.Text & "','" & txtNombre.Text & "','"
                If cmbSexo.SelectedIndex = 1 Then
                    str += "F',"
                Else
                    str += "M',"
                End If
                str += "CONVERT(DATE,'" & mtxtDOB.Text & "', 103 ),'" & txtTelefono.Text & "','" & txtMail.Text & "','" & txtDomicilio.Text & "'," & txtNroMatricula.Text & ", GETDATE(), 'T')"

                For Each item As Integer In clbEspecialidades.CheckedIndices

                    str += "INSERT INTO MedicosXEspecialidad (idEspecialidad, idMedico) VALUES (" & item + 1 & "," & txtLegajo.Text & ")"

                Next
                BDHelper2.agregarOdontologo(str)

                MsgBox("El odontologo se ha registrado")
                llenarGrid(BDHelper2.GetOdontologos())

            End If
        Else
            MsgBox("Faltan ingresar especialidades.")
        End If


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

        Dim str2 As String = "SELECT idEspecialidad FROM MedicosXEspecialidad WHERE idMedico =" & txtLegajo.Text
        Dim tabla As Data.DataTable = BDHelper2.getEspecialidadesPorOdontologo(str2)
        Dim igual As Boolean

        For i = 0 To clbEspecialidades.Items.Count - 1

            If clbEspecialidades.GetItemChecked(i) = True Then
                For Each fila As DataRow In tabla.Rows

                    If fila.Item("idEspecialidad") = (i + 1) Then
                        igual = True
                    End If
                Next
                If igual = False Then
                    str += " INSERT INTO MedicosXEspecialidad (idEspecialidad,idMedico) VALUES (" & (i + 1) & "," & txtLegajo.Text & ") "

                End If
                igual = False
            End If
        Next


        BDHelper2.modificarOdontologo(str)
        llenarGrid(BDHelper2.GetOdontologos())
        MsgBox("La informacion del odontologo ha sido actualizada")

    End Sub

    Private Sub cmdEliminar_Click(sender As Object, e As EventArgs) Handles cmdEliminar.Click
        Dim legajo As String = dgvOdontologos.CurrentRow.Cells(0).Value
        Dim str As String = "UPDATE Odontologos SET activo = 'F' WHERE legajo = " & legajo
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
        cmbSexo.SelectedIndex = -1
        clbEspecialidades.Items.Clear()
        Dim tabla As Data.DataTable = BDHelper2.GetEspecialidades()
        For Each fila As DataRow In tabla.Rows
            clbEspecialidades.Items.Add(fila.Item("nombre"))
        Next

    End Sub

    Private Sub dgvOdontologos_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles dgvOdontologos.CellClick

        For i = 0 To clbEspecialidades.Items.Count - 1
            clbEspecialidades.SetItemChecked(i, False)
        Next


        txtLegajo.Text = dgvOdontologos.CurrentRow.Cells(0).Value
        txtApellido.Text = dgvOdontologos.CurrentRow.Cells(1).Value
        txtNombre.Text = dgvOdontologos.CurrentRow.Cells(2).Value
        mtxtDOB.Text = dgvOdontologos.CurrentRow.Cells(4).Value
        txtNroMatricula.Text = dgvOdontologos.CurrentRow.Cells(5).Value
        txtTelefono.Text = dgvOdontologos.CurrentRow.Cells(6).Value
        txtMail.Text = dgvOdontologos.CurrentRow.Cells(7).Value
        txtDomicilio.Text = dgvOdontologos.CurrentRow.Cells(8).Value
        If dgvOdontologos.CurrentRow.Cells(3).Value = "F" Then
            cmbSexo.SelectedIndex = 1
        Else
            cmbSexo.SelectedIndex = 0
        End If

        Dim str As String = "SELECT * FROM MedicosXEspecialidad WHERE idMedico = " & dgvOdontologos.CurrentRow.Cells(0).Value
        Dim tabla As Data.DataTable = BDHelper2.getEspecialidadesPorOdontologo(str)
        For Each fila As Data.DataRow In tabla.Rows
            clbEspecialidades.SetItemChecked(fila.Item("idEspecialidad") - 1, True)
        Next





    End Sub





    Private Sub cmdEspecialidades_Click(sender As Object, e As EventArgs)
        clbEspecialidades.Items.Clear()
        Dim tabla As Data.DataTable = BDHelper2.GetEspecialidades()
        For Each fila As DataRow In tabla.Rows
            clbEspecialidades.Items.Add(fila.Item("nombre"))
        Next

    End Sub

    Private Sub cmdAgregarEspecialidad_Click(sender As Object, e As EventArgs) Handles cmdAgregarEspecialidad.Click
        frmAgregarEspecialidad.ShowDialog()
        clbEspecialidades.Items.Clear()
        Dim tabla As Data.DataTable = BDHelper2.GetEspecialidades()
        For Each fila As DataRow In tabla.Rows
            clbEspecialidades.Items.Add(fila.Item("nombre"))
        Next

    End Sub

    Private Sub txtLegajo_LostFocus(sender As Object, e As EventArgs) Handles txtLegajo.LostFocus
        If txtLegajo.Text = String.Empty Then
            MsgBox("Inserte un valor para el legajo")
        End If
    End Sub





End Class