Public Class frmAgregarPlanesEnObraSocial

    Private Sub frmAgregarPlanesEnObraSocial_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarCombo(cmbOS, BDHelper2.GetObraSocialSinNT(), "idOS", "nombre")
        txtNombrePlan.Text = ""
    End Sub

    Private Sub CargarCombo(ByRef combo As ComboBox, ByRef datos As Data.DataTable, ByVal pk As String, ByVal descripcion As String)

        combo.DataSource = datos
        combo.ValueMember = pk
        combo.DisplayMember = descripcion
        combo.SelectedIndex = -1

    End Sub

    Private Sub cmdAgregar_Click(sender As Object, e As EventArgs) Handles cmdAgregar.Click
        Dim param As New List(Of Object)
        Dim index As New List(Of Object)
        index.Add(cmbOS.SelectedValue)
        param.Add(txtNombrePlan.Text)

        If BDHelper2.validarCombos(index.ToArray()) = True Then
            If BDHelper2.validarDatos(param.ToArray()) = True Then
                If BDHelper2.validarQueNoEsteEn(txtNombrePlan.Text, BDHelper2.GetPlan(cmbOS.SelectedValue)) = True Then

                    Dim id As Integer = BDHelper2.GetPlan(cmbOS.SelectedValue).Rows.Count + 1
                    Dim str As String = "INSERT INTO Planes (idPlan, idObraSocial,nombre) VALUES ("
                    str += id & ", " & cmbOS.SelectedValue & ",'" & txtNombrePlan.Text & "')"


                    BDHelper2.agregarPlan(str)
                    MsgBox("El plan se ha registrado")
                End If
            End If
        End If

    End Sub
End Class