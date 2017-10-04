<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAgregarEnfermedadAPaciente
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
        Me.cmdAgregarNuevo = New System.Windows.Forms.Button()
        Me.cmdAgregar = New System.Windows.Forms.Button()
        Me.rtxtDescripcion = New System.Windows.Forms.RichTextBox()
        Me.cmbEnfermedades = New System.Windows.Forms.ComboBox()
        Me.lblDescripcion = New System.Windows.Forms.Label()
        Me.lblNombre = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'cmdAgregarNuevo
        '
        Me.cmdAgregarNuevo.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdAgregarNuevo.Location = New System.Drawing.Point(233, 22)
        Me.cmdAgregarNuevo.Name = "cmdAgregarNuevo"
        Me.cmdAgregarNuevo.Size = New System.Drawing.Size(23, 23)
        Me.cmdAgregarNuevo.TabIndex = 11
        Me.cmdAgregarNuevo.Text = "+"
        Me.cmdAgregarNuevo.UseVisualStyleBackColor = True
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(282, 204)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregar.TabIndex = 10
        Me.cmdAgregar.Text = "Agregar"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'rtxtDescripcion
        '
        Me.rtxtDescripcion.Location = New System.Drawing.Point(106, 90)
        Me.rtxtDescripcion.Name = "rtxtDescripcion"
        Me.rtxtDescripcion.Size = New System.Drawing.Size(251, 96)
        Me.rtxtDescripcion.TabIndex = 9
        Me.rtxtDescripcion.Text = ""
        '
        'cmbEnfermedades
        '
        Me.cmbEnfermedades.FormattingEnabled = True
        Me.cmbEnfermedades.Location = New System.Drawing.Point(106, 24)
        Me.cmbEnfermedades.Name = "cmbEnfermedades"
        Me.cmbEnfermedades.Size = New System.Drawing.Size(121, 21)
        Me.cmbEnfermedades.TabIndex = 8
        '
        'lblDescripcion
        '
        Me.lblDescripcion.AutoSize = True
        Me.lblDescripcion.Location = New System.Drawing.Point(20, 90)
        Me.lblDescripcion.Name = "lblDescripcion"
        Me.lblDescripcion.Size = New System.Drawing.Size(63, 13)
        Me.lblDescripcion.TabIndex = 7
        Me.lblDescripcion.Text = "Descripcion"
        '
        'lblNombre
        '
        Me.lblNombre.AutoSize = True
        Me.lblNombre.Location = New System.Drawing.Point(20, 22)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(51, 13)
        Me.lblNombre.TabIndex = 6
        Me.lblNombre.Text = "* Nombre"
        '
        'frmAgregarEnfermedadAPaciente
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(377, 239)
        Me.Controls.Add(Me.cmdAgregarNuevo)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Controls.Add(Me.rtxtDescripcion)
        Me.Controls.Add(Me.cmbEnfermedades)
        Me.Controls.Add(Me.lblDescripcion)
        Me.Controls.Add(Me.lblNombre)
        Me.Name = "frmAgregarEnfermedadAPaciente"
        Me.Text = "frmAgregarEnfermedadAPaciente"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents cmdAgregarNuevo As System.Windows.Forms.Button
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents rtxtDescripcion As System.Windows.Forms.RichTextBox
    Friend WithEvents cmbEnfermedades As System.Windows.Forms.ComboBox
    Friend WithEvents lblDescripcion As System.Windows.Forms.Label
    Friend WithEvents lblNombre As System.Windows.Forms.Label
End Class
