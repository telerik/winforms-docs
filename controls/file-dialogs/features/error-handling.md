---
title: Error Handling
page_title: Error Handling | File Dialogs
description: File Dialogs represent the three most commonly used file and folder manipulation dialogs
slug: winforms/file-dialogs/features/error-handling
tags: filedialogs, features, error
published: True
position: 1 
---

#  Error Handling

The file dialogs come with their own error handling mechanism so that you can deal with most exceptional situations that may occur while navigating through the file system. Here's a list of exceptions that get handled internally by the controls and can be analyzed and processed in the **ExceptionRaised** event.

* **ArgumentException**: Selected file is empty string, contains only white space, contains one or more invalid characters, or refers to a non-file device.

* **ArgumentNullException**: Selected file is *null*.

* **ArgumentOutOfRangeException**: The specified mode contains an invalid value.

* **DirectoryNotFoundException**: Selected file is invalid, such as being on an unmapped drive.

* **NotSupportedException**: Selected file refers to a non-file device.

* **FileNotFoundException**: Selected file cannot be found, such as when mode is FileMode.*Truncate* or FileMode.*Open*, and the file specified by path does not exist. The file must already exist in these modes.

* **IOException**: An I/O error occurred or the stream has been closed.

* **PathTooLongException**: The specified path, file name, or both exceed the system-defined maximum length. For example, on Windows-based platforms, paths must be less than 248 characters, and file names must be less than 260 characters.

* **SecurityException**: The caller does not have the required permission.
 
* **UnauthorizedAccessException**: The access requested is not permitted by the operating system for the specified path, such as when access is *Write* or *ReadWrite* and the file or directory is set for read-only access.
 
>important When calling the **OpenFile** method of the **RadOpenFileDialog** and **RadSaveFileDialog** you need to manually handle the exceptions raised when creating a stream for the specified file(s).

# See Also

* [Structure]({%slug winforms/file-dialogs/structure%})
* [Network Locations]({%slug winforms/file-dialogs/features/network-locations%})
* [Filterng]({%slug winforms/file-dialogs/features/filtering%}) 
* [Explorer Control]({%slug winforms/file-dialogs/dialog-controls/explorer-control%})
* [RadOpenFileDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfiledialog%})
* [RadOpenFolderDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfolderdialog%})
* [RadSaveFileDialog]({%slug winforms/file-dialogs/dialog-controls/radsavefiledialog%})