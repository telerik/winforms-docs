namespace Common
{
	partial class Form1
	{
		/// <summary>
		///  Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		///  Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		///  Required method for Designer support - do not modify
		///  the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			radaiPrompt1 = new Telerik.WinControls.UI.RadAIPrompt();
			((System.ComponentModel.ISupportInitialize)radaiPrompt1).BeginInit();
			SuspendLayout();
			// 
			// radaiPrompt1
			// 
			radaiPrompt1.Location = new Point(13, 13);
			radaiPrompt1.Margin = new Padding(4, 4, 4, 4);
			radaiPrompt1.Name = "radaiPrompt1";
			radaiPrompt1.Size = new Size(500, 450);
			radaiPrompt1.TabIndex = 0;
			// 
			// Form1
			// 
			AutoScaleDimensions = new SizeF(8F, 20F);
			AutoScaleMode = AutoScaleMode.Font;
			ClientSize = new Size(904, 588);
			Controls.Add(radaiPrompt1);
			Name = "Form1";
			Text = "Form1";
			((System.ComponentModel.ISupportInitialize)radaiPrompt1).EndInit();
			ResumeLayout(false);
		}

		#endregion

		private Telerik.WinControls.UI.RadAIPrompt radaiPrompt1;
	}
}
