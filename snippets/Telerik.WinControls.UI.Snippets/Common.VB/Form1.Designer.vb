<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
	Inherits System.Windows.Forms.Form

	'Form overrides dispose to clean up the component list.
	<System.Diagnostics.DebuggerNonUserCode()>
	Protected Overrides Sub Dispose(disposing As Boolean)
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
	<System.Diagnostics.DebuggerStepThrough()>
	Private Sub InitializeComponent()
		RadaiPrompt1 = New Telerik.WinControls.UI.RadAIPrompt()
		CType(RadaiPrompt1, ComponentModel.ISupportInitialize).BeginInit()
		SuspendLayout()
		' 
		' RadaiPrompt1
		' 
		RadaiPrompt1.Location = New Point(18, 14)
		RadaiPrompt1.Margin = New Padding(4, 4, 4, 4)
		RadaiPrompt1.Name = "RadaiPrompt1"
		RadaiPrompt1.Size = New Size(500, 450)
		RadaiPrompt1.TabIndex = 0
		' 
		' Form1
		' 
		AutoScaleDimensions = New SizeF(8F, 20F)
		AutoScaleMode = AutoScaleMode.Font
		ClientSize = New Size(800, 450)
		Controls.Add(RadaiPrompt1)
		Name = "Form1"
		Text = "Form1"
		CType(RadaiPrompt1, ComponentModel.ISupportInitialize).EndInit()
		ResumeLayout(False)
	End Sub

	Friend WithEvents RadaiPrompt1 As Telerik.WinControls.UI.RadAIPrompt

End Class
