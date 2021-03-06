﻿Public Class frmAgregarPrestacionPorPlan

    Private Sub frmObraSocial_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbOS, BDHelper2.GetObraSocialSinNT(), "idOS", "nombre")
        cmbPlan.Refresh()
        txtMontoCubierto.Text = ""
    End Sub

    Private Sub CargarCombo(ByRef combo As ComboBox, ByRef datos As Data.DataTable, ByVal pk As String, ByVal descripcion As String)

        combo.DataSource = datos
        combo.ValueMember = pk
        combo.DisplayMember = descripcion
        combo.SelectedIndex = -1

    End Sub

    Private Sub cmbOS_SelectionChangedCommit(sender As Object, e As EventArgs) Handles cmbOS.SelectionChangeCommitted

        CargarCombo(cmbPlan, BDHelper2.GetPlan(cmbOS.SelectedIndex + 1), "idPlan", "nombre")

    End Sub



    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click

        Dim OSSel = cmbOS.SelectedIndex + 1
        Dim PlanSel = cmbPlan.SelectedIndex + 1
        Dim index As New List(Of Object)
        Dim param As New List(Of Object)
        index.Add(cmbOS.SelectedValue)
        index.Add(cmbPlan.SelectedValue)
        index.Add(cmbPrestacion.SelectedValue)
        param.Add(txtMontoCubierto.Text)

        If BDHelper2.validarDatos(param.ToArray) = True Then
            If BDHelper2.validarCombos(index.ToArray()) = True Then
                If BDHelper2.validarMonto(cmbPrestacion.Text, txtMontoCubierto.Text) = True Then

                    Dim str As String = "INSERT INTO PrestacionesPorPlan (idPlan, idObraSocial,idPrestacion,montoCubierto, activo) VALUES ("
                    str += cmbPlan.SelectedValue & "," & cmbOS.SelectedValue & "," & cmbPrestacion.SelectedValue & "," & txtMontoCubierto.Text & ",'T')"


                    BDHelper2.agregarPrestacionPorPlan(str)


                    MsgBox("La prestacion se ha registrado")
                    CargarCombo(cmbPrestacion, BDHelper2.GetPrestacionesNotInPlan(OSSel, PlanSel), "idPrestacion", "nombre")

                End If
            End If
        End If
    End Sub

    
    Private Sub cmdAgregarPI_Click(sender As Object, e As EventArgs) Handles cmdAgregarPI.Click
        frmAgregarPrestacionInexistente.ShowDialog()
    End Sub



    Private Sub cmbPlan_SelectionChangeCommitted(sender As Object, e As EventArgs) Handles cmbPlan.SelectionChangeCommitted
        Dim OSSel = cmbOS.SelectedIndex + 1
        Dim PlanSel = cmbPlan.SelectedIndex + 1


        CargarCombo(cmbPrestacion, BDHelper2.GetPrestacionesNotInPlan(OSSel, PlanSel), "idPrestacion", "nombre")

    End Sub
End Class