Public Class frmObraSocial




    Private Sub frmObraSocial_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbNombreOS, BDHelper2.GetObraSocialSinNT(), "idOS", "nombre")


    End Sub

    Private Sub CargarCombo(ByRef combo As ComboBox, ByRef datos As Data.DataTable, ByVal pk As String, ByVal descripcion As String)

        combo.DataSource = datos
        combo.ValueMember = pk
        combo.DisplayMember = descripcion
        combo.SelectedIndex = -1

    End Sub

    ' Private Sub cmbNombreOS_SelectionChangedCommit(sender As Object, e As EventArgs) Handles cmbNombreOS.SelectionChangeCommitted

    '    CargarCombo(cmbNombrePlan, BDHelper2.GetPlan(cmbNombreOS.SelectedIndex), "idPlan", "nombre")
    '  End Sub

    Private Sub cmbNombrePlan_SelectionChangedCommit(sender As Object, e As EventArgs) Handles cmbNombrePlan.SelectionChangeCommitted
        Dim idPlan As Integer = cmbNombrePlan.SelectedValue
        Dim idObraSocial As Integer = cmbNombreOS.SelectedValue
        llenarGrid(BDHelper2.GetPrestacionesParaGrilla(idPlan, idObraSocial))


    End Sub

    Private Sub llenarGrid(ByVal source As Data.DataTable)
        dgvPrestaciones.Rows.Clear()

        For Each fila As DataRow In source.Rows
            dgvPrestaciones.Rows.Add(New String() {fila.Item("idPlan"), fila.Item("idObraSocial"), fila.Item("idPrestacion"), fila.Item("nombre"), fila.Item("descripcion"), fila.Item("precio"), fila.Item("montoCubierto"), fila.Item("duracion")})
        Next

    End Sub



    Private Sub cmdAgregarPrestaciones_Click(sender As Object, e As EventArgs) Handles cmdAgregarPrestacion.Click
        frmAgregarPrestacionPorPlan.ShowDialog()

    End Sub

    Private Sub cmdActualizar_Click(sender As Object, e As EventArgs) Handles cmdActualizar.Click
        Dim idPlan As Integer = cmbNombrePlan.SelectedValue
        Dim idObraSocial As Integer = cmbNombreOS.SelectedValue
        llenarGrid(BDHelper2.GetPrestacionesParaGrilla(idPlan, idObraSocial))

    End Sub


    Private Sub cmdAgregarOS_Click(sender As Object, e As EventArgs) Handles cmdAgregarOS.Click
        frmAgregarObraSocial.ShowDialog()
        CargarCombo(cmbNombreOS, BDHelper2.GetObraSocial(), "idOS", "nombre")
    End Sub


    Private Sub cmdAgregarPlan_Click(sender As Object, e As EventArgs) Handles cmdAgregarPlan.Click
        frmAgregarPlanesEnObraSocial.ShowDialog()
    End Sub

    Private Sub cmbNombreOS_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbNombreOS.SelectedIndexChanged
        CargarCombo(cmbNombrePlan, BDHelper2.GetPlan(cmbNombreOS.SelectedIndex), "idPlan", "nombre")


    End Sub


End Class