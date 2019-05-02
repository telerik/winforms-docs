---
title: Localization
page_title: Localization | File Dialogs
description: File Dialogs represent the three most commonly used file and folder manipulation dialogs
slug: winforms/file-dialogs/localization
tags: filedialogs, localization
published: True
position: 6 
---

# Localization

To localize **RadFileDialogs** to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the **FileDialogsLocalizationProvider** class.

*  Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the __default__ clause of the __switch__ statement in the example.


Below is a sample implementation of an English localization provider:

#### Localizing File Dialogs

````C#
        public class MyFileDialogsLocalizationProvider : FileDialogsLocalizationProvider
        {
            public override string GetLocalizedString(string id)
            {
                switch (id)
                {
                    case FileDialogsStringId.OK:
                        return "OK";
                    case FileDialogsStringId.Yes:
                        return "Yes";
                    case FileDialogsStringId.No:
                        return "No";
                    case FileDialogsStringId.Cancel:
                        return "Cancel";

                    case FileDialogsStringId.Back:
                        return "Back";
                    case FileDialogsStringId.Forward:
                        return "Forward";
                    case FileDialogsStringId.Up:
                        return "Up";
                    case FileDialogsStringId.NewFolder:
                        return "New folder";
                    case FileDialogsStringId.SearchIn:
                        return "Search in";
                    case FileDialogsStringId.SearchResults:
                        return "Search results in";

                    case FileDialogsStringId.ExtraLargeIcons:
                        return "Extra large icons";
                    case FileDialogsStringId.LargeIcons:
                        return "Large icons";
                    case FileDialogsStringId.MediumIcons:
                        return "Medium icons";
                    case FileDialogsStringId.SmallIcons:
                        return "Small icons";
                    case FileDialogsStringId.List:
                        return "List";
                    case FileDialogsStringId.Tiles:
                        return "Tiles";
                    case FileDialogsStringId.Details:
                        return "Details";

                    case FileDialogsStringId.NameHeader:
                        return "Name";
                    case FileDialogsStringId.SizeHeader:
                        return "Size";
                    case FileDialogsStringId.TypeHeader:
                        return "Type";
                    case FileDialogsStringId.DateHeader:
                        return "Date modified";

                    case FileDialogsStringId.FileSizes_B:
                        return "bytes";
                    case FileDialogsStringId.FileSizes_GB:
                        return "GB";
                    case FileDialogsStringId.FileSizes_KB:
                        return "KB";
                    case FileDialogsStringId.FileSizes_MB:
                        return "MB";
                    case FileDialogsStringId.FileSizes_TB:
                        return "TB";

                    case FileDialogsStringId.OpenFileDialogHeader:
                        return "Open File";
                    case FileDialogsStringId.OpenFolderDialogHeader:
                        return "Open Folder";
                    case FileDialogsStringId.SaveFileDialogHeader:
                        return "Save As";

                    case FileDialogsStringId.FileName:
                        return "File name:";
                    case FileDialogsStringId.Folder:
                        return "Folder:";
                    case FileDialogsStringId.SaveAsType:
                        return "Save as type:";

                    case FileDialogsStringId.OpenFolder:
                        return "Open Folder";
                    case FileDialogsStringId.FileFolderType:
                        return "File folder";

                    case FileDialogsStringId.Cut:
                        return "Cut";
                    case FileDialogsStringId.Copy:
                        return "Copy";
                    case FileDialogsStringId.CopyTo:
                        return "Copy to";
                    case FileDialogsStringId.Delete:
                        return "Delete";
                    case FileDialogsStringId.Edit:
                        return "Edit";
                    case FileDialogsStringId.MoveTo:
                        return "Move to";
                    case FileDialogsStringId.Open:
                        return "Open";
                    case FileDialogsStringId.Paste:
                        return "Paste";
                    case FileDialogsStringId.Properties:
                        return "Properties";
                    case FileDialogsStringId.Rename:
                        return "Rename";
                    case FileDialogsStringId.Save:
                        return "Save";
                    case FileDialogsStringId.View:
                        return "View";

                    case FileDialogsStringId.CheckThePath:
                        return "Check the path and try again.";
                    case FileDialogsStringId.ConfirmSave:
                        return "Confirm save as";
                    case FileDialogsStringId.FileExists:
                        return "already exists.";
                    case FileDialogsStringId.FileNameWrongCharacters:
                        return "A file name can't contain any of the following characters: \\ / : * ? \" < > |";
                    case FileDialogsStringId.InvalidExtensionConfirmation:
                        return "Are you sure you want to change it?";
                    case FileDialogsStringId.InvalidFileName:
                        return "The file name is not valid.";
                    case FileDialogsStringId.InvalidOrMissingExtension:
                        return "If you change a file name extension, the file might become unusable.";
                    case FileDialogsStringId.InvalidPath:
                        return "Path does not exist.";
                    case FileDialogsStringId.OpenReadOnly:
                        return "Open as read-only";
                    case FileDialogsStringId.ReplacementQuestion:
                        return "Do you want to replace it?";

                    default:
                        return string.Empty;
                }
            }
        }

````
````VB.NET

Public Class MyFileDialogsLocalizationProvider
    Inherits FileDialogsLocalizationProvider

    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case FileDialogsStringId.OK
                Return "OK"
            Case FileDialogsStringId.Yes
                Return "Yes"
            Case FileDialogsStringId.No
                Return "No"
            Case FileDialogsStringId.Cancel
                Return "Cancel"
            Case FileDialogsStringId.Back
                Return "Back"
            Case FileDialogsStringId.Forward
                Return "Forward"
            Case FileDialogsStringId.Up
                Return "Up"
            Case FileDialogsStringId.NewFolder
                Return "New folder"
            Case FileDialogsStringId.SearchIn
                Return "Search in"
            Case FileDialogsStringId.SearchResults
                Return "Search results in"
            Case FileDialogsStringId.ExtraLargeIcons
                Return "Extra large icons"
            Case FileDialogsStringId.LargeIcons
                Return "Large icons"
            Case FileDialogsStringId.MediumIcons
                Return "Medium icons"
            Case FileDialogsStringId.SmallIcons
                Return "Small icons"
            Case FileDialogsStringId.List
                Return "List"
            Case FileDialogsStringId.Tiles
                Return "Tiles"
            Case FileDialogsStringId.Details
                Return "Details"
            Case FileDialogsStringId.NameHeader
                Return "Name"
            Case FileDialogsStringId.SizeHeader
                Return "Size"
            Case FileDialogsStringId.TypeHeader
                Return "Type"
            Case FileDialogsStringId.DateHeader
                Return "Date modified"
            Case FileDialogsStringId.FileSizes_B
                Return "bytes"
            Case FileDialogsStringId.FileSizes_GB
                Return "GB"
            Case FileDialogsStringId.FileSizes_KB
                Return "KB"
            Case FileDialogsStringId.FileSizes_MB
                Return "MB"
            Case FileDialogsStringId.FileSizes_TB
                Return "TB"
            Case FileDialogsStringId.OpenFileDialogHeader
                Return "Open File"
            Case FileDialogsStringId.OpenFolderDialogHeader
                Return "Open Folder"
            Case FileDialogsStringId.SaveFileDialogHeader
                Return "Save As"
            Case FileDialogsStringId.FileName
                Return "File name:"
            Case FileDialogsStringId.Folder
                Return "Folder:"
            Case FileDialogsStringId.SaveAsType
                Return "Save as type:"
            Case FileDialogsStringId.OpenFolder
                Return "Open Folder"
            Case FileDialogsStringId.FileFolderType
                Return "File folder"
            Case FileDialogsStringId.Cut
                Return "Cut"
            Case FileDialogsStringId.Copy
                Return "Copy"
            Case FileDialogsStringId.CopyTo
                Return "Copy to"
            Case FileDialogsStringId.Delete
                Return "Delete"
            Case FileDialogsStringId.Edit
                Return "Edit"
            Case FileDialogsStringId.MoveTo
                Return "Move to"
            Case FileDialogsStringId.Open
                Return "Open"
            Case FileDialogsStringId.Paste
                Return "Paste"
            Case FileDialogsStringId.Properties
                Return "Properties"
            Case FileDialogsStringId.Rename
                Return "Rename"
            Case FileDialogsStringId.Save
                Return "Save"
            Case FileDialogsStringId.View
                Return "View"
            Case FileDialogsStringId.CheckThePath
                Return "Check the path and try again."
            Case FileDialogsStringId.ConfirmSave
                Return "Confirm save as"
            Case FileDialogsStringId.FileExists
                Return "already exists."
            Case FileDialogsStringId.FileNameWrongCharacters
                Return "A file name can't contain any of the following characters: \ / : * ? "" < > |"
            Case FileDialogsStringId.InvalidExtensionConfirmation
                Return "Are you sure you want to change it?"
            Case FileDialogsStringId.InvalidFileName
                Return "The file name is not valid."
            Case FileDialogsStringId.InvalidOrMissingExtension
                Return "If you change a file name extension, the file might become unusable."
            Case FileDialogsStringId.InvalidPath
                Return "Path does not exist."
            Case FileDialogsStringId.OpenReadOnly
                Return "Open as read-only"
            Case FileDialogsStringId.ReplacementQuestion
                Return "Do you want to replace it?"
            Case Else
                Return String.Empty
        End Select
    End Function
End Class

````
 
To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider


````C#
FileDialogsLocalizationProvider.CurrentProvider = new MyFileDialogsLocalizationProvider();

````
````VB.NET
FileDialogsLocalizationProvider.CurrentProvider = New MyFileDialogsLocalizationProvider()

````

{{endregion}}

# See Also

* [Structure]({%slug winforms/file-dialogs/structure%})
* [Filterng]({%slug winforms/file-dialogs/features/filtering%}) 
* [Error Handling]({%slug winforms/file-dialogs/features/error-handling%})
* [Explorer Control]({%slug winforms/file-dialogs/dialog-controls/explorer-control%})
* [RadOpenFileDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfiledialog%})
* [RadOpenFolderDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfolderdialog%})
* [RadSaveFileDialog]({%slug winforms/file-dialogs/dialog-controls/radsavefiledialog%})
 