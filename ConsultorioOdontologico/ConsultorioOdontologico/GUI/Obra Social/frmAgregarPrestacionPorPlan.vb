Public Class frmAgregarPrestacionPorPlan

    Private Sub frmObraSocial_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbOS, BDHelper2.GetObraSocialSinNT(), "idOS", "nombre")
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
        Dim param As New List(Of Object)
        param.Add(cmbOS.SelectedValue)
        param.Add(cmbPlan.SelectedValue)
        param.Add(cmbPrestacion.SelectedValue)
        param.Add(txtMontoCubierto.Text)


        If BDHelper2.validarDatos(param.ToArray()) = True Then

            Dim str As String = "INSERT INTO PrestacionesPorPlan (idPlan, idObraSocial,idPrestacion,montoCubierto) VALUES ("
            str += cmbPlan.SelectedValue & "," & cmbOS.SelectedValue & "," & cmbPrestacion.SelectedValue & "," & txtMontoCubierto.Text & ")"


            BDHelper2.agregarPrestacionPorPlan(str)


            MsgBox("La prestacion se ha registrado")
            CargarCombo(cmbPrestacion, BDHelper2.GetPrestacionesPorPlan(OSSel, PlanSel), "idPrestacion", "nombre")

        End If

    End Sub

    
    Private Sub cmdAgregarPI_Click(sender As Object, e As EventArgs) Handles cmdAgregarPI.Click
        frmAgregarPrestacionInexistente.ShowDialog()
    End Sub



    Private Sub cmbPlan_SelectionChangeCommitted(sender As Object, e As EventArgs) Handles cmbPlan.SelectionChangeCommitted
        Dim OSSel = cmbOS.SelectedIndex + 1
        Dim PlanSel = cmbPlan.SelectedIndex + 1


        CargarCombo(cmbPrestacion, BDHelper2.GetPrestacionesPorPlan(OSSel, PlanSel), "idPrestacion", "nombre")

    End Sub
End Class