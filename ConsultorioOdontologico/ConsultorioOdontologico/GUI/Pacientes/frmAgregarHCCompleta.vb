Public Class frmAgregarHCCompleta

    Dim dni As Integer = frmABMPacientes.dgvPacientes.CurrentRow.Cells(0).Value

    Private Sub frmAgregarHCCompleta_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbEnfermedades, BDHelper2.GetEnfermedades(), "idEnfermedades", "nombre")
        CargarCombo(cmbAlergias, BDHelper2.GetAlergias(), "idAlergia", "nombre")
        CargarCombo(cmbPrestaciones, BDHelper2.GetPrestaciones(), "idPrestacion", "nombre")
        CargarCombo(cmbUbicacion, BDHelper2.GetUbicaciones(), "idUbicacion", "descripcion")
        CargarCombo(cmbTipoDiente, BDHelper2.GetTipos(), "idTipo", "nombre")
        dgvHC.Rows.Clear()
        dgvEnfermedades.Rows.Clear()
        dgvAlergias.Rows.Clear()
    End Sub

    Private Sub lblPrestacion_Click(sender As Object, e As EventArgs) Handles lblPrestacion.Click

    End Sub

    Private Sub CargarCombo(ByRef combo As ComboBox, ByRef datos As Data.DataTable, ByVal pk As String, ByVal descripcion As String)

        combo.DataSource = datos
        combo.ValueMember = pk
        combo.DisplayMember = descripcion
        combo.SelectedIndex = -1

    End Sub


    Private Sub cmdAgregarNuevo_Click(sender As Object, e As EventArgs) Handles cmdAgregarNuevoDiagnostico.Click
        frmAgregarEnfermedadInexistente.ShowDialog()
        CargarCombo(cmbEnfermedades, BDHelper2.GetEnfermedades(), "idEnfermedades", "nombre")
    End Sub


    Private Sub cmdAgregarNuevaAlergia_Click(sender As Object, e As EventArgs) Handles cmdAgregarNuevaAlergia.Click
        frmAgregarAlergiaInexistente.ShowDialog()
        CargarCombo(cmbAlergias, BDHelper2.GetAlergias(), "idAlergia", "nombre")
    End Sub


    Private Sub cmdAgregarHC_Click(sender As Object, e As EventArgs) Handles cmdAgregarHC.Click
        dgvHC.Rows.Add(New String() {Date.Now, cmbPrestaciones.SelectedValue, cmbPrestaciones.Text, cmbUbicacion.SelectedValue, cmbUbicacion.Text, cmbTipoDiente.SelectedValue, cmbTipoDiente.Text, rtxtObservaciones.Text})
        MsgBox(dgvHC.Rows(0).Cells("Observaciones").Value)
    End Sub

    Private Sub cmdAgregarDiagnosticos_Click(sender As Object, e As EventArgs) Handles cmdAgregarDiagnosticos.Click
        dgvEnfermedades.Rows.Add(New String() {cmbEnfermedades.SelectedValue, cmbEnfermedades.Text, rtxtDescripcion.Text})
    End Sub

    Private Sub cmdAgregarAlergias_Click(sender As Object, e As EventArgs) Handles cmdAgregarAlergias.Click
        dgvAlergias.Rows.Add(New String() {cmbAlergias.SelectedValue, cmbAlergias.Text, rtxtDescripcionAlergias.Text})
    End Sub

    Private Sub agregarHC(ByVal str As String)
        Dim c As Integer = 0
        str = " INSERT INTO HistoriaClinica(dniPaciente,fecha,idPrestacion,idUbicacion,idTipo,observaciones) VALUES( "

        For c = 0 To dgvHC.RowCount() - 1
            str += dni & ", GETDATE(), " & dgvHC.Rows(c).Cells("idPrestacion").Value & "," & dgvHC.Rows(c).Cells("idUbicacion").Value & "," & dgvHC.Rows(c).Cells("idTipo").Value & ",'" & dgvHC.Rows(c).Cells("Observaciones") & "')"

        Next
    End Sub

    Private Sub cmdGuardarCambios_Click(sender As Object, e As EventArgs) Handles cmdGuardarCambios.Click
        Dim str As String = ""

        agregarHC(str)
    End Sub
End Class