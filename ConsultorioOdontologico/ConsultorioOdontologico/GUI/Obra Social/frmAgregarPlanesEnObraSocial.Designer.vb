<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAgregarPlanesEnObraSocial
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.cmdAgregar = New System.Windows.Forms.Button()
        Me.lblOS = New System.Windows.Forms.Label()
        Me.lblNombrePlan = New System.Windows.Forms.Label()
        Me.cmbOS = New System.Windows.Forms.ComboBox()
        Me.txtNombrePlan = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(189, 150)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregar.TabIndex = 0
        Me.cmdAgregar.Text = "Agregar"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'lblOS
        '
        Me.lblOS.AutoSize = True
        Me.lblOS.Location = New System.Drawing.Point(24, 35)
        Me.lblOS.Name = "lblOS"
        Me.lblOS.Size = New System.Drawing.Size(62, 13)
        Me.lblOS.TabIndex = 1
        Me.lblOS.Text = "Obra Social"
        '
        'lblNombrePlan
        '
        Me.lblNombrePlan.AutoSize = True
        Me.lblNombrePlan.Location = New System.Drawing.Point(24, 96)
        Me.lblNombrePlan.Name = "lblNombrePlan"
        Me.lblNombrePlan.Size = New System.Drawing.Size(85, 13)
        Me.lblNombrePlan.TabIndex = 2
        Me.lblNombrePlan.Text = "Nombre del Plan"
        '
        'cmbOS
        '
        Me.cmbOS.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbOS.FormattingEnabled = True
        Me.cmbOS.Location = New System.Drawing.Point(143, 32)
        Me.cmbOS.Name = "cmbOS"
        Me.cmbOS.Size = New System.Drawing.Size(121, 21)
        Me.cmbOS.TabIndex = 3
        '
        'txtNombrePlan
        '
        Me.txtNombrePlan.Location = New System.Drawing.Point(143, 96)
        Me.txtNombrePlan.Name = "txtNombrePlan"
        Me.txtNombrePlan.Size = New System.Drawing.Size(121, 20)
        Me.txtNombrePlan.TabIndex = 4
        '
        'frmAgregarPlanesEnObraSocial
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(298, 202)
        Me.Controls.Add(Me.txtNombrePlan)
        Me.Controls.Add(Me.cmbOS)
        Me.Controls.Add(Me.lblNombrePlan)
        Me.Controls.Add(Me.lblOS)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Name = "frmAgregarPlanesEnObraSocial"
        Me.Text = "Agregar Planes"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents lblOS As System.Windows.Forms.Label
    Friend WithEvents lblNombrePlan As System.Windows.Forms.Label
    Friend WithEvents cmbOS As System.Windows.Forms.ComboBox
    Friend WithEvents txtNombrePlan As System.Windows.Forms.TextBox
End Class
