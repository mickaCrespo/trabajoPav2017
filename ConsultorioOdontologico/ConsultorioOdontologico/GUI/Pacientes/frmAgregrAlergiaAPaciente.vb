Public Class frmAgregrAlergiaAPaciente

    Private Sub frmAgregrAlergiaAPaciente_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbAlergias, BDHelper2.GetAlergias(), "idAlergia", "nombre")
    End Sub

    Private Sub CargarCombo(ByRef combo As ComboBox, ByRef datos As Data.DataTable, ByVal pk As String, ByVal descripcion As String)

        combo.DataSource = datos
        combo.ValueMember = pk
        combo.DisplayMember = descripcion
        combo.SelectedIndex = -1

    End Sub

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click
        Dim param As New List(Of Object)
        param.Add(cmbAlergias.SelectedValue)

        If BDHelper2.validarDatos(param.ToArray()) = True Then
            Dim dni As Integer = frmABMPacientes.dgvPacientes.CurrentRow.Cells(0).Value
            Dim str As String = "INSERT INTO AlergiasXPaciente(dniPaciente,idAlergia,descripcion) VALUES("
            str += dni & "," & (cmbAlergias.SelectedIndex + 1) & ",'" & rtxtDescripcion.Text & "')"

            BDHelper2.agregarAlergiaAPaciente(str)
            MsgBox("La alergia ha sido agregada.")
        End If
    End Sub


    Private Sub cmdAgregarNuevo_Click(sender As Object, e As EventArgs) Handles cmdAgregarNuevo.Click
        frmAgregarAlergiaInexistente.ShowDialog()
        CargarCombo(cmbAlergias, BDHelper2.GetAlergias(), "idAlergia", "nombre")
    End Sub
End Class