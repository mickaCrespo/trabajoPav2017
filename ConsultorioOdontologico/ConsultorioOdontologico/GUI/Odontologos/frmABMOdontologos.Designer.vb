<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmABMOdontologos
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
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.txtNroMatricula = New System.Windows.Forms.TextBox()
        Me.lblNroMatricula = New System.Windows.Forms.Label()
        Me.txtNombre = New System.Windows.Forms.TextBox()
        Me.txtApellido = New System.Windows.Forms.TextBox()
        Me.txtLegajo = New System.Windows.Forms.TextBox()
        Me.mtxtDOB = New System.Windows.Forms.MaskedTextBox()
        Me.cmbSexo = New System.Windows.Forms.ComboBox()
        Me.lblDoB = New System.Windows.Forms.Label()
        Me.lblSexo = New System.Windows.Forms.Label()
        Me.lblNombre = New System.Windows.Forms.Label()
        Me.lblApellido = New System.Windows.Forms.Label()
        Me.lblLegajo = New System.Windows.Forms.Label()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.txtDomicilio = New System.Windows.Forms.TextBox()
        Me.txtMail = New System.Windows.Forms.TextBox()
        Me.txtTelefono = New System.Windows.Forms.TextBox()
        Me.lblDomicilio = New System.Windows.Forms.Label()
        Me.lblMail = New System.Windows.Forms.Label()
        Me.lblTelefono = New System.Windows.Forms.Label()
        Me.cmdConsultar = New System.Windows.Forms.Button()
        Me.dgvOdontologos = New System.Windows.Forms.DataGridView()
        Me.Legajo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Apellido = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Nombre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Sexo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.dob = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.nroMatricula = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.telefono = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.mail = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.domicilio = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.cmdAgregar = New System.Windows.Forms.Button()
        Me.cmdModificar = New System.Windows.Forms.Button()
        Me.cmdEliminar = New System.Windows.Forms.Button()
        Me.cmdBorrarCampos = New System.Windows.Forms.Button()
        Me.cmdSalir = New System.Windows.Forms.Button()
        Me.cmdEspecialidades = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.dgvOdontologos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.txtNroMatricula)
        Me.GroupBox1.Controls.Add(Me.lblNroMatricula)
        Me.GroupBox1.Controls.Add(Me.txtNombre)
        Me.GroupBox1.Controls.Add(Me.txtApellido)
        Me.GroupBox1.Controls.Add(Me.txtLegajo)
        Me.GroupBox1.Controls.Add(Me.mtxtDOB)
        Me.GroupBox1.Controls.Add(Me.cmbSexo)
        Me.GroupBox1.Controls.Add(Me.lblDoB)
        Me.GroupBox1.Controls.Add(Me.lblSexo)
        Me.GroupBox1.Controls.Add(Me.lblNombre)
        Me.GroupBox1.Controls.Add(Me.lblApellido)
        Me.GroupBox1.Controls.Add(Me.lblLegajo)
        Me.GroupBox1.Location = New System.Drawing.Point(13, 13)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(609, 153)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Datos Personales"
        '
        'txtNroMatricula
        '
        Me.txtNroMatricula.Location = New System.Drawing.Point(147, 116)
        Me.txtNroMatricula.Name = "txtNroMatricula"
        Me.txtNroMatricula.Size = New System.Drawing.Size(100, 20)
        Me.txtNroMatricula.TabIndex = 19
        '
        'lblNroMatricula
        '
        Me.lblNroMatricula.AutoSize = True
        Me.lblNroMatricula.Location = New System.Drawing.Point(11, 124)
        Me.lblNroMatricula.Name = "lblNroMatricula"
        Me.lblNroMatricula.Size = New System.Drawing.Size(105, 13)
        Me.lblNroMatricula.TabIndex = 18
        Me.lblNroMatricula.Text = "Numero de Matricula"
        '
        'txtNombre
        '
        Me.txtNombre.Location = New System.Drawing.Point(442, 59)
        Me.txtNombre.Name = "txtNombre"
        Me.txtNombre.Size = New System.Drawing.Size(100, 20)
        Me.txtNombre.TabIndex = 17
        '
        'txtApellido
        '
        Me.txtApellido.Location = New System.Drawing.Point(147, 59)
        Me.txtApellido.Name = "txtApellido"
        Me.txtApellido.Size = New System.Drawing.Size(100, 20)
        Me.txtApellido.TabIndex = 16
        '
        'txtLegajo
        '
        Me.txtLegajo.Location = New System.Drawing.Point(147, 28)
        Me.txtLegajo.Name = "txtLegajo"
        Me.txtLegajo.Size = New System.Drawing.Size(100, 20)
        Me.txtLegajo.TabIndex = 15
        '
        'mtxtDOB
        '
        Me.mtxtDOB.Location = New System.Drawing.Point(442, 92)
        Me.mtxtDOB.Mask = "00/00/0000"
        Me.mtxtDOB.Name = "mtxtDOB"
        Me.mtxtDOB.Size = New System.Drawing.Size(67, 20)
        Me.mtxtDOB.TabIndex = 14
        Me.mtxtDOB.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'cmbSexo
        '
        Me.cmbSexo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbSexo.FormattingEnabled = True
        Me.cmbSexo.Items.AddRange(New Object() {"Masculino", "Femenino"})
        Me.cmbSexo.Location = New System.Drawing.Point(147, 87)
        Me.cmbSexo.Name = "cmbSexo"
        Me.cmbSexo.Size = New System.Drawing.Size(100, 21)
        Me.cmbSexo.TabIndex = 13
        '
        'lblDoB
        '
        Me.lblDoB.AutoSize = True
        Me.lblDoB.Location = New System.Drawing.Point(316, 95)
        Me.lblDoB.Name = "lblDoB"
        Me.lblDoB.Size = New System.Drawing.Size(108, 13)
        Me.lblDoB.TabIndex = 4
        Me.lblDoB.Text = "Fecha de Nacimiento"
        '
        'lblSexo
        '
        Me.lblSexo.AutoSize = True
        Me.lblSexo.Location = New System.Drawing.Point(11, 95)
        Me.lblSexo.Name = "lblSexo"
        Me.lblSexo.Size = New System.Drawing.Size(31, 13)
        Me.lblSexo.TabIndex = 3
        Me.lblSexo.Text = "Sexo"
        '
        'lblNombre
        '
        Me.lblNombre.AutoSize = True
        Me.lblNombre.Location = New System.Drawing.Point(316, 66)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(44, 13)
        Me.lblNombre.TabIndex = 2
        Me.lblNombre.Text = "Nombre"
        '
        'lblApellido
        '
        Me.lblApellido.AutoSize = True
        Me.lblApellido.Location = New System.Drawing.Point(11, 66)
        Me.lblApellido.Name = "lblApellido"
        Me.lblApellido.Size = New System.Drawing.Size(44, 13)
        Me.lblApellido.TabIndex = 1
        Me.lblApellido.Text = "Apellido"
        '
        'lblLegajo
        '
        Me.lblLegajo.AutoSize = True
        Me.lblLegajo.Location = New System.Drawing.Point(11, 35)
        Me.lblLegajo.Name = "lblLegajo"
        Me.lblLegajo.Size = New System.Drawing.Size(39, 13)
        Me.lblLegajo.TabIndex = 0
        Me.lblLegajo.Text = "Legajo"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.txtDomicilio)
        Me.GroupBox2.Controls.Add(Me.txtMail)
        Me.GroupBox2.Controls.Add(Me.txtTelefono)
        Me.GroupBox2.Controls.Add(Me.lblDomicilio)
        Me.GroupBox2.Controls.Add(Me.lblMail)
        Me.GroupBox2.Controls.Add(Me.lblTelefono)
        Me.GroupBox2.Location = New System.Drawing.Point(12, 172)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(609, 95)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Informacion de Contacto"
        '
        'txtDomicilio
        '
        Me.txtDomicilio.Location = New System.Drawing.Point(443, 18)
        Me.txtDomicilio.Name = "txtDomicilio"
        Me.txtDomicilio.Size = New System.Drawing.Size(160, 20)
        Me.txtDomicilio.TabIndex = 5
        '
        'txtMail
        '
        Me.txtMail.Location = New System.Drawing.Point(147, 62)
        Me.txtMail.Name = "txtMail"
        Me.txtMail.Size = New System.Drawing.Size(209, 20)
        Me.txtMail.TabIndex = 4
        '
        'txtTelefono
        '
        Me.txtTelefono.Location = New System.Drawing.Point(147, 25)
        Me.txtTelefono.Name = "txtTelefono"
        Me.txtTelefono.Size = New System.Drawing.Size(100, 20)
        Me.txtTelefono.TabIndex = 3
        '
        'lblDomicilio
        '
        Me.lblDomicilio.AutoSize = True
        Me.lblDomicilio.Location = New System.Drawing.Point(317, 25)
        Me.lblDomicilio.Name = "lblDomicilio"
        Me.lblDomicilio.Size = New System.Drawing.Size(49, 13)
        Me.lblDomicilio.TabIndex = 2
        Me.lblDomicilio.Text = "Domicilio"
        '
        'lblMail
        '
        Me.lblMail.AutoSize = True
        Me.lblMail.Location = New System.Drawing.Point(12, 69)
        Me.lblMail.Name = "lblMail"
        Me.lblMail.Size = New System.Drawing.Size(32, 13)
        Me.lblMail.TabIndex = 1
        Me.lblMail.Text = "eMail"
        '
        'lblTelefono
        '
        Me.lblTelefono.AutoSize = True
        Me.lblTelefono.Location = New System.Drawing.Point(12, 32)
        Me.lblTelefono.Name = "lblTelefono"
        Me.lblTelefono.Size = New System.Drawing.Size(49, 13)
        Me.lblTelefono.TabIndex = 0
        Me.lblTelefono.Text = "Telefono"
        '
        'cmdConsultar
        '
        Me.cmdConsultar.Location = New System.Drawing.Point(540, 273)
        Me.cmdConsultar.Name = "cmdConsultar"
        Me.cmdConsultar.Size = New System.Drawing.Size(75, 23)
        Me.cmdConsultar.TabIndex = 20
        Me.cmdConsultar.Text = "Consultar"
        Me.cmdConsultar.UseVisualStyleBackColor = True
        '
        'dgvOdontologos
        '
        Me.dgvOdontologos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvOdontologos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Legajo, Me.Apellido, Me.Nombre, Me.Sexo, Me.dob, Me.nroMatricula, Me.telefono, Me.mail, Me.domicilio})
        Me.dgvOdontologos.Location = New System.Drawing.Point(7, 302)
        Me.dgvOdontologos.Name = "dgvOdontologos"
        Me.dgvOdontologos.Size = New System.Drawing.Size(608, 165)
        Me.dgvOdontologos.TabIndex = 21
        '
        'Legajo
        '
        Me.Legajo.HeaderText = "Legajo"
        Me.Legajo.Name = "Legajo"
        '
        'Apellido
        '
        Me.Apellido.HeaderText = "Apellido"
        Me.Apellido.Name = "Apellido"
        '
        'Nombre
        '
        Me.Nombre.HeaderText = "Nombre"
        Me.Nombre.Name = "Nombre"
        '
        'Sexo
        '
        Me.Sexo.HeaderText = "Sexo"
        Me.Sexo.Name = "Sexo"
        '
        'dob
        '
        Me.dob.HeaderText = "Fecha de Nacimiento"
        Me.dob.Name = "dob"
        '
        'nroMatricula
        '
        Me.nroMatricula.HeaderText = "Nro Matricula"
        Me.nroMatricula.Name = "nroMatricula"
        '
        'telefono
        '
        Me.telefono.HeaderText = "Telefono"
        Me.telefono.Name = "telefono"
        '
        'mail
        '
        Me.mail.HeaderText = "E-mail"
        Me.mail.Name = "mail"
        '
        'domicilio
        '
        Me.domicilio.HeaderText = "Domicilio"
        Me.domicilio.Name = "domicilio"
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(14, 484)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregar.TabIndex = 22
        Me.cmdAgregar.Text = "Agregar"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'cmdModificar
        '
        Me.cmdModificar.Location = New System.Drawing.Point(95, 484)
        Me.cmdModificar.Name = "cmdModificar"
        Me.cmdModificar.Size = New System.Drawing.Size(75, 23)
        Me.cmdModificar.TabIndex = 23
        Me.cmdModificar.Text = "Modificar"
        Me.cmdModificar.UseVisualStyleBackColor = True
        '
        'cmdEliminar
        '
        Me.cmdEliminar.Location = New System.Drawing.Point(176, 484)
        Me.cmdEliminar.Name = "cmdEliminar"
        Me.cmdEliminar.Size = New System.Drawing.Size(75, 23)
        Me.cmdEliminar.TabIndex = 24
        Me.cmdEliminar.Text = "Eliminar"
        Me.cmdEliminar.UseVisualStyleBackColor = True
        '
        'cmdBorrarCampos
        '
        Me.cmdBorrarCampos.Location = New System.Drawing.Point(257, 484)
        Me.cmdBorrarCampos.Name = "cmdBorrarCampos"
        Me.cmdBorrarCampos.Size = New System.Drawing.Size(111, 23)
        Me.cmdBorrarCampos.TabIndex = 25
        Me.cmdBorrarCampos.Text = "Borrar Campos"
        Me.cmdBorrarCampos.UseVisualStyleBackColor = True
        '
        'cmdSalir
        '
        Me.cmdSalir.Location = New System.Drawing.Point(546, 484)
        Me.cmdSalir.Name = "cmdSalir"
        Me.cmdSalir.Size = New System.Drawing.Size(75, 23)
        Me.cmdSalir.TabIndex = 26
        Me.cmdSalir.Text = "Salir"
        Me.cmdSalir.UseVisualStyleBackColor = True
        '
        'cmdEspecialidades
        '
        Me.cmdEspecialidades.Location = New System.Drawing.Point(12, 273)
        Me.cmdEspecialidades.Name = "cmdEspecialidades"
        Me.cmdEspecialidades.Size = New System.Drawing.Size(88, 23)
        Me.cmdEspecialidades.TabIndex = 27
        Me.cmdEspecialidades.Text = "Especialidades"
        Me.cmdEspecialidades.UseVisualStyleBackColor = True
        '
        'frmABMOdontologos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(634, 519)
        Me.Controls.Add(Me.cmdEspecialidades)
        Me.Controls.Add(Me.cmdSalir)
        Me.Controls.Add(Me.cmdBorrarCampos)
        Me.Controls.Add(Me.cmdEliminar)
        Me.Controls.Add(Me.cmdModificar)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Controls.Add(Me.dgvOdontologos)
        Me.Controls.Add(Me.cmdConsultar)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "frmABMOdontologos"
        Me.Text = "Odontologos"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.dgvOdontologos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents lblDoB As System.Windows.Forms.Label
    Friend WithEvents lblSexo As System.Windows.Forms.Label
    Friend WithEvents lblNombre As System.Windows.Forms.Label
    Friend WithEvents lblApellido As System.Windows.Forms.Label
    Friend WithEvents lblLegajo As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents cmbSexo As System.Windows.Forms.ComboBox
    Friend WithEvents txtNombre As System.Windows.Forms.TextBox
    Friend WithEvents txtApellido As System.Windows.Forms.TextBox
    Friend WithEvents txtLegajo As System.Windows.Forms.TextBox
    Friend WithEvents mtxtDOB As System.Windows.Forms.MaskedTextBox
    Friend WithEvents cmdConsultar As System.Windows.Forms.Button
    Friend WithEvents txtNroMatricula As System.Windows.Forms.TextBox
    Friend WithEvents lblNroMatricula As System.Windows.Forms.Label
    Friend WithEvents txtDomicilio As System.Windows.Forms.TextBox
    Friend WithEvents txtMail As System.Windows.Forms.TextBox
    Friend WithEvents txtTelefono As System.Windows.Forms.TextBox
    Friend WithEvents lblDomicilio As System.Windows.Forms.Label
    Friend WithEvents lblMail As System.Windows.Forms.Label
    Friend WithEvents lblTelefono As System.Windows.Forms.Label
    Friend WithEvents dgvOdontologos As System.Windows.Forms.DataGridView
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents cmdModificar As System.Windows.Forms.Button
    Friend WithEvents cmdEliminar As System.Windows.Forms.Button
    Friend WithEvents cmdBorrarCampos As System.Windows.Forms.Button
    Friend WithEvents cmdSalir As System.Windows.Forms.Button
    Friend WithEvents cmdEspecialidades As System.Windows.Forms.Button
    Friend WithEvents Legajo As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Apellido As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Nombre As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Sexo As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents dob As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents nroMatricula As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents telefono As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents mail As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents domicilio As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
