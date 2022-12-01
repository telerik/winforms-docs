---
title: Dialog Types
page_title: Dialog Types - WinForms BrowseEditor Control
description: WinForms BrowseEditor comes with a predefined set of dialog types.
slug: winforms/editors/browseeditor/dialog-types
tags: dialog, types
published: True
position: 4
---

# Dialog Types

__RadBrowseEditor__ comes with a predefined set of dialog types. The available types are determined by the **BrowseEditorDialogType** enumeration and the chosen option can be set to the __DialogType__ property of the control. The available dialog types are listed below:

* **FolderBrowseDialog**
* **SaveFileDialog**
* **FontDialog**

As of **R1 2020 SP1** the Telerik [File Dialogs]({%slug winforms/file-dialogs/overview%}) are integrated in **RadBrowseEditor**. Hence, three new dialog types were added to the **BrowseEditorDialogType** enumeration:

* **RadOpenFileDialog**
* **RadOpenFolderDialog**
* **RadSaveFileDialog**

>important The **Dialog** property has been obsolete since **R1 2020 SP1**. Use the **BrowseDialog** property instead and cast it to the actual dialog type to access the respective dialog's properties.

#### FolderBrowseDialog

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=FolderBrowseDialog}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=FolderBrowseDialog}}
````C#
this.radBrowseEditor1.DialogType = BrowseEditorDialogType.FolderBrowseDialog;

````
````VB.NET
Me.RadBrowseEditor1.DialogType = BrowseEditorDialogType.FolderBrowseDialog

````



{{endregion}}

>caption Figure 1: FolderBrowseDialog

![WinForms RadBrowseEditor FolderBrowseDialog](images/editors-browse-editor-dialog-types001.png)

#### FontDialog

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=FontDialog}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=FontDialog}}
````C#
this.radBrowseEditor1.DialogType = BrowseEditorDialogType.FontDialog;

````
````VB.NET
Me.RadBrowseEditor1.DialogType = BrowseEditorDialogType.FontDialog

````



{{endregion}}

>caption Figure 2: FontDialog

![WinForms RadBrowseEditor FontDialog](images/editors-browse-editor-dialog-types002.png)

#### OpenFileDialog

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=OpenFileDialog}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=OpenFileDialog}}
````C#
this.radBrowseEditor1.DialogType = BrowseEditorDialogType.OpenFileDialog;

````
````VB.NET
Me.RadBrowseEditor1.DialogType = BrowseEditorDialogType.OpenFileDialog

````



{{endregion}}

>caption Figure 3: OpenFileDialog

![WinForms RadBrowseEditor OpenFileDialog](images/editors-browse-editor-dialog-types003.png)

#### SaveFileDialog

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=SaveFileDialog}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=SaveFileDialog}}
````C#
this.radBrowseEditor1.DialogType = BrowseEditorDialogType.SaveFileDialog;

````
````VB.NET
Me.RadBrowseEditor1.DialogType = BrowseEditorDialogType.SaveFileDialog

```` 
{{endregion}}

>caption Figure 4: SaveFileDialog

![WinForms RadBrowseEditor SaveFileDialog](images/editors-browse-editor-dialog-types004.png)


#### RadOpenFileDialog

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=TelerikOpenFileDialog}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=TelerikOpenFileDialog}}

````C#
this.radBrowseEditor1.DialogType = BrowseEditorDialogType.RadOpenFileDialog;

````
````VB.NET
Me.RadBrowseEditor1.DialogType = BrowseEditorDialogType.RadOpenFileDialog

```` 
{{endregion}}

>caption Figure 5: RadOpenFileDialog

![WinForms RadBrowseEditor RadOpenFileDialog](images/editors-browse-editor-dialog-types005.png)

#### RadOpenFolderDialog

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=TelerikOpenFolderDialog}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=TelerikOpenFolderDialog}}

````C#
this.radBrowseEditor1.DialogType = BrowseEditorDialogType.RadOpenFolderDialog;

````
````VB.NET
Me.RadBrowseEditor1.DialogType = BrowseEditorDialogType.RadOpenFolderDialog

```` 
{{endregion}}

>caption Figure 6: RadOpenFolderDialog

![WinForms RadBrowseEditor RadOpenFolderDialog](images/editors-browse-editor-dialog-types006.png)


#### RadSaveFileDialog


{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=TelerikSaveFileDialog}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=TelerikSaveFileDialog}}

````C#
 this.radBrowseEditor1.DialogType = BrowseEditorDialogType.RadSaveFileDialog;

````
````VB.NET
Me.RadBrowseEditor1.DialogType = BrowseEditorDialogType.RadSaveFileDialog

```` 
{{endregion}} 

>caption Figure 7: RadSaveFileDialog

![WinForms RadBrowseEditor RadSaveFileDialog](images/editors-browse-editor-dialog-types007.png)

## See Also

* [Structure]({%slug winforms/editors/browseeditor/structure%})
* [Smart Tag]({%slug winforms/browseeditor/design-time/smart-tag%})
* [Working with RadBrowseEditor]({%slug winforms/editors/browseeditor/working-with-radbrowseeditor%})
