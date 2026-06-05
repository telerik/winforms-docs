---
title: RadSaveFileDialog
page_title: RadSaveFileDialog - WinForms FileDialogs
description: WinForms SaveFileDialog is a modal dialog box that allows you to specify a file name to save.
slug: winforms/file-dialogs/dialog-controls/radsavefiledialog
tags: filedialogs, radsavefiledialog
published: True
position: 3 
---

#  RadSaveFileDialog

**RadSaveFileDialog** is a modal dialog box that allows you to specify a file name to save.

>caption Figure 1: RadSaveFileDialog

![WinForms RadFileDialogs RadSaveFileDialog](images/file-dialogs-radsavefiledialog001.png) 

## Showing the dialog

To show the dialog call its **ShowDialog** method. If a valid file is selected when you press `OK`, the **DialogResult** property will return OK and the **FileName** property will be set. You can use **FileName** to get the name of the selected file.

>important Note that when the **ShowDialog** method is called the UI of the host application will freeze until the dialog closes.


####  Example 1: Show a save file dialog

<snippet id='file-dialogs-radsavefiledialog-savefiledialogexample-cs' />
<snippet id='file-dialogs-radsavefiledialog-savefiledialogexample-vb' />



## Creating a stream for the selected file

You can open a read-write file stream for the selected file using the **OpenFile** method. Or alternatively you can use the **FileName** property and open the file manually.

####  Example 2: Open a file stream

<snippet id='file-dialogs-radopenfiledialog-openfilestreamexample-cs' />
<snippet id='file-dialogs-radopenfiledialog-openfilestreamexample-vb' />



## Working with the selected file

You can get the path of the selected file via the **FileName** property (see Example 1). Note that the property is empty until the **DialogResult** is valid. When the dialog closes and if **DialogResult** is OK the property will return the corresponding file path.

The **FileName** property can be set manually. This will change the value displayed in the selected file autocomplete box area. Note that setting this won't change the selected item in the list with the files.

####  Example 3: Set the file name 

<snippet id='file-dialogs-radsavefiledialog-setfilenameexample-cs' />
<snippet id='file-dialogs-radsavefiledialog-setfilenameexample-vb' />




>caption Figure 2: Setting the File Name

![WinForms RadFileDialogs File Name](images/file-dialogs-radsavefiledialog002.png)

# See Also

* [Error Handling]({%slug winforms/file-dialogs/features/error-handling%})
* [Explorer Control]({%slug winforms/file-dialogs/dialog-controls/explorer-control%})
* [RadOpenFileDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfiledialog%})
* [RadOpenFolderDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfolderdialog%})
