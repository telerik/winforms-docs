---
title: How to Improve File Dialogs' Performance
description: This article demonstrates how to improve the performance of File Dialogs
type: how-to
page_title:  
slug: improve-filedialogs-performance
position: 0
tags: filedialogs, file, dialogs, performance, slow
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.2.512|File Dialogs for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

All file dialogs are loading all directories and sub-directories of the predefined **InitialDirectory** and also all folders and their sub-folders that are visible on the **MainNavigationTreeView** on the left side. When a directory is loaded, the file dialogs are creating a **DirectoryInfoWrapper** object which subscribes for the **Created**, **Changed**, **Renamed** and **Deleted** events for this directory. This is the most time-consuming operation when loading the dialogs. 

## Solution 

A possible solution is to create custom dialogs, which are not tracking the **Created**, **Changed**, **Renamed** and **Deleted** file and folder events. Thus, the performance can be improved with **30-50%**.

You can also skip a directory from being loaded in the file dialogs by canceling the **DirectoryRequesting** event. Another hint to improve the loading time is to set the **ShowNetworkLocations** property to **false**. Its value indicates whether the dialog shows network computers in the navigation tree.

Additionally, when all directories are being traversed multiple exceptions like **UnauthorizedAccessException**, can occur. They are also consuming large amounts of time. You can track them by subscribing to the **ExceptionRaised** event of the dialog.

#### Improve Performance

````C#

    public class MyOpenFolderDialog : RadOpenFolderDialog
    {
        protected override FileDialogFormBase CreateFileDialogForm()
        {
            return new MyOpenFolderDialogForm();
        }
    }

    public class MyOpenFolderDialogForm : RadOpenFolderDialogForm
    {
        protected override DialogResult ShowDialogCore(IWin32Window owner = null, bool addWatcher = true)
        {
            addWatcher = false;
            return base.ShowDialogCore(owner, addWatcher);
        }
    }

    public class MyOpenFileDialog : RadOpenFileDialog
    {
        protected override FileDialogFormBase CreateFileDialogForm()
        {
            return new MyOpenFileDialogForm();
        }
    }

    public class MyOpenFileDialogForm : RadOpenFileDialogForm
    {
        protected override DialogResult ShowDialogCore(IWin32Window owner = null/* TODO Change to default(_) if this is not a reference type */, bool addWatcher = true)
        {
            addWatcher = false;
            return base.ShowDialogCore(owner, addWatcher);
        }
    }
    

````
````VB.NET

    Public Class MyOpenFolderDialog
        Inherits RadOpenFolderDialog
        Protected Overrides Function CreateFileDialogForm() As FileDialogFormBase
            Return New MyOpenFolderDialogForm()
        End Function
    End Class

    Public Class MyOpenFolderDialogForm
        Inherits RadOpenFolderDialogForm
        Protected Overrides Function ShowDialogCore(Optional ByVal owner As IWin32Window = Nothing, Optional ByVal addWatcher As Boolean = True) As DialogResult
            addWatcher = False
            Return MyBase.ShowDialogCore(owner, addWatcher)
        End Function
    End Class

    Public Class MyOpenFileDialog
        Inherits RadOpenFileDialog

        Protected Overrides Function CreateFileDialogForm() As FileDialogFormBase
            Return New MyOpenFileDialogForm()
        End Function
    End Class

    Public Class MyOpenFileDialogForm
        Inherits RadOpenFileDialogForm

        Protected Overrides Function ShowDialogCore(Optional ByVal owner As IWin32Window = Nothing, Optional ByVal addWatcher As Boolean = True) As DialogResult
            addWatcher = False
            Return MyBase.ShowDialogCore(owner, addWatcher)
        End Function
    End Class

````

# See Also

* [RadOpenFileDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfiledialog%})
* [RadOpenFolderDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfolderdialog%}) 

