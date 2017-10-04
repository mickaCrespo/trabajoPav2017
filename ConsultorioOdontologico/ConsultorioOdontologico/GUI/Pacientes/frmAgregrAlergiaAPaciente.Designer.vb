<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAgregrAlergiaAPaciente
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
        Me.lblNombre = New System.Windows.Forms.Label()
        Me.lblDescripcion = New System.Windows.Forms.Label()
        Me.cmbAlergias = New System.Windows.Forms.ComboBox()
        Me.rtxtDescripcion = New System.Windows.Forms.RichTextBox()
        Me.cmdAgregar = New System.Windows.Forms.Button()
        Me.cmdAgregarNuevo = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lblNombre
        '
        Me.lblNombre.AutoSize = True
        Me.lblNombre.Location = New System.Drawing.Point(11, 27)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(51, 13)
        Me.lblNombre.TabIndex = 0
        Me.lblNombre.Text = "* Nombre"
        '
        'lblDescripcion
        '
        Me.lblDescripcion.AutoSize = True
        Me.lblDescripcion.Location = New System.Drawing.Point(11, 95)
        Me.lblDescripcion.Name = "lblDescripcion"
        Me.lblDescripcion.Size = New System.Drawing.Size(63, 13)
        Me.lblDescripcion.TabIndex = 1
        Me.lblDescripcion.Text = "Descripcion"
        '
        'cmbAlergias
        '
        Me.cmbAlergias.FormattingEnabled = True
        Me.cmbAlergias.Location = New System.Drawing.Point(97, 29)
        Me.cmbAlergias.Name = "cmbAlergias"
        Me.cmbAlergias.Size = New System.Drawing.Size(121, 21)
        Me.cmbAlergias.TabIndex = 2
        '
        'rtxtDescripcion
        '
        Me.rtxtDescripcion.Location = New System.Drawing.Point(97, 95)
        Me.rtxtDescripcion.Name = "rtxtDescripcion"
        Me.rtxtDescripcion.Size = New System.Drawing.Size(251, 96)
        Me.rtxtDescripcion.TabIndex = 3
        Me.rtxtDescripcion.Text = ""
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(273, 211)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregar.TabIndex = 4
        Me.cmdAgregar.Text = "Agregar"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'cmdAgregarNuevo
        '
        Me.cmdAgregarNuevo.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdAgregarNuevo.Location = New System.Drawing.Point(224, 27)
        Me.cmdAgregarNuevo.Name = "cmdAgregarNuevo"
        Me.cmdAgregarNuevo.Size = New System.Drawing.Size(23, 23)
        Me.cmdAgregarNuevo.TabIndex = 5
        Me.cmdAgregarNuevo.Text = "+"
        Me.cmdAgregarNuevo.UseVisualStyleBackColor = True
        '
        'frmAgregrAlergiaAPaciente
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(377, 246)
        Me.Controls.Add(Me.cmdAgregarNuevo)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Controls.Add(Me.rtxtDescripcion)
        Me.Controls.Add(Me.cmbAlergias)
        Me.Controls.Add(Me.lblDescripcion)
        Me.Controls.Add(Me.lblNombre)
        Me.Name = "frmAgregrAlergiaAPaciente"
        Me.Text = "Nueva Alergia"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lblNombre As System.Windows.Forms.Label
    Friend WithEvents lblDescripcion As System.Windows.Forms.Label
    Friend WithEvents cmbAlergias As System.Windows.Forms.ComboBox
    Friend WithEvents rtxtDescripcion As System.Windows.Forms.RichTextBox
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents cmdAgregarNuevo As System.Windows.Forms.Button
End Class
