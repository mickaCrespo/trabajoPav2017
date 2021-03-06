﻿Public Class frmAgregarHC

    Private Sub frmAgregarHC_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbPrestaciones, BDHelper2.GetPrestaciones(), "idPrestacion", "nombre")
        CargarCombo(cmbUbicacion, BDHelper2.GetUbicaciones(), "idUbicacion", "descripcion")
        CargarCombo(cmbTipoDiente, BDHelper2.GetTipos(), "idTipo", "nombre")
        rtxtObservaciones.Text = ""

    End Sub

    Private Sub CargarCombo(ByRef combo As ComboBox, ByRef datos As Data.DataTable, ByVal pk As String, ByVal descripcion As String)

        combo.DataSource = datos
        combo.ValueMember = pk
        combo.DisplayMember = descripcion
        combo.SelectedIndex = -1

    End Sub

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim index As New List(Of Object)

        index.Add(cmbPrestaciones.SelectedIndex)
        index.Add(cmbUbicacion.SelectedIndex)
        index.Add(cmbTipoDiente.SelectedIndex)


        If BDHelper2.validarCombos(index.ToArray()) = True Then

            Dim dni As Integer = frmABMPacientes.dgvPacientes.CurrentRow.Cells(0).Value
            Dim str As String = "INSERT INTO HistoriaClinica(dniPaciente,idPrestacion,fecha,idUbicacion,idTipo,observaciones) VALUES( "
            str += dni & "," & (cmbPrestaciones.SelectedIndex + 1) & ", GETDATE()," & cmbUbicacion.SelectedIndex & "," & cmbTipoDiente.SelectedIndex & ",'" & rtxtObservaciones.Text & "')"

            BDHelper2.agregarHCAPaciente(str)
            MsgBox("La entrada ha sido agregada.")

        End If
    End Sub

    Private Sub cmbPrestaciones_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbPrestaciones.SelectedIndexChanged

    End Sub
End Class