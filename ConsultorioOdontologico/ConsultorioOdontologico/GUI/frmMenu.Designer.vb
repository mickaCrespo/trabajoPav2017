<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmMenu
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmMenu))
        Me.cmdPacientes = New System.Windows.Forms.Button()
        Me.cmdTurnos = New System.Windows.Forms.Button()
        Me.cmdInformes = New System.Windows.Forms.Button()
        Me.cmdOdontologos = New System.Windows.Forms.Button()
        Me.cmdFacturacion = New System.Windows.Forms.Button()
        Me.cmdOS = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'cmdPacientes
        '
        Me.cmdPacientes.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdPacientes.Location = New System.Drawing.Point(12, 74)
        Me.cmdPacientes.Name = "cmdPacientes"
        Me.cmdPacientes.Size = New System.Drawing.Size(113, 50)
        Me.cmdPacientes.TabIndex = 1
        Me.cmdPacientes.Text = "Pacientes"
        Me.cmdPacientes.UseVisualStyleBackColor = True
        '
        'cmdTurnos
        '
        Me.cmdTurnos.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdTurnos.Location = New System.Drawing.Point(12, 166)
        Me.cmdTurnos.Name = "cmdTurnos"
        Me.cmdTurnos.Size = New System.Drawing.Size(113, 50)
        Me.cmdTurnos.TabIndex = 2
        Me.cmdTurnos.Text = "Turnos"
        Me.cmdTurnos.UseVisualStyleBackColor = True
        '
        'cmdInformes
        '
        Me.cmdInformes.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdInformes.Location = New System.Drawing.Point(12, 260)
        Me.cmdInformes.Name = "cmdInformes"
        Me.cmdInformes.Size = New System.Drawing.Size(113, 50)
        Me.cmdInformes.TabIndex = 3
        Me.cmdInformes.Text = "Informes"
        Me.cmdInformes.UseVisualStyleBackColor = True
        '
        'cmdOdontologos
        '
        Me.cmdOdontologos.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdOdontologos.Location = New System.Drawing.Point(485, 260)
        Me.cmdOdontologos.Name = "cmdOdontologos"
        Me.cmdOdontologos.Size = New System.Drawing.Size(113, 50)
        Me.cmdOdontologos.TabIndex = 4
        Me.cmdOdontologos.Text = "Odontólogos"
        Me.cmdOdontologos.UseVisualStyleBackColor = True
        '
        'cmdFacturacion
        '
        Me.cmdFacturacion.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdFacturacion.Location = New System.Drawing.Point(485, 74)
        Me.cmdFacturacion.Name = "cmdFacturacion"
        Me.cmdFacturacion.Size = New System.Drawing.Size(113, 50)
        Me.cmdFacturacion.TabIndex = 5
        Me.cmdFacturacion.Text = "Facturación"
        Me.cmdFacturacion.UseVisualStyleBackColor = True
        '
        'cmdOS
        '
        Me.cmdOS.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdOS.Location = New System.Drawing.Point(485, 166)
        Me.cmdOS.Name = "cmdOS"
        Me.cmdOS.Size = New System.Drawing.Size(113, 50)
        Me.cmdOS.TabIndex = 6
        Me.cmdOS.Text = "Obras Sociales"
        Me.cmdOS.UseVisualStyleBackColor = True
        '
        'frmMenu
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center
        Me.ClientSize = New System.Drawing.Size(619, 406)
        Me.Controls.Add(Me.cmdOS)
        Me.Controls.Add(Me.cmdFacturacion)
        Me.Controls.Add(Me.cmdOdontologos)
        Me.Controls.Add(Me.cmdInformes)
        Me.Controls.Add(Me.cmdTurnos)
        Me.Controls.Add(Me.cmdPacientes)
        Me.DoubleBuffered = True
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmMenu"
        Me.Text = "Consultorio Odontologico SC"
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents cmdPacientes As System.Windows.Forms.Button
    Friend WithEvents cmdTurnos As System.Windows.Forms.Button
    Friend WithEvents cmdInformes As System.Windows.Forms.Button
    Friend WithEvents cmdOdontologos As System.Windows.Forms.Button
    Friend WithEvents cmdFacturacion As System.Windows.Forms.Button
    Friend WithEvents cmdOS As System.Windows.Forms.Button
End Class
