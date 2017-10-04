Public Class frmMenu

    Private Sub SalirToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub cmdPacientes_Click(sender As Object, e As EventArgs) Handles cmdPacientes.Click
        frmABMPacientes.ShowDialog()
    End Sub

    Private Sub cmdOdontologos_Click(sender As Object, e As EventArgs) Handles cmdOdontologos.Click
        frmABMOdontologos.ShowDialog()
    End Sub

    Private Sub cmdOS_Click(sender As Object, e As EventArgs) Handles cmdOS.Click
        frmObraSocial.ShowDialog()
    End Sub



    Private Sub frmMenu_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class