<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmHistoriaClinicavb
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
        Me.dgvHC = New System.Windows.Forms.DataGridView()
        Me.Fecha = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.idPrestacion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Prestacion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.idUbicacion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Ubicacion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.idTipo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TipoDiente = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Observaciones = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.dgvEnfermedades = New System.Windows.Forms.DataGridView()
        Me.idEnfermedad = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Nombre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Descripcion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.lblHistoriasClinicas = New System.Windows.Forms.Label()
        Me.lblEnfermedades = New System.Windows.Forms.Label()
        Me.lblAlergias = New System.Windows.Forms.Label()
        Me.dgvAlergias = New System.Windows.Forms.DataGridView()
        Me.DataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn2 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DataGridViewTextBoxColumn3 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Button1 = New System.Windows.Forms.Button()
        CType(Me.dgvHC, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dgvEnfermedades, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dgvAlergias, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'dgvHC
        '
        Me.dgvHC.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvHC.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Fecha, Me.idPrestacion, Me.Prestacion, Me.idUbicacion, Me.Ubicacion, Me.idTipo, Me.TipoDiente, Me.Observaciones})
        Me.dgvHC.Location = New System.Drawing.Point(12, 25)
        Me.dgvHC.Name = "dgvHC"
        Me.dgvHC.ReadOnly = True
        Me.dgvHC.Size = New System.Drawing.Size(610, 169)
        Me.dgvHC.TabIndex = 0
        '
        'Fecha
        '
        Me.Fecha.HeaderText = "Fecha"
        Me.Fecha.Name = "Fecha"
        Me.Fecha.ReadOnly = True
        '
        'idPrestacion
        '
        Me.idPrestacion.HeaderText = "idPrestacion"
        Me.idPrestacion.Name = "idPrestacion"
        Me.idPrestacion.ReadOnly = True
        Me.idPrestacion.Visible = False
        '
        'Prestacion
        '
        Me.Prestacion.HeaderText = "Prestacion"
        Me.Prestacion.Name = "Prestacion"
        Me.Prestacion.ReadOnly = True
        '
        'idUbicacion
        '
        Me.idUbicacion.HeaderText = "idUbicacion"
        Me.idUbicacion.Name = "idUbicacion"
        Me.idUbicacion.ReadOnly = True
        Me.idUbicacion.Visible = False
        '
        'Ubicacion
        '
        Me.Ubicacion.HeaderText = "Ubicacion"
        Me.Ubicacion.Name = "Ubicacion"
        Me.Ubicacion.ReadOnly = True
        '
        'idTipo
        '
        Me.idTipo.HeaderText = "idTipo"
        Me.idTipo.Name = "idTipo"
        Me.idTipo.ReadOnly = True
        Me.idTipo.Visible = False
        '
        'TipoDiente
        '
        Me.TipoDiente.HeaderText = "Tipo Diente"
        Me.TipoDiente.Name = "TipoDiente"
        Me.TipoDiente.ReadOnly = True
        '
        'Observaciones
        '
        Me.Observaciones.HeaderText = "Observaciones"
        Me.Observaciones.Name = "Observaciones"
        Me.Observaciones.ReadOnly = True
        '
        'dgvEnfermedades
        '
        Me.dgvEnfermedades.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvEnfermedades.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idEnfermedad, Me.Nombre, Me.Descripcion})
        Me.dgvEnfermedades.Location = New System.Drawing.Point(9, 255)
        Me.dgvEnfermedades.Name = "dgvEnfermedades"
        Me.dgvEnfermedades.Size = New System.Drawing.Size(289, 154)
        Me.dgvEnfermedades.TabIndex = 2
        '
        'idEnfermedad
        '
        Me.idEnfermedad.HeaderText = "idEnfermedad"
        Me.idEnfermedad.Name = "idEnfermedad"
        Me.idEnfermedad.Visible = False
        '
        'Nombre
        '
        Me.Nombre.HeaderText = "Nombre"
        Me.Nombre.Name = "Nombre"
        '
        'Descripcion
        '
        Me.Descripcion.HeaderText = "Descripción"
        Me.Descripcion.Name = "Descripcion"
        '
        'lblHistoriasClinicas
        '
        Me.lblHistoriasClinicas.AutoSize = True
        Me.lblHistoriasClinicas.Location = New System.Drawing.Point(9, 9)
        Me.lblHistoriasClinicas.Name = "lblHistoriasClinicas"
        Me.lblHistoriasClinicas.Size = New System.Drawing.Size(86, 13)
        Me.lblHistoriasClinicas.TabIndex = 3
        Me.lblHistoriasClinicas.Text = "Historias Clinicas"
        '
        'lblEnfermedades
        '
        Me.lblEnfermedades.AutoSize = True
        Me.lblEnfermedades.Location = New System.Drawing.Point(9, 225)
        Me.lblEnfermedades.Name = "lblEnfermedades"
        Me.lblEnfermedades.Size = New System.Drawing.Size(75, 13)
        Me.lblEnfermedades.TabIndex = 4
        Me.lblEnfermedades.Text = "Enfermedades"
        '
        'lblAlergias
        '
        Me.lblAlergias.AutoSize = True
        Me.lblAlergias.Location = New System.Drawing.Point(317, 225)
        Me.lblAlergias.Name = "lblAlergias"
        Me.lblAlergias.Size = New System.Drawing.Size(44, 13)
        Me.lblAlergias.TabIndex = 5
        Me.lblAlergias.Text = "Alergias"
        '
        'dgvAlergias
        '
        Me.dgvAlergias.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvAlergias.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.DataGridViewTextBoxColumn1, Me.DataGridViewTextBoxColumn2, Me.DataGridViewTextBoxColumn3})
        Me.dgvAlergias.Location = New System.Drawing.Point(320, 255)
        Me.dgvAlergias.Name = "dgvAlergias"
        Me.dgvAlergias.Size = New System.Drawing.Size(302, 154)
        Me.dgvAlergias.TabIndex = 6
        '
        'DataGridViewTextBoxColumn1
        '
        Me.DataGridViewTextBoxColumn1.HeaderText = "idEnfermedad"
        Me.DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        Me.DataGridViewTextBoxColumn1.Visible = False
        '
        'DataGridViewTextBoxColumn2
        '
        Me.DataGridViewTextBoxColumn2.HeaderText = "Nombre"
        Me.DataGridViewTextBoxColumn2.Name = "DataGridViewTextBoxColumn2"
        '
        'DataGridViewTextBoxColumn3
        '
        Me.DataGridViewTextBoxColumn3.HeaderText = "Descripción"
        Me.DataGridViewTextBoxColumn3.Name = "DataGridViewTextBoxColumn3"
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(478, 426)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(144, 23)
        Me.Button1.TabIndex = 10
        Me.Button1.Text = "Agregar Entrada"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'frmHistoriaClinicavb
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(634, 467)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.dgvAlergias)
        Me.Controls.Add(Me.lblAlergias)
        Me.Controls.Add(Me.lblEnfermedades)
        Me.Controls.Add(Me.lblHistoriasClinicas)
        Me.Controls.Add(Me.dgvEnfermedades)
        Me.Controls.Add(Me.dgvHC)
        Me.Name = "frmHistoriaClinicavb"
        Me.Text = "HistoriaClinicavb"
        CType(Me.dgvHC, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dgvEnfermedades, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dgvAlergias, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents dgvHC As System.Windows.Forms.DataGridView
    Friend WithEvents dgvEnfermedades As System.Windows.Forms.DataGridView
    Friend WithEvents idEnfermedad As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Nombre As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Descripcion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents lblHistoriasClinicas As System.Windows.Forms.Label
    Friend WithEvents lblEnfermedades As System.Windows.Forms.Label
    Friend WithEvents lblAlergias As System.Windows.Forms.Label
    Friend WithEvents dgvAlergias As System.Windows.Forms.DataGridView
    Friend WithEvents DataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn3 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Fecha As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents idPrestacion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Prestacion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents idUbicacion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Ubicacion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents idTipo As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents TipoDiente As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Observaciones As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Button1 As System.Windows.Forms.Button
End Class
