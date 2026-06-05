---
title: Customizing editor
page_title: Customizing editor - WinForms GanttView Control
description: Learn how the appearance and behavior of ganttview editors can be changed programmatically.
slug: winforms/ganttview-/editing/customizing-editor
tags: customizing,editor
published: True
position: 2
previous_url: ganttview-editing-customizing-editor
---

# Customizing Editor

The appearance and behavior of property grid editors can be changed programmatically. This can be done in the __EditorInitialized__ event. __EditorInitialized__ is fired when the editor is created and initialized with a predefined set of properties.
        
The following sample demonstrates how to change the default font of a __BaseTextBoxEditor__ in RadGanttView:
         
<snippet id='ganttview-customizingeditor-customizingeditor-cs' />
<snippet id='ganttview-customizingeditor-customizingeditor-vb' />

## Mask Editor

The following sample demonstrates how to change the default font of a __GanttViewDateTimeEditor__ in RadGanttView and apply __MaskDateTimeProvider__ with a custom format for time:

<snippet id='ganttview-customizingeditor-customizingeditor_mask-cs' />
<snippet id='ganttview-customizingeditor-customizingeditor_mask-vb' />

# See Also

* [Creating custom editor]({%slug winforms/ganttview-/editing/creating-custom-editor%})
* [Editing Graphical View]({%slug winforms/ganttview-/editing/editing-graphical-view%})
* [Editing Text View]({%slug winforms/ganttview-/editing/editing-text-view%})

