---
title: Getting Started
page_title: Getting Started - WinForms File Dialogs
description: WinForms File Dialogs represent the three most commonly used file and folder manipulation dialogs
slug: winforms/file-dialogs/getting-started
tags: filedialogs, started
published: True
position: 2 
---

# Getting Started 

The following tutorial demonstrates how to specify a file name by using a **RadSaveFileDialog**, how to allow you to specify one or multiple folder names to open with the **RadOpenFolderDialog** and how to specify one or multiple file names to open with a **RadOpenFileDialog**.

1. Add three **RadLabel** and three **RadButton** controls.

2. Double-click each button in order to generate the **Click** event handler automatically.

####  How to use the file dialogs

{{source=..\SamplesCS\Filedialogs\FiledialogEditingOptions.cs region=GettingStartedExample}} 
{{source=..\SamplesVB\FileDialogs\FileDialogEditingOptions.vb region=GettingStartedExample}}

````C#

	private void radButton1_Click(object sender, EventArgs e)
	{
		RadOpenFolderDialog openFolderDialog = new RadOpenFolderDialog();
		openFolderDialog.ShowDialog();
		if (openFolderDialog.OpenFolderDialogForm.DialogResult == System.Windows.Forms.DialogResult.OK)
		{
			string folderName = openFolderDialog.FileName;
			this.radLabel1.Text = folderName;
		}
	}

	private void radButton2_Click(object sender, EventArgs e)
	{
		RadOpenFileDialog openFileDialog = new RadOpenFileDialog();
		openFileDialog.ShowDialog();

		if (openFileDialog.OpenFileDialogForm.DialogResult == System.Windows.Forms.DialogResult.OK)
		{
			string fileName = openFileDialog.FileName;
			this.radLabel2.Text = fileName;
		}
	}

	private void radButton3_Click(object sender, EventArgs e)
	{
		RadSaveFileDialog saveFileDialog = new RadSaveFileDialog();
		saveFileDialog.ShowDialog();
		if (saveFileDialog.SaveFileDialogForm.DialogResult == System.Windows.Forms.DialogResult.OK)
		{
			string selectedFileName = saveFileDialog.FileName;
			this.radLabel3.Text = selectedFileName;
		}
	}
	
	
````
````VB.NET

	Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim openFolderDialog As RadOpenFolderDialog = New RadOpenFolderDialog()
        openFolderDialog.ShowDialog()

        If openFolderDialog.OpenFolderDialogForm.DialogResult = System.Windows.Forms.DialogResult.OK Then
            Dim folderName As String = openFolderDialog.FileName
            Me.radLabel1.Text = folderName
        End If
    End Sub

    Private Sub radButton2_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim openFileDialog As RadOpenFileDialog = New RadOpenFileDialog()
        openFileDialog.ShowDialog()

        If openFileDialog.OpenFileDialogForm.DialogResult = System.Windows.Forms.DialogResult.OK Then
            Dim fileName As String = openFileDialog.FileName
            Me.radLabel2.Text = fileName
        End If
    End Sub

    Private Sub radButton3_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim saveFileDialog As RadSaveFileDialog = New RadSaveFileDialog()
        saveFileDialog.ShowDialog()

        If saveFileDialog.SaveFileDialogForm.DialogResult = System.Windows.Forms.DialogResult.OK Then
            Dim selectedFileName As String = saveFileDialog.FileName
            Me.radLabel3.Text = selectedFileName
        End If
    End Sub


````


This is it! Now you can select a file name or open a folder.

# See Also

* [Structure]({%slug winforms/file-dialogs/structure%})
* [Network Locations]({%slug winforms/file-dialogs/features/network-locations%})
* [Filterng]({%slug winforms/file-dialogs/features/filtering%}) 
* [Error Handling]({%slug winforms/file-dialogs/features/error-handling%})
* [Explorer Control]({%slug winforms/file-dialogs/dialog-controls/explorer-control%})
* [RadOpenFileDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfiledialog%})
* [RadOpenFolderDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfolderdialog%})
* [RadSaveFileDialog]({%slug winforms/file-dialogs/dialog-controls/radsavefiledialog%})