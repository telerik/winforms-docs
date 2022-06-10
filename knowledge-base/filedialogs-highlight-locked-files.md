---
title: How to Highlight Locked Files and Display Tooltip for these Files.
description: Notify user that a file is used by another process.
type: how-to
page_title: Highlight Locked Files and Display Tooltip 
slug: filedialogs-highlight-locked-files
position: 
tags: lock, process, filedialogs, tooltip
ticketid: 1564699
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.2.511|File Dialogs for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

A common requirement in File Dialogs is to highlight a file that has been locked by another process. In the next section we will demonstrate how we can do that.


## Solution

To highlight a file that has been locked by another process, we can subscribe to the Shown() event of the file dialogs. For the purpose of this example we are going to use RadOpenFileDialog and set the ViewType of the ExplorerControl to DeailtsView. Then we can subscribe to the VisualItemFormatting event of the RadListView part. Inside the event handler we can check if a file is locked by trying to open it. Here we can change the BackColor of the __VisualItem__ if we can't open it.

![filedialogs-highlight-locked-files](images/filedialogs-highlight-locked-files.png)

````C#

public Form1()
{
    InitializeComponent();
    RadOpenFileDialog openFileDialog = new RadOpenFileDialog();
    openFileDialog.OpenFileDialogForm.Shown += OpenFileDialogForm_Shown;
    openFileDialog.ShowDialog();
}

private void OpenFileDialogForm_Shown(object sender, EventArgs e)
{
    var dialog = sender as RadOpenFileDialogForm;
    var listView = dialog.ExplorerControl.FileBrowserListView;
    listView.VisualItemFormatting += ListView_VisualItemFormatting;
    dialog.ExplorerControl.FileBrowserListView.ViewType = ListViewType.DetailsView;           
}

private void ListView_VisualItemFormatting(object sender, ListViewVisualItemEventArgs e)
{
    if (e.VisualItem is DetailListViewVisualItem)
    {
        var visualItem = e.VisualItem as DetailListViewVisualItem;
        var fileInfoWrapper = visualItem.Data.DataBoundItem as FileInfoWrapper;
        if (fileInfoWrapper != null)
        {
            var isLocked = IsFileLocked(new FileInfo(fileInfoWrapper.Path));
            if (isLocked)
            {
                e.VisualItem.BackColor = Color.Red;
                e.VisualItem.ToolTipText = "The File is used in another process";
            }
        }
    }
}
public bool IsFileLocked(FileInfo file)
{
    var stream = (FileStream)null;
    try
    {
        stream = file.Open(FileMode.Open, FileAccess.ReadWrite, FileShare.None);
    }
    catch (IOException ex)
    {
        //handle the exception your way
        return true;
    }
    finally
    {
        if (stream != null)
        {
            stream.Close();
        }
    }
    return false;
}


````
````VB.NET

Public Sub New()
	InitializeComponent()
	Dim openFileDialog As RadOpenFileDialog = New RadOpenFileDialog()
	AddHandler openFileDialog.OpenFileDialogForm.Shown, AddressOf OpenFileDialogForm_Shown
	openFileDialog.ShowDialog()
End Sub

Private Sub OpenFileDialogForm_Shown(ByVal sender As Object, ByVal e As EventArgs)
	Dim dialog = TryCast(sender, RadOpenFileDialogForm)
	Dim listView = dialog.ExplorerControl.FileBrowserListView
	AddHandler listView.VisualItemFormatting, AddressOf ListView_VisualItemFormatting
	dialog.ExplorerControl.FileBrowserListView.ViewType = ListViewType.DetailsView
End Sub

Private Sub ListView_VisualItemFormatting(ByVal sender As Object, ByVal e As ListViewVisualItemEventArgs)
	If TypeOf e.VisualItem Is DetailListViewVisualItem Then
		Dim visualItem = TryCast(e.VisualItem, DetailListViewVisualItem)
		Dim fileInfoWrapper = TryCast(visualItem.Data.DataBoundItem, FileInfoWrapper)

		If fileInfoWrapper IsNot Nothing Then
			Dim isLocked = IsFileLocked(New FileInfo(fileInfoWrapper.Path))

			If isLocked Then
				e.VisualItem.BackColor = Color.Red
				e.VisualItem.ToolTipText = "The File is used in another process"
			End If
		End If
	End If
End Sub

Public Function IsFileLocked(ByVal file As FileInfo) As Boolean
	Dim stream = CType(Nothing, FileStream)

	Try
		stream = file.Open(FileMode.Open, FileAccess.ReadWrite, FileShare.None)
	Catch ex As IOException
		Return True
	Finally

		If stream IsNot Nothing Then
			stream.Close()
		End If
	End Try

	Return False
End Function



````