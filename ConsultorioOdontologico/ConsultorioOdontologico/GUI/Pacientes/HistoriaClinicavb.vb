Public Class frmHistoriaClinicavb







    Private Sub frmHistoriaClinicavb_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim dni As Integer = frmABMPacientes.dgvPacientes.CurrentRow.Cells(0).Value
        llenarGridHC(BDHelper2.GetHistoriasClinicas(dni))
        llenarGridEnfermedades(BDHelper2.GetEnfermedadesDePaciente(dni))
        llenarGridAlergias(BDHelper2.GetAlergiasDePaciente(dni))


    End Sub

    Private Sub llenarGridHC(ByVal source As Data.DataTable)

        dgvHC.Rows.Clear()
        For Each fila As DataRow In source.Rows
            dgvHC.Rows.Add(New String() {fila.Item("fecha"), fila.Item("idPrestacion"), fila.Item("nombrePrestacion"), fila.Item("idUbicacion"), fila.Item("descripcion"), fila.Item("idTipo"), fila.Item("nombreTipo"), fila.Item("observaciones")})

        Next

    End Sub

    Private Sub llenarGridEnfermedades(ByVal source As Data.DataTable)

        dgvEnfermedades.Rows.Clear()
        For Each fila As DataRow In source.Rows
            dgvEnfermedades.Rows.Add(New String() {fila.Item("idEnfermedad"), fila.Item("nombre"), fila.Item("descripcion")})

        Next

    End Sub

    Private Sub llenarGridAlergias(ByVal source As Data.DataTable)
        dgvAlergias.Rows.Clear()

        For Each fila As DataRow In source.Rows
            dgvAlergias.Rows.Add(New String() {fila.Item("idAlergia"), fila.Item("nombre"), fila.Item("descripcion")})

        Next

    End Sub

    Private Sub cmdAgregrarAlergia_Click(sender As Object, e As EventArgs) Handles cmdAgregrarAlergia.Click
        frmAgregrAlergiaAPaciente.ShowDialog()
        llenarGridAlergias(BDHelper2.GetAlergiasDePaciente(frmABMPacientes.dgvPacientes.CurrentRow.Cells(0).Value))
    End Sub

    Private Sub cmdAgregarEnfermedad_Click(sender As Object, e As EventArgs) Handles cmdAgregarEnfermedad.Click
        frmAgregarEnfermedadAPaciente.ShowDialog()
        llenarGridEnfermedades(BDHelper2.GetEnfermedadesDePaciente(frmABMPacientes.dgvPacientes.CurrentRow.Cells(0).Value))

    End Sub


    Private Sub cmdAgregrarHC_Click(sender As Object, e As EventArgs) Handles cmdAgregrarHC.Click
        frmAgregarHC.ShowDialog()
        llenarGridHC(BDHelper2.GetHistoriasClinicas(frmABMPacientes.dgvPacientes.CurrentRow.Cells(0).Value))
    End Sub

    Private Sub frmHistoriaClinicavb_FormClosing1(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Me.Hide()
        frmABMPacientes.Show()
    End Sub
End Class