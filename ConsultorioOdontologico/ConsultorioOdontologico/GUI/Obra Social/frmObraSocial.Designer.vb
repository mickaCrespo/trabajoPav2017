<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmObraSocial
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
        Me.grbOS = New System.Windows.Forms.GroupBox()
        Me.cmbNombreOS = New System.Windows.Forms.ComboBox()
        Me.lblNombreOS = New System.Windows.Forms.Label()
        Me.cmdAgregarOS = New System.Windows.Forms.Button()
        Me.grbPlan = New System.Windows.Forms.GroupBox()
        Me.cmbNombrePlan = New System.Windows.Forms.ComboBox()
        Me.lblNombrePlan = New System.Windows.Forms.Label()
        Me.cmdAgregarPlan = New System.Windows.Forms.Button()
        Me.dgvPrestaciones = New System.Windows.Forms.DataGridView()
        Me.idPlanUsado = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.idObraSocial = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.idPrestacion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.nombrePrestacion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.descripcion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.precio = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.montoCubierto = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.duracion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.cmdAgregarPrestacion = New System.Windows.Forms.Button()
        Me.lblPrestacionesXPlan = New System.Windows.Forms.Label()
        Me.cmdActualizar = New System.Windows.Forms.Button()
        Me.grbOS.SuspendLayout()
        Me.grbPlan.SuspendLayout()
        CType(Me.dgvPrestaciones, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'grbOS
        '
        Me.grbOS.Controls.Add(Me.cmbNombreOS)
        Me.grbOS.Controls.Add(Me.lblNombreOS)
        Me.grbOS.Controls.Add(Me.cmdAgregarOS)
        Me.grbOS.Location = New System.Drawing.Point(12, 12)
        Me.grbOS.Name = "grbOS"
        Me.grbOS.Size = New System.Drawing.Size(610, 68)
        Me.grbOS.TabIndex = 0
        Me.grbOS.TabStop = False
        Me.grbOS.Text = "Obra Social"
        '
        'cmbNombreOS
        '
        Me.cmbNombreOS.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbNombreOS.FormattingEnabled = True
        Me.cmbNombreOS.Location = New System.Drawing.Point(114, 24)
        Me.cmbNombreOS.Name = "cmbNombreOS"
        Me.cmbNombreOS.Size = New System.Drawing.Size(121, 21)
        Me.cmbNombreOS.TabIndex = 5
        '
        'lblNombreOS
        '
        Me.lblNombreOS.AutoSize = True
        Me.lblNombreOS.Location = New System.Drawing.Point(29, 27)
        Me.lblNombreOS.Name = "lblNombreOS"
        Me.lblNombreOS.Size = New System.Drawing.Size(51, 13)
        Me.lblNombreOS.TabIndex = 2
        Me.lblNombreOS.Text = "* Nombre"
        '
        'cmdAgregarOS
        '
        Me.cmdAgregarOS.Location = New System.Drawing.Point(405, 19)
        Me.cmdAgregarOS.Name = "cmdAgregarOS"
        Me.cmdAgregarOS.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregarOS.TabIndex = 4
        Me.cmdAgregarOS.Text = "Agregar"
        Me.cmdAgregarOS.UseVisualStyleBackColor = True
        '
        'grbPlan
        '
        Me.grbPlan.Controls.Add(Me.cmbNombrePlan)
        Me.grbPlan.Controls.Add(Me.lblNombrePlan)
        Me.grbPlan.Controls.Add(Me.cmdAgregarPlan)
        Me.grbPlan.Location = New System.Drawing.Point(12, 97)
        Me.grbPlan.Name = "grbPlan"
        Me.grbPlan.Size = New System.Drawing.Size(610, 81)
        Me.grbPlan.TabIndex = 1
        Me.grbPlan.TabStop = False
        Me.grbPlan.Text = "Plan"
        '
        'cmbNombrePlan
        '
        Me.cmbNombrePlan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbNombrePlan.FormattingEnabled = True
        Me.cmbNombrePlan.Location = New System.Drawing.Point(114, 29)
        Me.cmbNombrePlan.Name = "cmbNombrePlan"
        Me.cmbNombrePlan.Size = New System.Drawing.Size(121, 21)
        Me.cmbNombrePlan.TabIndex = 6
        '
        'lblNombrePlan
        '
        Me.lblNombrePlan.AutoSize = True
        Me.lblNombrePlan.Location = New System.Drawing.Point(29, 32)
        Me.lblNombrePlan.Name = "lblNombrePlan"
        Me.lblNombrePlan.Size = New System.Drawing.Size(51, 13)
        Me.lblNombrePlan.TabIndex = 2
        Me.lblNombrePlan.Text = "* Nombre"
        '
        'cmdAgregarPlan
        '
        Me.cmdAgregarPlan.Location = New System.Drawing.Point(405, 32)
        Me.cmdAgregarPlan.Name = "cmdAgregarPlan"
        Me.cmdAgregarPlan.Size = New System.Drawing.Size(75, 23)
        Me.cmdAgregarPlan.TabIndex = 5
        Me.cmdAgregarPlan.Text = "Agregar"
        Me.cmdAgregarPlan.UseVisualStyleBackColor = True
        '
        'dgvPrestaciones
        '
        Me.dgvPrestaciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvPrestaciones.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idPlanUsado, Me.idObraSocial, Me.idPrestacion, Me.nombrePrestacion, Me.descripcion, Me.precio, Me.montoCubierto, Me.duracion})
        Me.dgvPrestaciones.Location = New System.Drawing.Point(12, 216)
        Me.dgvPrestaciones.Name = "dgvPrestaciones"
        Me.dgvPrestaciones.ReadOnly = True
        Me.dgvPrestaciones.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.dgvPrestaciones.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders
        Me.dgvPrestaciones.Size = New System.Drawing.Size(606, 233)
        Me.dgvPrestaciones.TabIndex = 3
        '
        'idPlanUsado
        '
        Me.idPlanUsado.HeaderText = "idPlanUsado"
        Me.idPlanUsado.Name = "idPlanUsado"
        Me.idPlanUsado.ReadOnly = True
        Me.idPlanUsado.Visible = False
        '
        'idObraSocial
        '
        Me.idObraSocial.HeaderText = "idOS"
        Me.idObraSocial.Name = "idObraSocial"
        Me.idObraSocial.ReadOnly = True
        Me.idObraSocial.Visible = False
        '
        'idPrestacion
        '
        Me.idPrestacion.HeaderText = "idPrestacion"
        Me.idPrestacion.Name = "idPrestacion"
        Me.idPrestacion.ReadOnly = True
        Me.idPrestacion.Visible = False
        '
        'nombrePrestacion
        '
        Me.nombrePrestacion.HeaderText = "Nombre"
        Me.nombrePrestacion.Name = "nombrePrestacion"
        Me.nombrePrestacion.ReadOnly = True
        '
        'descripcion
        '
        Me.descripcion.HeaderText = "Descripcion"
        Me.descripcion.Name = "descripcion"
        Me.descripcion.ReadOnly = True
        '
        'precio
        '
        Me.precio.HeaderText = "Precio"
        Me.precio.Name = "precio"
        Me.precio.ReadOnly = True
        '
        'montoCubierto
        '
        Me.montoCubierto.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill
        Me.montoCubierto.HeaderText = "Monto Cubierto"
        Me.montoCubierto.Name = "montoCubierto"
        Me.montoCubierto.ReadOnly = True
        '
        'duracion
        '
        Me.duracion.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader
        Me.duracion.HeaderText = "Duracion (turnos)"
        Me.duracion.Name = "duracion"
        Me.duracion.ReadOnly = True
        Me.duracion.Width = 104
        '
        'cmdAgregarPrestacion
        '
        Me.cmdAgregarPrestacion.Location = New System.Drawing.Point(404, 467)
        Me.cmdAgregarPrestacion.Name = "cmdAgregarPrestacion"
        Me.cmdAgregarPrestacion.Size = New System.Drawing.Size(108, 23)
        Me.cmdAgregarPrestacion.TabIndex = 6
        Me.cmdAgregarPrestacion.Text = "Agregar Prestacion"
        Me.cmdAgregarPrestacion.UseVisualStyleBackColor = True
        '
        'lblPrestacionesXPlan
        '
        Me.lblPrestacionesXPlan.AutoSize = True
        Me.lblPrestacionesXPlan.Location = New System.Drawing.Point(9, 200)
        Me.lblPrestacionesXPlan.Name = "lblPrestacionesXPlan"
        Me.lblPrestacionesXPlan.Size = New System.Drawing.Size(109, 13)
        Me.lblPrestacionesXPlan.TabIndex = 8
        Me.lblPrestacionesXPlan.Text = "Prestaciones por plan"
        '
        'cmdActualizar
        '
        Me.cmdActualizar.Location = New System.Drawing.Point(542, 467)
        Me.cmdActualizar.Name = "cmdActualizar"
        Me.cmdActualizar.Size = New System.Drawing.Size(76, 23)
        Me.cmdActualizar.TabIndex = 10
        Me.cmdActualizar.Text = "Actualizar"
        Me.cmdActualizar.UseVisualStyleBackColor = True
        '
        'frmObraSocial
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(634, 519)
        Me.Controls.Add(Me.cmdActualizar)
        Me.Controls.Add(Me.lblPrestacionesXPlan)
        Me.Controls.Add(Me.cmdAgregarPrestacion)
        Me.Controls.Add(Me.dgvPrestaciones)
        Me.Controls.Add(Me.grbPlan)
        Me.Controls.Add(Me.grbOS)
        Me.Name = "frmObraSocial"
        Me.Text = "Obras Sociales"
        Me.grbOS.ResumeLayout(False)
        Me.grbOS.PerformLayout()
        Me.grbPlan.ResumeLayout(False)
        Me.grbPlan.PerformLayout()
        CType(Me.dgvPrestaciones, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents grbOS As System.Windows.Forms.GroupBox
    Friend WithEvents grbPlan As System.Windows.Forms.GroupBox
    Friend WithEvents dgvPrestaciones As System.Windows.Forms.DataGridView
    Friend WithEvents lblNombreOS As System.Windows.Forms.Label
    Friend WithEvents lblNombrePlan As System.Windows.Forms.Label
    Friend WithEvents cmdAgregarPlan As System.Windows.Forms.Button
    Friend WithEvents cmdAgregarPrestacion As System.Windows.Forms.Button
    Friend WithEvents lblPrestacionesXPlan As System.Windows.Forms.Label
    Friend WithEvents cmbNombreOS As System.Windows.Forms.ComboBox
    Friend WithEvents cmbNombrePlan As System.Windows.Forms.ComboBox
    Friend WithEvents cmdActualizar As System.Windows.Forms.Button
    Friend WithEvents idPlanUsado As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents idObraSocial As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents idPrestacion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents nombrePrestacion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents descripcion As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents precio As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents montoCubierto As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents duracion As System.Windows.Forms.DataGridViewTextBoxColumn
    Public WithEvents cmdAgregarOS As System.Windows.Forms.Button
End Class
