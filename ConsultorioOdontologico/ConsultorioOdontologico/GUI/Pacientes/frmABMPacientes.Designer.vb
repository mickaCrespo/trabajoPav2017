<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmABMPacientes
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmABMPacientes))
        Me.lblDNI = New System.Windows.Forms.Label()
        Me.lblDOB = New System.Windows.Forms.Label()
        Me.lblSexo = New System.Windows.Forms.Label()
        Me.lblNombre = New System.Windows.Forms.Label()
        Me.lblApellido = New System.Windows.Forms.Label()
        Me.lblTelCont = New System.Windows.Forms.Label()
        Me.lblOS = New System.Windows.Forms.Label()
        Me.lblPlan = New System.Windows.Forms.Label()
        Me.lblNroAfiliado = New System.Windows.Forms.Label()
        Me.txtApellido = New System.Windows.Forms.TextBox()
        Me.txtNombre = New System.Windows.Forms.TextBox()
        Me.cmbSexo = New System.Windows.Forms.ComboBox()
        Me.mtxtDOB = New System.Windows.Forms.MaskedTextBox()
        Me.cmbOS = New System.Windows.Forms.ComboBox()
        Me.cmbPlan = New System.Windows.Forms.ComboBox()
        Me.txtNroAfiliado = New System.Windows.Forms.TextBox()
        Me.grbPacientes = New System.Windows.Forms.GroupBox()
        Me.mtxtTelCont = New System.Windows.Forms.MaskedTextBox()
        Me.mtxtDNI = New System.Windows.Forms.MaskedTextBox()
        Me.lblMensaje = New System.Windows.Forms.Label()
        Me.grbOS = New System.Windows.Forms.GroupBox()
        Me.cmdConsultar = New System.Windows.Forms.Button()
        Me.dgvPacientes = New System.Windows.Forms.DataGridView()
        Me.DNI = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Apellido = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Nombre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Sexo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DOB = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TelCont = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.OS = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Plan = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.NroAfiliado = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.idPlan = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.idOS = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.cmdAgregar = New System.Windows.Forms.Button()
        Me.cmdModificar = New System.Windows.Forms.Button()
        Me.cmdEliminar = New System.Windows.Forms.Button()
        Me.cmdSalir = New System.Windows.Forms.Button()
        Me.cmdBorrarCampos = New System.Windows.Forms.Button()
        Me.grbPacientes.SuspendLayout()
        Me.grbOS.SuspendLayout()
        CType(Me.dgvPacientes, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'lblDNI
        '
        Me.lblDNI.AutoSize = True
        Me.lblDNI.Location = New System.Drawing.Point(6, 30)
        Me.lblDNI.Name = "lblDNI"
        Me.lblDNI.Size = New System.Drawing.Size(33, 13)
        Me.lblDNI.TabIndex = 0
        Me.lblDNI.Text = "* DNI"
        '
        'lblDOB
        '
        Me.lblDOB.AutoSize = True
        Me.lblDOB.Location = New System.Drawing.Point(338, 83)
        Me.lblDOB.Name = "lblDOB"
        Me.lblDOB.Size = New System.Drawing.Size(113, 13)
        Me.lblDOB.TabIndex = 1
        Me.lblDOB.Text = "* Fecha de nacimiento"
        '
        'lblSexo
        '
        Me.lblSexo.AutoSize = True
        Me.lblSexo.Location = New System.Drawing.Point(6, 83)
        Me.lblSexo.Name = "lblSexo"
        Me.lblSexo.Size = New System.Drawing.Size(38, 13)
        Me.lblSexo.TabIndex = 2
        Me.lblSexo.Text = "* Sexo"
        '
        'lblNombre
        '
        Me.lblNombre.AutoSize = True
        Me.lblNombre.Location = New System.Drawing.Point(338, 57)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(51, 13)
        Me.lblNombre.TabIndex = 3
        Me.lblNombre.Text = "* Nombre"
        '
        'lblApellido
        '
        Me.lblApellido.AutoSize = True
        Me.lblApellido.Location = New System.Drawing.Point(6, 57)
        Me.lblApellido.Name = "lblApellido"
        Me.lblApellido.Size = New System.Drawing.Size(51, 13)
        Me.lblApellido.TabIndex = 4
        Me.lblApellido.Text = "* Apellido"
        '
        'lblTelCont
        '
        Me.lblTelCont.AutoSize = True
        Me.lblTelCont.Location = New System.Drawing.Point(6, 113)
        Me.lblTelCont.Name = "lblTelCont"
        Me.lblTelCont.Size = New System.Drawing.Size(117, 13)
        Me.lblTelCont.TabIndex = 5
        Me.lblTelCont.Text = "* Teléfono de Contacto"
        '
        'lblOS
        '
        Me.lblOS.AutoSize = True
        Me.lblOS.Location = New System.Drawing.Point(6, 29)
        Me.lblOS.Name = "lblOS"
        Me.lblOS.Size = New System.Drawing.Size(69, 13)
        Me.lblOS.TabIndex = 6
        Me.lblOS.Text = "* Obra Social"
        '
        'lblPlan
        '
        Me.lblPlan.AutoSize = True
        Me.lblPlan.Location = New System.Drawing.Point(338, 29)
        Me.lblPlan.Name = "lblPlan"
        Me.lblPlan.Size = New System.Drawing.Size(35, 13)
        Me.lblPlan.TabIndex = 7
        Me.lblPlan.Text = "* Plan"
        '
        'lblNroAfiliado
        '
        Me.lblNroAfiliado.AutoSize = True
        Me.lblNroAfiliado.Location = New System.Drawing.Point(6, 68)
        Me.lblNroAfiliado.Name = "lblNroAfiliado"
        Me.lblNroAfiliado.Size = New System.Drawing.Size(103, 13)
        Me.lblNroAfiliado.TabIndex = 8
        Me.lblNroAfiliado.Text = "* Número de Afiliado"
        '
        'txtApellido
        '
        Me.txtApellido.Location = New System.Drawing.Point(156, 54)
        Me.txtApellido.Name = "txtApellido"
        Me.txtApellido.Size = New System.Drawing.Size(100, 20)
        Me.txtApellido.TabIndex = 10
        '
        'txtNombre
        '
        Me.txtNombre.Location = New System.Drawing.Point(485, 54)
        Me.txtNombre.Name = "txtNombre"
        Me.txtNombre.Size = New System.Drawing.Size(100, 20)
        Me.txtNombre.TabIndex = 11
        '
        'cmbSexo
        '
        Me.cmbSexo.DisplayMember = "1"
        Me.cmbSexo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbSexo.FormattingEnabled = True
        Me.cmbSexo.Items.AddRange(New Object() {"Masculino", "Femenino"})
        Me.cmbSexo.Location = New System.Drawing.Point(156, 80)
        Me.cmbSexo.Name = "cmbSexo"
        Me.cmbSexo.Size = New System.Drawing.Size(100, 21)
        Me.cmbSexo.TabIndex = 12
        Me.cmbSexo.ValueMember = "1"
        '
        'mtxtDOB
        '
        Me.mtxtDOB.Location = New System.Drawing.Point(485, 81)
        Me.mtxtDOB.Mask = "00/00/0000"
        Me.mtxtDOB.Name = "mtxtDOB"
        Me.mtxtDOB.Size = New System.Drawing.Size(67, 20)
        Me.mtxtDOB.TabIndex = 13
        Me.mtxtDOB.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.mtxtDOB.ValidatingType = GetType(Date)
        '
        'cmbOS
        '
        Me.cmbOS.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbOS.FormattingEnabled = True
        Me.cmbOS.Location = New System.Drawing.Point(147, 26)
        Me.cmbOS.Name = "cmbOS"
        Me.cmbOS.Size = New System.Drawing.Size(121, 21)
        Me.cmbOS.TabIndex = 15
        '
        'cmbPlan
        '
        Me.cmbPlan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbPlan.FormattingEnabled = True
        Me.cmbPlan.Location = New System.Drawing.Point(406, 26)
        Me.cmbPlan.Name = "cmbPlan"
        Me.cmbPlan.Size = New System.Drawing.Size(121, 21)
        Me.cmbPlan.TabIndex = 16
        '
        'txtNroAfiliado
        '
        Me.txtNroAfiliado.Location = New System.Drawing.Point(147, 65)
        Me.txtNroAfiliado.Name = "txtNroAfiliado"
        Me.txtNroAfiliado.Size = New System.Drawing.Size(100, 20)
        Me.txtNroAfiliado.TabIndex = 17
        '
        'grbPacientes
        '
        Me.grbPacientes.Controls.Add(Me.mtxtTelCont)
        Me.grbPacientes.Controls.Add(Me.mtxtDNI)
        Me.grbPacientes.Controls.Add(Me.lblMensaje)
        Me.grbPacientes.Controls.Add(Me.lblDNI)
        Me.grbPacientes.Controls.Add(Me.lblApellido)
        Me.grbPacientes.Controls.Add(Me.lblSexo)
        Me.grbPacientes.Controls.Add(Me.mtxtDOB)
        Me.grbPacientes.Controls.Add(Me.txtNombre)
        Me.grbPacientes.Controls.Add(Me.lblTelCont)
        Me.grbPacientes.Controls.Add(Me.lblDOB)
        Me.grbPacientes.Controls.Add(Me.cmbSexo)
        Me.grbPacientes.Controls.Add(Me.txtApellido)
        Me.grbPacientes.Controls.Add(Me.lblNombre)
        Me.grbPacientes.Location = New System.Drawing.Point(12, 0)
        Me.grbPacientes.Name = "grbPacientes"
        Me.grbPacientes.Size = New System.Drawing.Size(610, 148)
        Me.grbPacientes.TabIndex = 18
        Me.grbPacientes.TabStop = False
        Me.grbPacientes.Text = "Datos del paciente"
        '
        'mtxtTelCont
        '
        Me.mtxtTelCont.Location = New System.Drawing.Point(156, 110)
        Me.mtxtTelCont.Name = "mtxtTelCont"
        Me.mtxtTelCont.PromptChar = Global.Microsoft.VisualBasic.ChrW(32)
        Me.mtxtTelCont.Size = New System.Drawing.Size(100, 20)
        Me.mtxtTelCont.TabIndex = 17
        '
        'mtxtDNI
        '
        Me.mtxtDNI.Location = New System.Drawing.Point(156, 26)
        Me.mtxtDNI.Name = "mtxtDNI"
        Me.mtxtDNI.PromptChar = Global.Microsoft.VisualBasic.ChrW(32)
        Me.mtxtDNI.Size = New System.Drawing.Size(100, 20)
        Me.mtxtDNI.TabIndex = 16
        '
        'lblMensaje
        '
        Me.lblMensaje.AutoSize = True
        Me.lblMensaje.Location = New System.Drawing.Point(341, 29)
        Me.lblMensaje.Name = "lblMensaje"
        Me.lblMensaje.Size = New System.Drawing.Size(0, 13)
        Me.lblMensaje.TabIndex = 15
        '
        'grbOS
        '
        Me.grbOS.Controls.Add(Me.lblPlan)
        Me.grbOS.Controls.Add(Me.cmbPlan)
        Me.grbOS.Controls.Add(Me.txtNroAfiliado)
        Me.grbOS.Controls.Add(Me.lblOS)
        Me.grbOS.Controls.Add(Me.cmbOS)
        Me.grbOS.Controls.Add(Me.lblNroAfiliado)
        Me.grbOS.Location = New System.Drawing.Point(12, 165)
        Me.grbOS.Name = "grbOS"
        Me.grbOS.Size = New System.Drawing.Size(610, 97)
        Me.grbOS.TabIndex = 19
        Me.grbOS.TabStop = False
        Me.grbOS.Text = "Datos de Obra Social"
        '
        'cmdConsultar
        '
        Me.cmdConsultar.Location = New System.Drawing.Point(547, 268)
        Me.cmdConsultar.Name = "cmdConsultar"
        Me.cmdConsultar.Size = New System.Drawing.Size(75, 23)
        Me.cmdConsultar.TabIndex = 20
        Me.cmdConsultar.Text = "Consultar"
        Me.cmdConsultar.UseVisualStyleBackColor = True
        '
        'dgvPacientes
        '
        Me.dgvPacientes.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.DisplayedCells
        Me.dgvPacientes.ColumnHeadersHeight = 20
        Me.dgvPacientes.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.DNI, Me.Apellido, Me.Nombre, Me.Sexo, Me.DOB, Me.TelCont, Me.OS, Me.Plan, Me.NroAfiliado, Me.idPlan, Me.idOS})
        Me.dgvPacientes.Location = New System.Drawing.Point(12, 297)
        Me.dgvPacientes.Name = "dgvPacientes"
        Me.dgvPacientes.ReadOnly = True
        Me.dgvPacientes.RowHeadersWidth = 10
        Me.dgvPacientes.Size = New System.Drawing.Size(610, 150)
        Me.dgvPacientes.TabIndex = 21
        '
        'DNI
        '
        Me.DNI.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader
        Me.DNI.FillWeight = 70.0!
        Me.DNI.HeaderText = "     DNI     "
        Me.DNI.Name = "DNI"
        Me.DNI.ReadOnly = True
        Me.DNI.Resizable = System.Windows.Forms.DataGridViewTriState.[False]
        Me.DNI.Width = 81
        '
        'Apellido
        '
        Me.Apellido.HeaderText = "Apellido"
        Me.Apellido.Name = "Apellido"
        Me.Apellido.ReadOnly = True
        Me.Apellido.Width = 69
        '
        'Nombre
        '
        Me.Nombre.HeaderText = "Nombre"
        Me.Nombre.Name = "Nombre"
        Me.Nombre.ReadOnly = True
        Me.Nombre.Width = 69
        '
        'Sexo
        '
        Me.Sexo.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader
        Me.Sexo.HeaderText = "Sexo"
        Me.Sexo.Name = "Sexo"
        Me.Sexo.ReadOnly = True
        Me.Sexo.Width = 56
        '
        'DOB
        '
        Me.DOB.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None
        Me.DOB.HeaderText = "Fecha de Nacimiento"
        Me.DOB.Name = "DOB"
        Me.DOB.ReadOnly = True
        Me.DOB.Width = 133
        '
        'TelCont
        '
        Me.TelCont.HeaderText = "Teléfono"
        Me.TelCont.Name = "TelCont"
        Me.TelCont.ReadOnly = True
        Me.TelCont.Width = 74
        '
        'OS
        '
        Me.OS.HeaderText = "Obra Social"
        Me.OS.Name = "OS"
        Me.OS.ReadOnly = True
        Me.OS.Width = 87
        '
        'Plan
        '
        Me.Plan.HeaderText = "Plan"
        Me.Plan.Name = "Plan"
        Me.Plan.ReadOnly = True
        Me.Plan.Width = 53
        '
        'NroAfiliado
        '
        Me.NroAfiliado.HeaderText = "Número de Afiliado"
        Me.NroAfiliado.Name = "NroAfiliado"
        Me.NroAfiliado.ReadOnly = True
        Me.NroAfiliado.Width = 121
        '
        'idPlan
        '
        Me.idPlan.HeaderText = "idPlan"
        Me.idPlan.Name = "idPlan"
        Me.idPlan.ReadOnly = True
        Me.idPlan.Visible = False
        Me.idPlan.Width = 61
        '
        'idOS
        '
        Me.idOS.HeaderText = "idOS"
        Me.idOS.Name = "idOS"
        Me.idOS.ReadOnly = True
        Me.idOS.Visible = False
        Me.idOS.Width = 55
        '
        'cmdAgregar
        '
        Me.cmdAgregar.Location = New System.Drawing.Point(12, 470)
        Me.cmdAgregar.Name = "cmdAgregar"
        Me.cmdAgregar.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregar.TabIndex = 22
        Me.cmdAgregar.Text = "Agregar"
        Me.cmdAgregar.UseVisualStyleBackColor = True
        '
        'cmdModificar
        '
        Me.cmdModificar.Location = New System.Drawing.Point(114, 470)
        Me.cmdModificar.Name = "cmdModificar"
        Me.cmdModificar.Size = New System.Drawing.Size(75, 23)
        Me.cmdModificar.TabIndex = 23
        Me.cmdModificar.Text = "Mofidicar"
        Me.cmdModificar.UseVisualStyleBackColor = True
        '
        'cmdEliminar
        '
        Me.cmdEliminar.Location = New System.Drawing.Point(216, 470)
        Me.cmdEliminar.Name = "cmdEliminar"
        Me.cmdEliminar.Size = New System.Drawing.Size(75, 23)
        Me.cmdEliminar.TabIndex = 24
        Me.cmdEliminar.Text = "Eliminar"
        Me.cmdEliminar.UseVisualStyleBackColor = True
        '
        'cmdSalir
        '
        Me.cmdSalir.Location = New System.Drawing.Point(547, 470)
        Me.cmdSalir.Name = "cmdSalir"
        Me.cmdSalir.Size = New System.Drawing.Size(75, 23)
        Me.cmdSalir.TabIndex = 25
        Me.cmdSalir.Text = "Salir"
        Me.cmdSalir.UseVisualStyleBackColor = True
        '
        'cmdBorrarCampos
        '
        Me.cmdBorrarCampos.Location = New System.Drawing.Point(319, 470)
        Me.cmdBorrarCampos.Name = "cmdBorrarCampos"
        Me.cmdBorrarCampos.Size = New System.Drawing.Size(91, 23)
        Me.cmdBorrarCampos.TabIndex = 26
        Me.cmdBorrarCampos.Text = "Borrar campos"
        Me.cmdBorrarCampos.UseVisualStyleBackColor = True
        '
        'frmABMPacientes
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(634, 519)
        Me.Controls.Add(Me.cmdBorrarCampos)
        Me.Controls.Add(Me.cmdSalir)
        Me.Controls.Add(Me.cmdEliminar)
        Me.Controls.Add(Me.cmdModificar)
        Me.Controls.Add(Me.cmdAgregar)
        Me.Controls.Add(Me.dgvPacientes)
        Me.Controls.Add(Me.cmdConsultar)
        Me.Controls.Add(Me.grbPacientes)
        Me.Controls.Add(Me.grbOS)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmABMPacientes"
        Me.Text = "Pacientes"
        Me.grbPacientes.ResumeLayout(False)
        Me.grbPacientes.PerformLayout()
        Me.grbOS.ResumeLayout(False)
        Me.grbOS.PerformLayout()
        CType(Me.dgvPacientes, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents lblDNI As System.Windows.Forms.Label
    Friend WithEvents lblDOB As System.Windows.Forms.Label
    Friend WithEvents lblSexo As System.Windows.Forms.Label
    Friend WithEvents lblNombre As System.Windows.Forms.Label
    Friend WithEvents lblApellido As System.Windows.Forms.Label
    Friend WithEvents lblTelCont As System.Windows.Forms.Label
    Friend WithEvents lblOS As System.Windows.Forms.Label
    Friend WithEvents lblPlan As System.Windows.Forms.Label
    Friend WithEvents lblNroAfiliado As System.Windows.Forms.Label
    Friend WithEvents txtApellido As System.Windows.Forms.TextBox
    Friend WithEvents txtNombre As System.Windows.Forms.TextBox
    Friend WithEvents cmbSexo As System.Windows.Forms.ComboBox
    Friend WithEvents mtxtDOB As System.Windows.Forms.MaskedTextBox
    Friend WithEvents cmbOS As System.Windows.Forms.ComboBox
    Friend WithEvents cmbPlan As System.Windows.Forms.ComboBox
    Friend WithEvents txtNroAfiliado As System.Windows.Forms.TextBox
    Friend WithEvents grbPacientes As System.Windows.Forms.GroupBox
    Friend WithEvents grbOS As System.Windows.Forms.GroupBox
    Friend WithEvents cmdConsultar As System.Windows.Forms.Button
    Friend WithEvents dgvPacientes As System.Windows.Forms.DataGridView
    Friend WithEvents cmdAgregar As System.Windows.Forms.Button
    Friend WithEvents cmdModificar As System.Windows.Forms.Button
    Friend WithEvents cmdEliminar As System.Windows.Forms.Button
    Friend WithEvents cmdSalir As System.Windows.Forms.Button
    Friend WithEvents lblMensaje As System.Windows.Forms.Label
    Friend WithEvents mtxtDNI As System.Windows.Forms.MaskedTextBox
    Friend WithEvents cmdBorrarCampos As System.Windows.Forms.Button
    Friend WithEvents mtxtTelCont As System.Windows.Forms.MaskedTextBox
    Friend WithEvents DNI As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Apellido As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Nombre As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Sexo As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DOB As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents TelCont As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents OS As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Plan As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents NroAfiliado As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents idPlan As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents idOS As System.Windows.Forms.DataGridViewTextBoxColumn

End Class
