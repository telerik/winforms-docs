---
title: Editing Options
page_title: Editing Options - File Dialogs
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

<snippet id='file-dialogs-editing-options-limit-cs' />
<snippet id='file-dialogs-editing-options-limit-vb' />



Even though you specify the **EditingOptions**, the end-user is still allowed to drag and drop the files. If you want to disable drag and drop operations you should set explicitly the **IsDragDropEnabled** property of the **ExplorerControl** to *false*.
 
#### Disable drag and drop operations

<snippet id='file-dialogs-editing-options-disabledragdrop-cs' />
<snippet id='file-dialogs-editing-options-disabledragdrop-vb' />




You cannot modify files/folders context menu but you can choose to cancel its opening. You can, however, modify the empty space context menu items as follows:

#### Modify ShellContextMenu

<snippet id='file-dialogs-editing-options-menu-cs' />
<snippet id='file-dialogs-editing-options-menu-vb' />




