Public Class frmAgregarHCCompleta

    Private Sub frmAgregarHCCompleta_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbEnfermedades, BDHelper2.GetEnfermedades(), "idEnfermedades", "nombre")
        CargarCombo(cmbAlergias, BDHelper2.GetAlergias(), "idAlergia", "nombre")
        CargarCombo(cmbPrestaciones, BDHelper2.GetPrestaciones(), "idPrestacion", "nombre")
        CargarCombo(cmbUbicacion, BDHelper2.GetUbicaciones(), "idUbicacion", "descripcion")
        CargarCombo(cmbTipoDiente, BDHelper2.GetTipos(), "idTipo", "nombre")
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
End Class