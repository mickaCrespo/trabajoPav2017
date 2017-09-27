<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ABMEspecialidades
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
        Me.lblLegajo = New System.Windows.Forms.Label()
        Me.lblEspecialidades = New System.Windows.Forms.Label()
        Me.grvEspecialidadesPorMedico = New System.Windows.Forms.DataGridView()
        Me.txtLegajo = New System.Windows.Forms.TextBox()
        Me.cmbEspecialidades = New System.Windows.Forms.ComboBox()
        Me.cmdConsultar = New System.Windows.Forms.Button()
        Me.cmdAgregar = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        CType(Me.grvEspecialidadesPorMedico, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'lblLegajo
        '
        Me.lblLegajo.AutoSize = True
        Me.lblLegajo.Location = New System.Drawing.Point(23, 30)
        Me.lblLegajo.Name = "lblLegajo"
        Me.lblLegajo.Size = New System.Drawing.Size(39, 13)
        Me.lblLegajo.TabIndex = 0
        Me.lblLegajo.Text = "Legajo"
        '
        'lblEspecialidades
        '
        Me.lblEspecialidades.AutoSize = True
        Me.lblEspecialidades.Location = New System.Drawing.Point(23, 67)
        Me.lblEspecialidades.Name = "lblEspecialidades"
        Me.lblEspecialidades.Size = New System.Drawing.Size(67, 13)
        Me.lblEspecialidades.TabIndex = 1
        Me.lblEspecialidades.Text = "Especialidad"
        '
        'grvEspecialidadesPorMedico
        '
        Me.grvEspecialidadesPorMedico.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grvEspecialidadesPorMedico.Location = New System.Drawing.Point(12, 122)
        Me.grvEspecialidadesPorMedico.Name = "grvEspecialidadesPorMedico"
        Me.grvEspecialidadesPorMedico.Size = New System.Drawing.Size(325, 95)
        Me.grvEspecialidadesPorMedico.TabIndex = 2
        '
        'txtLegajo
        '
        Me.txtLegajo.Location = New System.Drawing.Point(130, 27)
        Me.txtLegajo.Name = "txtLegajo"
        Me.txtLegajo.Size = New System.Drawing.Size(121, 20)
        Me.txtLegajo.TabIndex = 3
        '
        'cmbEspecialidades
        '
        Me.cmbEspecialidades.FormattingEnabled = True
        Me.cmbEspecialidades.Location = New System.Drawing.Point(130, 59)
        Me.cmbEspecialidades.Name = "cmbEspecialidades"
        Me.cmbEspecialidades.Size = New System.Drawing.Size(121, 21)
        Me.cmbEspecialidades.TabIndex = 4
        '
        'cmdConsultar
        '
        Me.cmdConsultar.Location = New System.Drawing.Point(275, 25)
        Me.cmdConsultar.Name = "cmdConsultar"
        Me.cmdConsultar.Size = New System.Drawing.Size(75, 23)
        Me.cmdConsultar.TabIndex = 5
        Me.cmdConsultar.Text = "Consultar"
        Me.cmdConsultar.UseVisualStyleBackColor = True
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(12, 249)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(122, 23)
        Me.cmdAgregar.TabIndex = 6
        Me.cmdAgregar.Text = "Agregar Especialidad"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(235, 233)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(115, 39)
        Me.Button1.TabIndex = 7
        Me.Button1.Text = "Agregar Especialidad Inexistente"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'ABMEspecialidades
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(362, 284)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Controls.Add(Me.cmdConsultar)
        Me.Controls.Add(Me.cmbEspecialidades)
        Me.Controls.Add(Me.txtLegajo)
        Me.Controls.Add(Me.grvEspecialidadesPorMedico)
        Me.Controls.Add(Me.lblEspecialidades)
        Me.Controls.Add(Me.lblLegajo)
        Me.Name = "ABMEspecialidades"
        Me.Text = "Especialidades"
        CType(Me.grvEspecialidadesPorMedico, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lblLegajo As System.Windows.Forms.Label
    Friend WithEvents lblEspecialidades As System.Windows.Forms.Label
    Friend WithEvents grvEspecialidadesPorMedico As System.Windows.Forms.DataGridView
    Friend WithEvents txtLegajo As System.Windows.Forms.TextBox
    Friend WithEvents cmbEspecialidades As System.Windows.Forms.ComboBox
    Friend WithEvents cmdConsultar As System.Windows.Forms.Button
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
End Class
