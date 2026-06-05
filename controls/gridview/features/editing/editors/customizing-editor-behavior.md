---
title: Customizing editor behavior
page_title: Customizing editor behavior - WinForms GridView Control
description: WinForms GridView offers the CellBeginEdit or CellEditorInitialized events to access the active editor and change its properties.
slug: winforms/gridview/editors/customizing-editor-behavior
tags: customizing,editor,behavior
published: True
position: 4
previous_url: gridview-editors-customizing-editor-behavior
---

# Customizing editor behavior

The look and behavior of grid editors can be changed programmatically. This can be done either in __CellBeginEdit__ or in __CellEditorInitialized__ events. 

* __CellBeginEdit:__ Fired when the editor is created.

* __CellEditorInitialized:__ Fired when the editor is created and initialized with a predefined set of properties.

The following sample demonstrates how to change the default ForeColor of __GridSpinEditor__:

<snippet id='gridview-customizingeditorbehavior-customizingeditors-cs' />
<snippet id='gridview-customizingeditorbehavior-customizingeditors-vb' />

>caption Figure 1: Accessing the editor element.

![WinForms RadGridView Accessing the editor element](images/gridview-editors-customizing-editor-behavior001.png)

## See Also
* [API]({%slug winforms/gridview/editors/api%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Overview]({%slug winforms/gridview/editors/editors%})

* [Events]({%slug winforms/gridview/editors/events%})

* [Handling Editors' events]({%slug winforms/gridview/editors/handling-editors'-events%})

* [Using custom editors]({%slug winforms/gridview/editors/using-custom-editors%})

