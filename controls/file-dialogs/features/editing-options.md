---
title: Editing Options
page_title: Editing Options | File Dialogs
description: File Dialogs represent the three most commonly used file and folder manipulation dialogs
slug: file-dialogs-editing-options
tags: filedialogs, editing, options
published: True
position: 8 
---

# Editing Options

As of **R1 2020 SP1** all file dialogs and the **ExplorerControl** offer the **EditingOptions** property. It determines how the files and folders in the **ExplorerControl** can be edited. Setting **EditingOptions** will determine which edit operations can be performed  via keyboard keys and "NewFolder" button.

>note Note that the shell context menu and drag and drop operations are handled separately.

The available **EditingOptions** are listed below:

|Editing Option|Description|
|----|----|
|**None**|Editing is not allowed.|
|**Cut**|Cut is enabled.|
|**Copy**|Copy is enabled.|
|**Paste**|Paste is enabled.|
|**Delete**|Delete is enabled.|
|**Rename**|Rename is enabled.|
|**NewFolder**|New folder is enabled.|
|**All**|All options in the menu are available.|


#### Set multiple EditinOptions limitations 

{{source=..\SamplesCS\FileDialogs\FileDialogsEditingOptions.cs region=Limit}}
{{source=..\SamplesVB\FileDialogs\FileDialogsEditingOptions.vb region=Limit}}

````C#
            RadOpenFolderDialog openFolderDialog = new RadOpenFolderDialog();
            openFolderDialog.EditingOptions = Telerik.WinControls.FileDialogs.EditingOptions.All;
            openFolderDialog.EditingOptions ^= (EditingOptions.NewFolder | EditingOptions.Rename);
            openFolderDialog.ShowDialog();

````
````VB.NET
        Dim openFolderDialog As RadOpenFolderDialog = New RadOpenFolderDialog()
        openFolderDialog.EditingOptions = Telerik.WinControls.FileDialogs.EditingOptions.All
        openFolderDialog.EditingOptions = openFolderDialog.EditingOptions Xor (EditingOptions.NewFolder Or EditingOptions.Rename)
        openFolderDialog.ShowDialog()

````

{{endregion}} 

Even though you specify the **EditingOptions**, the end-user is still allowed to drag and drop the files. If you want to disable drag and drop operations you should set explicitly the **IsDragDropEnabled** property of the **ExplorerControl** to *false*.
 
#### Disable drag and drop operations

{{source=..\SamplesCS\FileDialogs\FileDialogsEditingOptions.cs region=DisableDragDrop}}
{{source=..\SamplesVB\FileDialogs\FileDialogsEditingOptions.vb region=DisableDragDrop}}

````C#
    openFolderDialog.OpenFolderDialogForm.ExplorerControl.IsDragDropEnabled = false;    

````
````VB.NET
	openFolderDialog.OpenFolderDialogForm.ExplorerControl.IsDragDropEnabled = False

````

{{endregion}} 


You cannot modify files/folders context menu but you can choose to cancel its opening. You can, however, modify the empty space context menu items as follows:

#### Modify ShellContextMenu

{{source=..\SamplesCS\FileDialogs\FileDialogsEditingOptions.cs region=Menu}}
{{source=..\SamplesVB\FileDialogs\FileDialogsEditingOptions.vb region=Menu}}

````C#
           private void RadForm_Load(object sender, EventArgs e)
        {
            RadOpenFolderDialog openFolderDialog = new RadOpenFolderDialog();
            openFolderDialog.OpenFolderDialogForm.ExplorerControl.ShellContextMenuOpening += ExplorerControl_ShellContextMenuOpening;
        }

        private void ExplorerControl_ShellContextMenuOpening(object sender, Telerik.WinControls.FileDialogs.ContextMenuOpeningEventArgs e)
        {
            e.Cancel = true;

            if (e.IsOpeningOnEmptySpace)
            {
                e.Cancel = false;
                e.ShortContextMenuOptions = ShortContextMenuOptions.NewFolder | ShortContextMenuOptions.View;
            }
        }     

````
````VB.NET
	     Private Sub RadForm_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim openFolderDialog As RadOpenFolderDialog = New RadOpenFolderDialog()
        AddHandler openFolderDialog.OpenFolderDialogForm.ExplorerControl.ShellContextMenuOpening, AddressOf ExplorerControl_ShellContextMenuOpening
    End Sub

    Private Sub ExplorerControl_ShellContextMenuOpening(ByVal sender As Object, ByVal e As Telerik.WinControls.FileDialogs.ContextMenuOpeningEventArgs)
        e.Cancel = True

        If e.IsOpeningOnEmptySpace Then
            e.Cancel = False
            e.ShortContextMenuOptions = ShortContextMenuOptions.NewFolder Or ShortContextMenuOptions.View
        End If
    End Sub

````

{{endregion}}


