<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAgregarPrestacionPorPlan
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
        Me.lblOS = New System.Windows.Forms.Label()
        Me.lblPlan = New System.Windows.Forms.Label()
        Me.lblPrestacion = New System.Windows.Forms.Label()
        Me.lblMontoCubierto = New System.Windows.Forms.Label()
        Me.cmbOS = New System.Windows.Forms.ComboBox()
        Me.cmbPlan = New System.Windows.Forms.ComboBox()
        Me.cmbPrestacion = New System.Windows.Forms.ComboBox()
        Me.txtMontoCubierto = New System.Windows.Forms.TextBox()
        Me.cmdAgregar = New System.Windows.Forms.Button()
        Me.cmdAgregarPI = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lblOS
        '
        Me.lblOS.AutoSize = True
        Me.lblOS.Location = New System.Drawing.Point(35, 41)
        Me.lblOS.Name = "lblOS"
        Me.lblOS.Size = New System.Drawing.Size(62, 13)
        Me.lblOS.TabIndex = 0
        Me.lblOS.Text = "Obra Social"
        '
        'lblPlan
        '
        Me.lblPlan.AutoSize = True
        Me.lblPlan.Location = New System.Drawing.Point(35, 87)
        Me.lblPlan.Name = "lblPlan"
        Me.lblPlan.Size = New System.Drawing.Size(28, 13)
        Me.lblPlan.TabIndex = 1
        Me.lblPlan.Text = "Plan"
        '
        'lblPrestacion
        '
        Me.lblPrestacion.AutoSize = True
        Me.lblPrestacion.Location = New System.Drawing.Point(35, 133)
        Me.lblPrestacion.Name = "lblPrestacion"
        Me.lblPrestacion.Size = New System.Drawing.Size(57, 13)
        Me.lblPrestacion.TabIndex = 2
        Me.lblPrestacion.Text = "Prestacion"
        '
        'lblMontoCubierto
        '
        Me.lblMontoCubierto.AutoSize = True
        Me.lblMontoCubierto.Location = New System.Drawing.Point(35, 178)
        Me.lblMontoCubierto.Name = "lblMontoCubierto"
        Me.lblMontoCubierto.Size = New System.Drawing.Size(82, 13)
        Me.lblMontoCubierto.TabIndex = 3
        Me.lblMontoCubierto.Text = "Monto Cubierto "
        '
        'cmbOS
        '
        Me.cmbOS.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbOS.FormattingEnabled = True
        Me.cmbOS.Location = New System.Drawing.Point(193, 33)
        Me.cmbOS.Name = "cmbOS"
        Me.cmbOS.Size = New System.Drawing.Size(121, 21)
        Me.cmbOS.TabIndex = 4
        '
        'cmbPlan
        '
        Me.cmbPlan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbPlan.FormattingEnabled = True
        Me.cmbPlan.Location = New System.Drawing.Point(193, 79)
        Me.cmbPlan.Name = "cmbPlan"
        Me.cmbPlan.Size = New System.Drawing.Size(121, 21)
        Me.cmbPlan.TabIndex = 5
        '
        'cmbPrestacion
        '
        Me.cmbPrestacion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbPrestacion.FormattingEnabled = True
        Me.cmbPrestacion.Location = New System.Drawing.Point(193, 125)
        Me.cmbPrestacion.Name = "cmbPrestacion"
        Me.cmbPrestacion.Size = New System.Drawing.Size(121, 21)
        Me.cmbPrestacion.TabIndex = 6
        '
        'txtMontoCubierto
        '
        Me.txtMontoCubierto.Location = New System.Drawing.Point(193, 178)
        Me.txtMontoCubierto.Name = "txtMontoCubierto"
        Me.txtMontoCubierto.Size = New System.Drawing.Size(121, 20)
        Me.txtMontoCubierto.TabIndex = 7
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(38, 249)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregar.TabIndex = 8
        Me.cmdAgregar.Text = "Agregar"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'cmdAgregarPI
        '
        Me.cmdAgregarPI.Location = New System.Drawing.Point(203, 238)
        Me.cmdAgregarPI.Name = "cmdAgregarPI"
        Me.cmdAgregarPI.Size = New System.Drawing.Size(144, 34)
        Me.cmdAgregarPI.TabIndex = 9
        Me.cmdAgregarPI.Text = "Agregar Prestacion Inexistente"
        Me.cmdAgregarPI.UseVisualStyleBackColor = True
        '
        'frmAgregarPrestacionPorPlan
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(362, 284)
        Me.Controls.Add(Me.cmdAgregarPI)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Controls.Add(Me.txtMontoCubierto)
        Me.Controls.Add(Me.cmbPrestacion)
        Me.Controls.Add(Me.cmbPlan)
        Me.Controls.Add(Me.cmbOS)
        Me.Controls.Add(Me.lblMontoCubierto)
        Me.Controls.Add(Me.lblPrestacion)
        Me.Controls.Add(Me.lblPlan)
        Me.Controls.Add(Me.lblOS)
        Me.Name = "frmAgregarPrestacionPorPlan"
        Me.Text = "Agregar Prestacion"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lblOS As System.Windows.Forms.Label
    Friend WithEvents lblPlan As System.Windows.Forms.Label
    Friend WithEvents lblPrestacion As System.Windows.Forms.Label
    Friend WithEvents lblMontoCubierto As System.Windows.Forms.Label
    Friend WithEvents cmbOS As System.Windows.Forms.ComboBox
    Friend WithEvents cmbPlan As System.Windows.Forms.ComboBox
    Friend WithEvents cmbPrestacion As System.Windows.Forms.ComboBox
    Friend WithEvents txtMontoCubierto As System.Windows.Forms.TextBox
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents cmdAgregarPI As System.Windows.Forms.Button
End Class
