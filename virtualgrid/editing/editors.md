---
title: Overview
page_title: Editors | UI for WinForms Documentation
description: Editors
slug: winforms/virtualgrid/editing/editors
tags: virtualgrid, editors
published: True
position: 0
---


## Editors

__RadVirtualGrid__ allows the users to edit the cells values. Usually this process starts by typing in the cell or by pressing F2. By default the editor type is determined according to the data value type. When in edit mode, the user can change the cell value and press __Enter__ to commit the change or __Esc__ to revert to the original value. Clicking outside the edited cell also commits the change. 

>caption Row editing indication 
![virtualgrid-editing-editors001](images/virtualgrid-editing-editors001.png)
>

>note RadVirtualGrid can be made read-only by setting the __AllowEdit__ property to *false*. In this case the editors would not appear.
>

Currently, __RadVirtualGrid__ supports the following editors out of the box:

|Editor type|Description|Image|
|----|----|----|
|__VirtualGridCalculatorEditor__|Represents a calculator editor|![virtualgrid-editing-using-custom-editors001](images/virtualgrid-editing-using-custom-editors001.png)|
|__VirtualGridDateTimeEditor__|Represents a date time editor|![virtualgrid-editing-using-custom-editors002](images/virtualgrid-editing-using-custom-editors002.png)|
|__VirtualGridDropDownListEditor__|Represents a DropDownList editor|![virtualgrid-editing-using-custom-editors003](images/virtualgrid-editing-using-custom-editors003.png)|
|__VirtualGridMaskedEditBoxEditor__|Represents a masked editbox editor|![virtualgrid-editing-using-custom-editors004](images/virtualgrid-editing-using-custom-editors004.png)|
|__VirtualGridSpinEditor__|Represents a spin editor|![virtualgrid-editing-using-custom-editors005](images/virtualgrid-editing-using-custom-editors005.png)|
|__VirtualGridTextBoxControlEditor__|Represents a textbox control editor|![virtualgrid-editing-using-custom-editors006](images/virtualgrid-editing-using-custom-editors006.png)|
|__VirtualGridTextBoxEditor__|Represents a textbox editor|![virtualgrid-editing-using-custom-editors006](images/virtualgrid-editing-using-custom-editors006.png)|
|__VirtualGridTimePickerEditor__|Represents a time picker editor|![virtualgrid-editing-using-custom-editors007](images/virtualgrid-editing-using-custom-editors007.png)|
|__VirtualGridBrowseEditor__|Represents a browse editor|![virtualgrid-editing-using-custom-editors008](images/virtualgrid-editing-using-custom-editors008.png)|
|__VirtualGridColorPickerEditor__|Represents a color editor|![virtualgrid-editing-using-custom-editors009](images/virtualgrid-editing-using-custom-editors009.png)|


__RadVirtualGrid__ exposes an API for defining the data types of its columns. If the data type is explicitly set it wil determine the cell editors used in this column. Otherwise, the editor is determined by the cell value. The API works by column index.

#### Defining a Columns`s Data Type

{{source=..\SamplesCS\VirtualGrid\Editing\EditorsProperties.cs region=DefineColumnDataType}} 
{{source=..\SamplesVB\Virtualgrid\Editing\EditorsProperties.vb region=DefineColumnDataType}}
````C#
this.radVirtualGrid1.MasterViewInfo.ColumnDataTypes[0] = typeof(int);

````
````VB.NET
Me.radVirtualGrid1.MasterViewInfo.ColumnDataTypes(0) = GetType(Integer)

```` 

{{endregion}}

#### Reading a Columns`s Data Type

{{source=..\SamplesCS\VirtualGrid\Editing\EditorsProperties.cs region=ReadColumnDataType}} 
{{source=..\SamplesVB\Virtualgrid\Editing\EditorsProperties.vb region=ReadColumnDataType}}
````C#
Type dataType = this.radVirtualGrid1.MasterViewInfo.GetColumnDataType(1);

````
````VB.NET
Dim dataType As Type = Me.radVirtualGrid1.MasterViewInfo.GetColumnDataType(1)

```` 

{{endregion}}
