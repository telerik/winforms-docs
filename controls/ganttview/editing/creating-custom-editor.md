---
title: Creating custom editor
page_title: Creating custom editor - WinForms GanttView Control
description: WinForms GanttView allows you to replace the standard editors with a custom one.
slug: winforms/ganttview-/editing/creating-custom-editor
tags: creating,custom,editor
published: True
position: 3
previous_url: ganttview-editing-creating-a-custom-editor
---

# Creating Custom Editor

__RadGanttView__ allows you to replace the standard editors with a custom ones. The following examples demonstrates how to replace the spin editor with a track bar editor. All editors inherit from __BaseInputEditor__. So, you have to inherit from this class and override several methods:

<snippet id='ganttview-customeditor-customtrackeditor-cs' />
<snippet id='ganttview-customeditor-customtrackeditor-vb' />



In the __EditorRequired__ event you can replace the default editor:

<snippet id='ganttview-customeditor-customeditorreplace-cs' />
<snippet id='ganttview-customeditor-customeditorreplace-vb' />



![WinForms RadGanttView Custom Editor](images/ganttview-editing-creating-a-custom-editor001.png)

# See Also

* [Customizing editor]({%slug winforms/ganttview-/editing/customizing-editor%})
* [Editing Graphical View]({%slug winforms/ganttview-/editing/editing-graphical-view%})
* [Editing Text View]({%slug winforms/ganttview-/editing/editing-text-view%})
