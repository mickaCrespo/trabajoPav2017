Public Class frmMenu

    Private Sub SalirToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles cmdPacientes.Click
        frmABMPacientes.ShowDialog()
    End Sub
End Class