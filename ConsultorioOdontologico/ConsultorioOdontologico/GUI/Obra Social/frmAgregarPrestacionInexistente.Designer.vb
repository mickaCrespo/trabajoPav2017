<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAgregarPrestacionInexistente
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
        Me.grbPrestaciones = New System.Windows.Forms.GroupBox()
        Me.txtPrecio = New System.Windows.Forms.TextBox()
        Me.rtbDescripcion = New System.Windows.Forms.RichTextBox()
        Me.txtDuracion = New System.Windows.Forms.TextBox()
        Me.txtNombre = New System.Windows.Forms.TextBox()
        Me.lblDescripcion = New System.Windows.Forms.Label()
        Me.lblDuracion = New System.Windows.Forms.Label()
        Me.lblPrecio = New System.Windows.Forms.Label()
        Me.lblNombre = New System.Windows.Forms.Label()
        Me.dgvPrestaciones = New System.Windows.Forms.DataGridView()
        Me.cmdAgregar = New System.Windows.Forms.Button()
        Me.cmdSalir = New System.Windows.Forms.Button()
        Me.idPrestacion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.nombre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.descripcion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.precio = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.duracion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.grbPrestaciones.SuspendLayout()
        CType(Me.dgvPrestaciones, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'grbPrestaciones
        '
        Me.grbPrestaciones.Controls.Add(Me.txtPrecio)
        Me.grbPrestaciones.Controls.Add(Me.rtbDescripcion)
        Me.grbPrestaciones.Controls.Add(Me.txtDuracion)
        Me.grbPrestaciones.Controls.Add(Me.txtNombre)
        Me.grbPrestaciones.Controls.Add(Me.lblDescripcion)
        Me.grbPrestaciones.Controls.Add(Me.lblDuracion)
        Me.grbPrestaciones.Controls.Add(Me.lblPrecio)
        Me.grbPrestaciones.Controls.Add(Me.lblNombre)
        Me.grbPrestaciones.Location = New System.Drawing.Point(12, 12)
        Me.grbPrestaciones.Name = "grbPrestaciones"
        Me.grbPrestaciones.Size = New System.Drawing.Size(556, 237)
        Me.grbPrestaciones.TabIndex = 0
        Me.grbPrestaciones.TabStop = False
        Me.grbPrestaciones.Text = "Prestaciones"
        '
        'txtPrecio
        '
        Me.txtPrecio.Location = New System.Drawing.Point(175, 69)
        Me.txtPrecio.Name = "txtPrecio"
        Me.txtPrecio.Size = New System.Drawing.Size(100, 20)
        Me.txtPrecio.TabIndex = 9
        '
        'rtbDescripcion
        '
        Me.rtbDescripcion.Location = New System.Drawing.Point(175, 139)
        Me.rtbDescripcion.Name = "rtbDescripcion"
        Me.rtbDescripcion.Size = New System.Drawing.Size(364, 82)
        Me.rtbDescripcion.TabIndex = 8
        Me.rtbDescripcion.Text = ""
        '
        'txtDuracion
        '
        Me.txtDuracion.Location = New System.Drawing.Point(175, 100)
        Me.txtDuracion.Name = "txtDuracion"
        Me.txtDuracion.Size = New System.Drawing.Size(100, 20)
        Me.txtDuracion.TabIndex = 6
        '
        'txtNombre
        '
        Me.txtNombre.Location = New System.Drawing.Point(175, 34)
        Me.txtNombre.Name = "txtNombre"
        Me.txtNombre.Size = New System.Drawing.Size(100, 20)
        Me.txtNombre.TabIndex = 4
        '
        'lblDescripcion
        '
        Me.lblDescripcion.AutoSize = True
        Me.lblDescripcion.Location = New System.Drawing.Point(23, 142)
        Me.lblDescripcion.Name = "lblDescripcion"
        Me.lblDescripcion.Size = New System.Drawing.Size(63, 13)
        Me.lblDescripcion.TabIndex = 3
        Me.lblDescripcion.Text = "Descripcion"
        '
        'lblDuracion
        '
        Me.lblDuracion.AutoSize = True
        Me.lblDuracion.Location = New System.Drawing.Point(23, 107)
        Me.lblDuracion.Name = "lblDuracion"
        Me.lblDuracion.Size = New System.Drawing.Size(57, 13)
        Me.lblDuracion.TabIndex = 2
        Me.lblDuracion.Text = "* Duracion"
        '
        'lblPrecio
        '
        Me.lblPrecio.AutoSize = True
        Me.lblPrecio.Location = New System.Drawing.Point(23, 72)
        Me.lblPrecio.Name = "lblPrecio"
        Me.lblPrecio.Size = New System.Drawing.Size(44, 13)
        Me.lblPrecio.TabIndex = 1
        Me.lblPrecio.Text = "* Precio"
        '
        'lblNombre
        '
        Me.lblNombre.AutoSize = True
        Me.lblNombre.Location = New System.Drawing.Point(23, 41)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(51, 13)
        Me.lblNombre.TabIndex = 0
        Me.lblNombre.Text = "* Nombre"
        '
        'dgvPrestaciones
        '
        Me.dgvPrestaciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvPrestaciones.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idPrestacion, Me.nombre, Me.descripcion, Me.precio, Me.duracion})
        Me.dgvPrestaciones.Location = New System.Drawing.Point(12, 273)
        Me.dgvPrestaciones.Name = "dgvPrestaciones"
        Me.dgvPrestaciones.Size = New System.Drawing.Size(556, 164)
        Me.dgvPrestaciones.TabIndex = 1
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(12, 473)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregar.TabIndex = 2
        Me.cmdAgregar.Text = "Agregar"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'cmdSalir
        '
        Me.cmdSalir.Location = New System.Drawing.Point(493, 473)
        Me.cmdSalir.Name = "cmdSalir"
        Me.cmdSalir.Size = New System.Drawing.Size(75, 23)
        Me.cmdSalir.TabIndex = 3
        Me.cmdSalir.Text = "Salir"
        Me.cmdSalir.UseVisualStyleBackColor = True
        '
        'idPrestacion
        '
        Me.idPrestacion.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells
        Me.idPrestacion.HeaderText = "id"
        Me.idPrestacion.Name = "idPrestacion"
        Me.idPrestacion.Visible = False
        Me.idPrestacion.Width = 40
        '
        'nombre
        '
        Me.nombre.HeaderText = "Nombre"
        Me.nombre.Name = "nombre"
        '
        'descripcion
        '
        Me.descripcion.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells
        Me.descripcion.HeaderText = "Descripcion"
        Me.descripcion.Name = "descripcion"
        Me.descripcion.Width = 88
        '
        'precio
        '
        Me.precio.HeaderText = "Precio"
        Me.precio.Name = "precio"
        '
        'duracion
        '
        Me.duracion.HeaderText = "Duracion"
        Me.duracion.Name = "duracion"
        '
        'frmAgregarPrestacionInexistente
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(594, 519)
        Me.Controls.Add(Me.cmdSalir)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Controls.Add(Me.dgvPrestaciones)
        Me.Controls.Add(Me.grbPrestaciones)
        Me.Name = "frmAgregarPrestacionInexistente"
        Me.Text = "Prestaciones"
        Me.grbPrestaciones.ResumeLayout(False)
        Me.grbPrestaciones.PerformLayout()
        CType(Me.dgvPrestaciones, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents grbPrestaciones As System.Windows.Forms.GroupBox
    Friend WithEvents rtbDescripcion As System.Windows.Forms.RichTextBox
    Friend WithEvents txtDuracion As System.Windows.Forms.TextBox
    Friend WithEvents txtNombre As System.Windows.Forms.TextBox
    Friend WithEvents lblDescripcion As System.Windows.Forms.Label
    Friend WithEvents lblDuracion As System.Windows.Forms.Label
    Friend WithEvents lblPrecio As System.Windows.Forms.Label
    Friend WithEvents lblNombre As System.Windows.Forms.Label
    Friend WithEvents dgvPrestaciones As System.Windows.Forms.DataGridView
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents cmdSalir As System.Windows.Forms.Button
    Friend WithEvents txtPrecio As System.Windows.Forms.TextBox
    Friend WithEvents idPrestacion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents nombre As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents descripcion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents precio As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents duracion As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
