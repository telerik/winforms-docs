---
title: Editors
page_title: Editors | UI for WinForms Documentation
description: Editors
slug: winforms/virtualgrid/editing/editors
tags: virtualgrid, editors
published: True
position: 0
---


## Editors

__RadVirtualGrid__ allows the users to edit the cells values. Usually this process starts by typing in the cell or by pressing F2. By default the editor type is determined according to the data value type. When in edit mode, the user can change the cell value and press __Enter__ to commit the change or __Esc__ to revert to the original value. Clicking outside the edited cell also commits the change. 

>note RadVirtualGrid can be made read-only by setting the __AllowEdit__ property to *false*. In this case the editors would not appear.
>

Currently __RadVirtualGrid__ supports the following editors out of the box:

* __VirtualGridCalcualtorEditor__
* __VirtualGridDateTimeEditor__
* __VirtualGridDropDownListEditor__
* __VirtualGridMaskedEditBoxEditor__
* __VirtualGridTextBoxControlEditor__
* __VirtualGridTextBoxEditor__
* __VirtualGridTimePickerEditor__
* __VirtualGridColorPickerEditor__
* __VirtualGridBrowseEditor__

__RadVirtualGrid__ exposes an API for defining the data types of its columns. If the data type is explicitly set it wil determine the cell editors used in this column. Otherwise, the editor is determined by the cell value.

#### Defining a Columns`s Data Type

{{source=..\SamplesCS\VirtualGrid\Editing\EditorsProperties.cs region=DefineColumnDataType}} 
{{source=..\SamplesVB\Virtualgrid\Editing\EditorsProperties.vb region=DefineColumnDataType}}
````C#
this.radVirtualGrid1.MasterViewInfo.ColumnDataTypes[0] = typeof(int);
Type dataType = this.radVirtualGrid1.MasterViewInfo.GetColumnDataType(0);

````
````VB.NET
Me.radVirtualGrid1.MasterViewInfo.ColumnDataTypes(0) = GetType(Integer)
Dim dataType As Type = Me.radVirtualGrid1.MasterViewInfo.GetColumnDataType(0)

```` 

{{endregion}}