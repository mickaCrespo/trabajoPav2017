<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAgregarHC
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
        Me.cmbPrestaciones = New System.Windows.Forms.ComboBox()
        Me.cmbUbicacion = New System.Windows.Forms.ComboBox()
        Me.cmbTipoDiente = New System.Windows.Forms.ComboBox()
        Me.lblPrestacion = New System.Windows.Forms.Label()
        Me.lblUbicacion = New System.Windows.Forms.Label()
        Me.lblTipoDiente = New System.Windows.Forms.Label()
        Me.rtxtObservaciones = New System.Windows.Forms.RichTextBox()
        Me.lblObservaciones = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(378, 249)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregar.TabIndex = 0
        Me.cmdAgregar.Text = "Agregar"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'cmbPrestaciones
        '
        Me.cmbPrestaciones.FormattingEnabled = True
        Me.cmbPrestaciones.Location = New System.Drawing.Point(136, 23)
        Me.cmbPrestaciones.Name = "cmbPrestaciones"
        Me.cmbPrestaciones.Size = New System.Drawing.Size(147, 21)
        Me.cmbPrestaciones.TabIndex = 1
        '
        'cmbUbicacion
        '
        Me.cmbUbicacion.FormattingEnabled = True
        Me.cmbUbicacion.Location = New System.Drawing.Point(136, 60)
        Me.cmbUbicacion.Name = "cmbUbicacion"
        Me.cmbUbicacion.Size = New System.Drawing.Size(147, 21)
        Me.cmbUbicacion.TabIndex = 2
        '
        'cmbTipoDiente
        '
        Me.cmbTipoDiente.FormattingEnabled = True
        Me.cmbTipoDiente.Location = New System.Drawing.Point(136, 97)
        Me.cmbTipoDiente.Name = "cmbTipoDiente"
        Me.cmbTipoDiente.Size = New System.Drawing.Size(147, 21)
        Me.cmbTipoDiente.TabIndex = 3
        '
        'lblPrestacion
        '
        Me.lblPrestacion.AutoSize = True
        Me.lblPrestacion.Location = New System.Drawing.Point(20, 26)
        Me.lblPrestacion.Name = "lblPrestacion"
        Me.lblPrestacion.Size = New System.Drawing.Size(57, 13)
        Me.lblPrestacion.TabIndex = 4
        Me.lblPrestacion.Text = "Prestacion"
        '
        'lblUbicacion
        '
        Me.lblUbicacion.AutoSize = True
        Me.lblUbicacion.Location = New System.Drawing.Point(22, 63)
        Me.lblUbicacion.Name = "lblUbicacion"
        Me.lblUbicacion.Size = New System.Drawing.Size(55, 13)
        Me.lblUbicacion.TabIndex = 5
        Me.lblUbicacion.Text = "Ubicacion"
        '
        'lblTipoDiente
        '
        Me.lblTipoDiente.AutoSize = True
        Me.lblTipoDiente.Location = New System.Drawing.Point(22, 100)
        Me.lblTipoDiente.Name = "lblTipoDiente"
        Me.lblTipoDiente.Size = New System.Drawing.Size(38, 13)
        Me.lblTipoDiente.TabIndex = 6
        Me.lblTipoDiente.Text = "Diente"
        '
        'rtxtObservaciones
        '
        Me.rtxtObservaciones.Location = New System.Drawing.Point(136, 133)
        Me.rtxtObservaciones.Name = "rtxtObservaciones"
        Me.rtxtObservaciones.Size = New System.Drawing.Size(317, 96)
        Me.rtxtObservaciones.TabIndex = 7
        Me.rtxtObservaciones.Text = ""
        '
        'lblObservaciones
        '
        Me.lblObservaciones.AutoSize = True
        Me.lblObservaciones.Location = New System.Drawing.Point(22, 136)
        Me.lblObservaciones.Name = "lblObservaciones"
        Me.lblObservaciones.Size = New System.Drawing.Size(78, 13)
        Me.lblObservaciones.TabIndex = 8
        Me.lblObservaciones.Text = "Observaciones"
        '
        'frmAgregarHC
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(474, 292)
        Me.Controls.Add(Me.lblObservaciones)
        Me.Controls.Add(Me.rtxtObservaciones)
        Me.Controls.Add(Me.lblTipoDiente)
        Me.Controls.Add(Me.lblUbicacion)
        Me.Controls.Add(Me.lblPrestacion)
        Me.Controls.Add(Me.cmbTipoDiente)
        Me.Controls.Add(Me.cmbUbicacion)
        Me.Controls.Add(Me.cmbPrestaciones)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Name = "frmAgregarHC"
        Me.Text = "frmAgregarHC"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents cmbPrestaciones As System.Windows.Forms.ComboBox
    Friend WithEvents cmbUbicacion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbTipoDiente As System.Windows.Forms.ComboBox
    Friend WithEvents lblPrestacion As System.Windows.Forms.Label
    Friend WithEvents lblUbicacion As System.Windows.Forms.Label
    Friend WithEvents lblTipoDiente As System.Windows.Forms.Label
    Friend WithEvents rtxtObservaciones As System.Windows.Forms.RichTextBox
    Friend WithEvents lblObservaciones As System.Windows.Forms.Label
End Class
