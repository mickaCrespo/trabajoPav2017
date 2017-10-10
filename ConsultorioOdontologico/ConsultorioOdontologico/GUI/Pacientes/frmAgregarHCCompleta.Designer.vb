<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAgregarHCCompleta
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
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

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.lblObservaciones = New System.Windows.Forms.Label()
        Me.rtxtObservaciones = New System.Windows.Forms.RichTextBox()
        Me.lblTipoDiente = New System.Windows.Forms.Label()
        Me.lblUbicacion = New System.Windows.Forms.Label()
        Me.lblPrestacion = New System.Windows.Forms.Label()
        Me.cmbTipoDiente = New System.Windows.Forms.ComboBox()
        Me.cmbUbicacion = New System.Windows.Forms.ComboBox()
        Me.cmbPrestaciones = New System.Windows.Forms.ComboBox()
        Me.cmdAgregarHC = New System.Windows.Forms.Button()
        Me.dgvHC = New System.Windows.Forms.DataGridView()
        Me.dgvDiagnosticos = New System.Windows.Forms.DataGridView()
        Me.grdAlergias = New System.Windows.Forms.DataGridView()
        Me.grbHC = New System.Windows.Forms.GroupBox()
        Me.grbDiagnosticos = New System.Windows.Forms.GroupBox()
        Me.cmdAgregarNuevoDiagnostico = New System.Windows.Forms.Button()
        Me.rtxtDescripcion = New System.Windows.Forms.RichTextBox()
        Me.cmbEnfermedades = New System.Windows.Forms.ComboBox()
        Me.lblDescripcion = New System.Windows.Forms.Label()
        Me.lblNombre = New System.Windows.Forms.Label()
        Me.grbAlergias = New System.Windows.Forms.GroupBox()
        Me.cmdAgregarNuevaAlergia = New System.Windows.Forms.Button()
        Me.cmdAgregarAlergias = New System.Windows.Forms.Button()
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.cmbAlergias = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.cmdAgregarDiagnosticos = New System.Windows.Forms.Button()
        Me.cmdGuardarCambios = New System.Windows.Forms.Button()
        CType(Me.dgvHC, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dgvDiagnosticos, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.grdAlergias, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.grbHC.SuspendLayout()
        Me.grbDiagnosticos.SuspendLayout()
        Me.grbAlergias.SuspendLayout()
        Me.SuspendLayout()
        '
        'lblObservaciones
        '
        Me.lblObservaciones.AutoSize = True
        Me.lblObservaciones.Location = New System.Drawing.Point(569, 138)
        Me.lblObservaciones.Name = "lblObservaciones"
        Me.lblObservaciones.Size = New System.Drawing.Size(78, 13)
        Me.lblObservaciones.TabIndex = 17
        Me.lblObservaciones.Text = "Observaciones"
        '
        'rtxtObservaciones
        '
        Me.rtxtObservaciones.Location = New System.Drawing.Point(683, 135)
        Me.rtxtObservaciones.Name = "rtxtObservaciones"
        Me.rtxtObservaciones.Size = New System.Drawing.Size(317, 96)
        Me.rtxtObservaciones.TabIndex = 16
        Me.rtxtObservaciones.Text = ""
        '
        'lblTipoDiente
        '
        Me.lblTipoDiente.AutoSize = True
        Me.lblTipoDiente.Location = New System.Drawing.Point(569, 102)
        Me.lblTipoDiente.Name = "lblTipoDiente"
        Me.lblTipoDiente.Size = New System.Drawing.Size(42, 13)
        Me.lblTipoDiente.TabIndex = 15
        Me.lblTipoDiente.Text = "*Diente"
        '
        'lblUbicacion
        '
        Me.lblUbicacion.AutoSize = True
        Me.lblUbicacion.Location = New System.Drawing.Point(569, 65)
        Me.lblUbicacion.Name = "lblUbicacion"
        Me.lblUbicacion.Size = New System.Drawing.Size(59, 13)
        Me.lblUbicacion.TabIndex = 14
        Me.lblUbicacion.Text = "*Ubicacion"
        '
        'lblPrestacion
        '
        Me.lblPrestacion.AutoSize = True
        Me.lblPrestacion.Location = New System.Drawing.Point(567, 28)
        Me.lblPrestacion.Name = "lblPrestacion"
        Me.lblPrestacion.Size = New System.Drawing.Size(61, 13)
        Me.lblPrestacion.TabIndex = 13
        Me.lblPrestacion.Text = "*Prestacion"
        '
        'cmbTipoDiente
        '
        Me.cmbTipoDiente.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbTipoDiente.FormattingEnabled = True
        Me.cmbTipoDiente.Location = New System.Drawing.Point(683, 99)
        Me.cmbTipoDiente.Name = "cmbTipoDiente"
        Me.cmbTipoDiente.Size = New System.Drawing.Size(147, 21)
        Me.cmbTipoDiente.TabIndex = 12
        '
        'cmbUbicacion
        '
        Me.cmbUbicacion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbUbicacion.FormattingEnabled = True
        Me.cmbUbicacion.Location = New System.Drawing.Point(683, 62)
        Me.cmbUbicacion.Name = "cmbUbicacion"
        Me.cmbUbicacion.Size = New System.Drawing.Size(147, 21)
        Me.cmbUbicacion.TabIndex = 11
        '
        'cmbPrestaciones
        '
        Me.cmbPrestaciones.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbPrestaciones.FormattingEnabled = True
        Me.cmbPrestaciones.Location = New System.Drawing.Point(683, 25)
        Me.cmbPrestaciones.Name = "cmbPrestaciones"
        Me.cmbPrestaciones.Size = New System.Drawing.Size(147, 21)
        Me.cmbPrestaciones.TabIndex = 10
        '
        'cmdAgregarHC
        '
        Me.cmdAgregarHC.Location = New System.Drawing.Point(925, 251)
        Me.cmdAgregarHC.Name = "cmdAgregarHC"
        Me.cmdAgregarHC.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregarHC.TabIndex = 9
        Me.cmdAgregarHC.Text = "Agregar"
        Me.cmdAgregarHC.UseVisualStyleBackColor = True
        '
        'dgvHC
        '
        Me.dgvHC.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvHC.Location = New System.Drawing.Point(20, 28)
        Me.dgvHC.Name = "dgvHC"
        Me.dgvHC.Size = New System.Drawing.Size(524, 235)
        Me.dgvHC.TabIndex = 18
        '
        'dgvDiagnosticos
        '
        Me.dgvDiagnosticos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvDiagnosticos.Location = New System.Drawing.Point(20, 42)
        Me.dgvDiagnosticos.Name = "dgvDiagnosticos"
        Me.dgvDiagnosticos.Size = New System.Drawing.Size(524, 150)
        Me.dgvDiagnosticos.TabIndex = 19
        '
        'grdAlergias
        '
        Me.grdAlergias.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grdAlergias.Location = New System.Drawing.Point(20, 32)
        Me.grdAlergias.Name = "grdAlergias"
        Me.grdAlergias.Size = New System.Drawing.Size(524, 150)
        Me.grdAlergias.TabIndex = 20
        '
        'grbHC
        '
        Me.grbHC.Controls.Add(Me.dgvHC)
        Me.grbHC.Controls.Add(Me.lblPrestacion)
        Me.grbHC.Controls.Add(Me.cmdAgregarHC)
        Me.grbHC.Controls.Add(Me.lblObservaciones)
        Me.grbHC.Controls.Add(Me.cmbPrestaciones)
        Me.grbHC.Controls.Add(Me.rtxtObservaciones)
        Me.grbHC.Controls.Add(Me.cmbUbicacion)
        Me.grbHC.Controls.Add(Me.lblTipoDiente)
        Me.grbHC.Controls.Add(Me.cmbTipoDiente)
        Me.grbHC.Controls.Add(Me.lblUbicacion)
        Me.grbHC.Location = New System.Drawing.Point(12, 12)
        Me.grbHC.Name = "grbHC"
        Me.grbHC.Size = New System.Drawing.Size(1015, 304)
        Me.grbHC.TabIndex = 21
        Me.grbHC.TabStop = False
        Me.grbHC.Text = "Historias Clinicas"
        '
        'grbDiagnosticos
        '
        Me.grbDiagnosticos.Controls.Add(Me.cmdAgregarDiagnosticos)
        Me.grbDiagnosticos.Controls.Add(Me.cmdAgregarNuevoDiagnostico)
        Me.grbDiagnosticos.Controls.Add(Me.rtxtDescripcion)
        Me.grbDiagnosticos.Controls.Add(Me.cmbEnfermedades)
        Me.grbDiagnosticos.Controls.Add(Me.dgvDiagnosticos)
        Me.grbDiagnosticos.Controls.Add(Me.lblDescripcion)
        Me.grbDiagnosticos.Controls.Add(Me.lblNombre)
        Me.grbDiagnosticos.Location = New System.Drawing.Point(12, 322)
        Me.grbDiagnosticos.Name = "grbDiagnosticos"
        Me.grbDiagnosticos.Size = New System.Drawing.Size(1015, 211)
        Me.grbDiagnosticos.TabIndex = 22
        Me.grbDiagnosticos.TabStop = False
        Me.grbDiagnosticos.Text = "Diagnosticos"
        '
        'cmdAgregarNuevoDiagnostico
        '
        Me.cmdAgregarNuevoDiagnostico.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdAgregarNuevoDiagnostico.Location = New System.Drawing.Point(836, 42)
        Me.cmdAgregarNuevoDiagnostico.Name = "cmdAgregarNuevoDiagnostico"
        Me.cmdAgregarNuevoDiagnostico.Size = New System.Drawing.Size(23, 23)
        Me.cmdAgregarNuevoDiagnostico.TabIndex = 16
        Me.cmdAgregarNuevoDiagnostico.Text = "+"
        Me.cmdAgregarNuevoDiagnostico.UseVisualStyleBackColor = True
        '
        'rtxtDescripcion
        '
        Me.rtxtDescripcion.Location = New System.Drawing.Point(683, 69)
        Me.rtxtDescripcion.Name = "rtxtDescripcion"
        Me.rtxtDescripcion.Size = New System.Drawing.Size(317, 96)
        Me.rtxtDescripcion.TabIndex = 15
        Me.rtxtDescripcion.Text = ""
        '
        'cmbEnfermedades
        '
        Me.cmbEnfermedades.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbEnfermedades.FormattingEnabled = True
        Me.cmbEnfermedades.Location = New System.Drawing.Point(683, 42)
        Me.cmbEnfermedades.Name = "cmbEnfermedades"
        Me.cmbEnfermedades.Size = New System.Drawing.Size(147, 21)
        Me.cmbEnfermedades.TabIndex = 14
        '
        'lblDescripcion
        '
        Me.lblDescripcion.AutoSize = True
        Me.lblDescripcion.Location = New System.Drawing.Point(569, 69)
        Me.lblDescripcion.Name = "lblDescripcion"
        Me.lblDescripcion.Size = New System.Drawing.Size(63, 13)
        Me.lblDescripcion.TabIndex = 13
        Me.lblDescripcion.Text = "Descripcion"
        '
        'lblNombre
        '
        Me.lblNombre.AutoSize = True
        Me.lblNombre.Location = New System.Drawing.Point(569, 40)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(51, 13)
        Me.lblNombre.TabIndex = 12
        Me.lblNombre.Text = "* Nombre"
        '
        'grbAlergias
        '
        Me.grbAlergias.Controls.Add(Me.cmdAgregarNuevaAlergia)
        Me.grbAlergias.Controls.Add(Me.cmdAgregarAlergias)
        Me.grbAlergias.Controls.Add(Me.RichTextBox1)
        Me.grbAlergias.Controls.Add(Me.cmbAlergias)
        Me.grbAlergias.Controls.Add(Me.Label1)
        Me.grbAlergias.Controls.Add(Me.Label2)
        Me.grbAlergias.Controls.Add(Me.grdAlergias)
        Me.grbAlergias.Location = New System.Drawing.Point(12, 539)
        Me.grbAlergias.Name = "grbAlergias"
        Me.grbAlergias.Size = New System.Drawing.Size(1015, 219)
        Me.grbAlergias.TabIndex = 23
        Me.grbAlergias.TabStop = False
        Me.grbAlergias.Text = "Alergias"
        '
        'cmdAgregarNuevaAlergia
        '
        Me.cmdAgregarNuevaAlergia.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdAgregarNuevaAlergia.Location = New System.Drawing.Point(836, 34)
        Me.cmdAgregarNuevaAlergia.Name = "cmdAgregarNuevaAlergia"
        Me.cmdAgregarNuevaAlergia.Size = New System.Drawing.Size(23, 23)
        Me.cmdAgregarNuevaAlergia.TabIndex = 26
        Me.cmdAgregarNuevaAlergia.Text = "+"
        Me.cmdAgregarNuevaAlergia.UseVisualStyleBackColor = True
        '
        'cmdAgregarAlergias
        '
        Me.cmdAgregarAlergias.Location = New System.Drawing.Point(925, 173)
        Me.cmdAgregarAlergias.Name = "cmdAgregarAlergias"
        Me.cmdAgregarAlergias.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregarAlergias.TabIndex = 25
        Me.cmdAgregarAlergias.Text = "Agregar"
        Me.cmdAgregarAlergias.UseVisualStyleBackColor = True
        '
        'RichTextBox1
        '
        Me.RichTextBox1.Location = New System.Drawing.Point(683, 61)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.Size = New System.Drawing.Size(317, 96)
        Me.RichTextBox1.TabIndex = 24
        Me.RichTextBox1.Text = ""
        '
        'cmbAlergias
        '
        Me.cmbAlergias.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbAlergias.FormattingEnabled = True
        Me.cmbAlergias.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.cmbAlergias.Location = New System.Drawing.Point(683, 34)
        Me.cmbAlergias.Name = "cmbAlergias"
        Me.cmbAlergias.Size = New System.Drawing.Size(147, 21)
        Me.cmbAlergias.TabIndex = 23
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(569, 61)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(63, 13)
        Me.Label1.TabIndex = 22
        Me.Label1.Text = "Descripcion"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(569, 32)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(51, 13)
        Me.Label2.TabIndex = 21
        Me.Label2.Text = "* Nombre"
        '
        'cmdAgregarDiagnosticos
        '
        Me.cmdAgregarDiagnosticos.Location = New System.Drawing.Point(925, 171)
        Me.cmdAgregarDiagnosticos.Name = "cmdAgregarDiagnosticos"
        Me.cmdAgregarDiagnosticos.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregarDiagnosticos.TabIndex = 20
        Me.cmdAgregarDiagnosticos.Text = "Agregar"
        Me.cmdAgregarDiagnosticos.UseVisualStyleBackColor = True
        '
        'cmdGuardarCambios
        '
        Me.cmdGuardarCambios.Location = New System.Drawing.Point(800, 781)
        Me.cmdGuardarCambios.Name = "cmdGuardarCambios"
        Me.cmdGuardarCambios.Size = New System.Drawing.Size(227, 23)
        Me.cmdGuardarCambios.TabIndex = 24
        Me.cmdGuardarCambios.Text = "Guardar Cambios"
        Me.cmdGuardarCambios.UseVisualStyleBackColor = True
        '
        'frmAgregarHCCompleta
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(1048, 809)
        Me.Controls.Add(Me.cmdGuardarCambios)
        Me.Controls.Add(Me.grbAlergias)
        Me.Controls.Add(Me.grbDiagnosticos)
        Me.Controls.Add(Me.grbHC)
        Me.Name = "frmAgregarHCCompleta"
        Me.Text = "frmAgregarHCCompleta"
        CType(Me.dgvHC, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dgvDiagnosticos, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.grdAlergias, System.ComponentModel.ISupportInitialize).EndInit()
        Me.grbHC.ResumeLayout(False)
        Me.grbHC.PerformLayout()
        Me.grbDiagnosticos.ResumeLayout(False)
        Me.grbDiagnosticos.PerformLayout()
        Me.grbAlergias.ResumeLayout(False)
        Me.grbAlergias.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents lblObservaciones As System.Windows.Forms.Label
    Friend WithEvents rtxtObservaciones As System.Windows.Forms.RichTextBox
    Friend WithEvents lblTipoDiente As System.Windows.Forms.Label
    Friend WithEvents lblUbicacion As System.Windows.Forms.Label
    Friend WithEvents lblPrestacion As System.Windows.Forms.Label
    Friend WithEvents cmbTipoDiente As System.Windows.Forms.ComboBox
    Friend WithEvents cmbUbicacion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbPrestaciones As System.Windows.Forms.ComboBox
    Friend WithEvents cmdAgregarHC As System.Windows.Forms.Button
    Friend WithEvents dgvHC As System.Windows.Forms.DataGridView
    Friend WithEvents dgvDiagnosticos As System.Windows.Forms.DataGridView
    Friend WithEvents grdAlergias As System.Windows.Forms.DataGridView
    Friend WithEvents grbHC As System.Windows.Forms.GroupBox
    Friend WithEvents grbDiagnosticos As System.Windows.Forms.GroupBox
    Friend WithEvents cmdAgregarNuevoDiagnostico As System.Windows.Forms.Button
    Friend WithEvents rtxtDescripcion As System.Windows.Forms.RichTextBox
    Friend WithEvents cmbEnfermedades As System.Windows.Forms.ComboBox
    Friend WithEvents lblDescripcion As System.Windows.Forms.Label
    Friend WithEvents lblNombre As System.Windows.Forms.Label
    Friend WithEvents grbAlergias As System.Windows.Forms.GroupBox
    Friend WithEvents cmdAgregarDiagnosticos As System.Windows.Forms.Button
    Friend WithEvents cmdAgregarNuevaAlergia As System.Windows.Forms.Button
    Friend WithEvents cmdAgregarAlergias As System.Windows.Forms.Button
    Friend WithEvents RichTextBox1 As System.Windows.Forms.RichTextBox
    Friend WithEvents cmbAlergias As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents cmdGuardarCambios As System.Windows.Forms.Button
End Class
