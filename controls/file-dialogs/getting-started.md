---
title: Getting Started
page_title: Getting Started - WinForms File Dialogs
description: WinForms File Dialogs represent the three most commonly used file and folder manipulation dialogs
slug: winforms/file-dialogs/getting-started
tags: filedialogs, started
published: True
position: 2 
---

# Getting Started with WinForms File Dialogs 

This article shows how you can start using **Rad FileDialogs**.

## Adding Telerik Assemblies Using NuGet

To use `Rad FileDialogs` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the Rad FileDialogs

The following tutorial demonstrates how to specify a file name by using a **RadSaveFileDialog**, how to allow you to specify one or multiple folder names to open with the **RadOpenFolderDialog** and how to specify one or multiple file names to open with a **RadOpenFileDialog**.

1. Add three **RadLabel** and three **RadButton** controls.

2. Double-click each button in order to generate the **Click** event handler automatically.

####  How to use the file dialogs

{{source=..\SamplesCS\FileDialogs\FileDialogsEditingOptions.cs region=GettingStartedExample}} 
{{source=..\SamplesVB\FileDialogs\FileDialogsEditingOptions.vb region=GettingStartedExample}}

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

{{endregion}} 

This is it! Now you can select a file name or open a folder.

## See Also

* [Structure]({%slug winforms/file-dialogs/structure%})
* [Network Locations]({%slug winforms/file-dialogs/features/network-locations%})
* [Filterng]({%slug winforms/file-dialogs/features/filtering%}) 
* [Error Handling]({%slug winforms/file-dialogs/features/error-handling%})
* [Explorer Control]({%slug winforms/file-dialogs/dialog-controls/explorer-control%})
* [RadOpenFileDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfiledialog%})
* [RadOpenFolderDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfolderdialog%})
* [RadSaveFileDialog]({%slug winforms/file-dialogs/dialog-controls/radsavefiledialog%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms FileDialogs Component](https://www.telerik.com/products/winforms/file-dialogs.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

