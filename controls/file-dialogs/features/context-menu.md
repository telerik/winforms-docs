---
title: Context Menu
page_title: Context Menu - File Dialogs
description: Similar to Windows FileExplorer, the Telerik **ExplorerControl** also shows the standard Windows context menu
slug: file-dialogs-context-menu
tags: filedialogs, menu
published: True
position: 9 
---

# Context Menu

Similar to Windows FileExplorer, the Telerik **ExplorerControl** also shows the standard Windows context menu:

![WinForms RadFileDialogs Context Menu](images/file-dialogs-context-menu001.png)

>important You cannot modify files/folders context menu but you can choose to cancel its opening or modify the empty space context menu items.

The **ShellContextMenuOpening** event occurs when the context menu is about to open. You can use it to cancel the menu opening or to add/remove options from the short menu (the one opened when the cursor is on an empty space in the explorer).


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

