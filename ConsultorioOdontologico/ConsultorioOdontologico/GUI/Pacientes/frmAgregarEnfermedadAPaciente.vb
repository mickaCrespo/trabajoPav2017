Public Class frmAgregarEnfermedadAPaciente

    Private Sub frmAgregarEnfermedadAPaciente_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbEnfermedades, BDHelper2.GetEnfermedades(), "idEnfermedades", "nombre")
    End Sub

    Private Sub CargarCombo(ByRef combo As ComboBox, ByRef datos As Data.DataTable, ByVal pk As String, ByVal descripcion As String)

        combo.DataSource = datos
        combo.ValueMember = pk
        combo.DisplayMember = descripcion
        combo.SelectedIndex = -1

    End Sub

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click
        Dim index As New List(Of Object)
        index.Add(cmbEnfermedades.SelectedValue)

        If BDHelper2.validarCombos(index.ToArray()) = True Then
            Dim dni As Integer = frmABMPacientes.dgvPacientes.CurrentRow.Cells(0).Value
            Dim str As String = "INSERT INTO EnfermedadesXPaciente(dniPaciente,idEnfermedad,descripcion) VALUES("
            str += dni & "," & (cmbEnfermedades.SelectedIndex + 1) & ",'" & rtxtDescripcion.Text & "')"

            BDHelper2.agregarAlergiaAPaciente(str)
            MsgBox("La enfermedad ha sido agregada.")
            rtxtDescripcion.Text = ""

        End If
    End Sub





    Private Sub cmdAgregarNuevo_Click(sender As Object, e As EventArgs) Handles cmdAgregarNuevo.Click
        frmAgregarEnfermedadInexistente.ShowDialog()
        CargarCombo(cmbEnfermedades, BDHelper2.GetEnfermedades(), "idEnfermedades", "nombre")


    End Sub


End Class