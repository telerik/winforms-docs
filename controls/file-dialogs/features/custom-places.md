---
title: Custom Places
page_title: Custom Places - File Dialogs
description: File Dialogs provide you with the option the specify a list of directories displayed above the Treeview navigation.
slug: file-dialogs-custom-places
tags: filedialogs
published: True
position: 2 
---

#  Custom Places

File dialogs provide you with the option to specify a list of directories to be displayed to the left of the Main Pane above the Tree Navigation Pane similarly to Windows' Quick Access view.

To enable this functionality, you should add a list of directories to the control's **CustomPlaces** collection. It is of type **IList**.

#### Defining custom places


````C#

RadSaveFileDialog saveFileDialog = new RadSaveFileDialog(); 
saveFileDialog.CustomPlaces.Add(@"C:\Windows\System32");
saveFileDialog.CustomPlaces.Add(@"C:\Program Files\");
saveFileDialog.ShowDialog();
       

````
````VB.NET

Dim saveFileDialog As RadSaveFileDialog = New RadSaveFileDialog()
saveFileDialog.CustomPlaces.Add("C:\Windows\System32")
saveFileDialog.CustomPlaces.Add("C:\Program Files\")
saveFileDialog.ShowDialog()


```` 

>note Note that this collection is read-only - you can only add and/or remove items from it but you cannot replace it with another collection.

The specified folders will then appear in the dialogs navigation pane.

>caption Custom directories shown in the navigation pane

![WinForms RadFile-Dialogs Custom directories shown in the navigation pane](images/file-dialogs-custom-places001.png)

# See Also

* [Structure]({%slug winforms/file-dialogs/structure%})
* [Network Locations]({%slug winforms/file-dialogs/features/network-locations%})
* [Filterng]({%slug winforms/file-dialogs/features/filtering%}) 
* [Error Handling]({%slug winforms/file-dialogs/features/error-handling%})
* [Explorer Control]({%slug winforms/file-dialogs/dialog-controls/explorer-control%})
* [RadOpenFileDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfiledialog%})
* [RadOpenFolderDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfolderdialog%})
* [RadSaveFileDialog]({%slug winforms/file-dialogs/dialog-controls/radsavefiledialog%})
