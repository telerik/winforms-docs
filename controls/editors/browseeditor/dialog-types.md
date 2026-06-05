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

<snippet id='editors-browseeditor1-folderbrowsedialog-cs' />
<snippet id='editors-browseeditor1-folderbrowsedialog-vb' />



>caption Figure 1: FolderBrowseDialog

![WinForms RadBrowseEditor FolderBrowseDialog](images/editors-browse-editor-dialog-types001.png)

#### FontDialog

<snippet id='editors-browseeditor1-fontdialog-cs' />
<snippet id='editors-browseeditor1-fontdialog-vb' />



>caption Figure 2: FontDialog

![WinForms RadBrowseEditor FontDialog](images/editors-browse-editor-dialog-types002.png)

#### OpenFileDialog

<snippet id='editors-browseeditor1-openfiledialog-cs' />
<snippet id='editors-browseeditor1-openfiledialog-vb' />



>caption Figure 3: OpenFileDialog

![WinForms RadBrowseEditor OpenFileDialog](images/editors-browse-editor-dialog-types003.png)

#### SaveFileDialog

<snippet id='editors-browseeditor1-savefiledialog-cs' />
<snippet id='editors-browseeditor1-savefiledialog-vb' />



>caption Figure 4: SaveFileDialog

![WinForms RadBrowseEditor SaveFileDialog](images/editors-browse-editor-dialog-types004.png)


#### RadOpenFileDialog

<snippet id='editors-browseeditor1-telerikopenfiledialog-cs' />
<snippet id='editors-browseeditor1-telerikopenfiledialog-vb' />



>caption Figure 5: RadOpenFileDialog

![WinForms RadBrowseEditor RadOpenFileDialog](images/editors-browse-editor-dialog-types005.png)

#### RadOpenFolderDialog

<snippet id='editors-browseeditor1-telerikopenfolderdialog-cs' />
<snippet id='editors-browseeditor1-telerikopenfolderdialog-vb' />



>caption Figure 6: RadOpenFolderDialog

![WinForms RadBrowseEditor RadOpenFolderDialog](images/editors-browse-editor-dialog-types006.png)


#### RadSaveFileDialog


<snippet id='editors-browseeditor1-teleriksavefiledialog-cs' />
<snippet id='editors-browseeditor1-teleriksavefiledialog-vb' />



>caption Figure 7: RadSaveFileDialog

![WinForms RadBrowseEditor RadSaveFileDialog](images/editors-browse-editor-dialog-types007.png)

## See Also

* [Structure]({%slug winforms/editors/browseeditor/structure%})
* [Smart Tag]({%slug winforms/browseeditor/design-time/smart-tag%})
* [Working with RadBrowseEditor]({%slug winforms/editors/browseeditor/working-with-radbrowseeditor%})
