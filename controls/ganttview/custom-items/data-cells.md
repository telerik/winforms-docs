---
title: Data Cells
page_title: Data Cells - WinForms GanttView Control
description: WinForms GanttView allows you to replace the standard cells with a custom ones.
slug: winforms/ganttview/custom-items/data-cells
tags: creating,custom,cells
published: True
position: 1
---

# Custom Data Cells

**RadGanttView** allows you to replace the standard cells displayed in the text view with custom ones. The following example demonstrates how to add a custom cell element having a check box.

>caption Figure 1: Checkbox Cell 

![WinForms RadGanttView Checkbox Cell](images/ganttview-custom-items-data-cells001.png)

#### Custom Cell Implementation

<snippet id='ganttview-ganttcheckboxform-customcellclass-cs' />
<snippet id='ganttview-ganttcheckboxform-customcellclass-vb' />

The events which need to be handled are:
 
 * **DataCellElementCreating**: The custom cell element will be initialized in the event handler.
 * **ItemEditing**: The actual cell editing will be performed by the custom cell element with the check box. The event needs to be canceled so that the default editor will not initialize.

#### Handling Events

<snippet id='ganttview-ganttcheckboxform-handleevents-cs' />
<snippet id='ganttview-ganttcheckboxform-handleevents-vb' />

The data can be added to the control in the **OnLoad** method of the form. It is important to also add "*Check*" column in which the custom cell will be displayed.   

#### Initial Setup

<snippet id='ganttview-ganttcheckboxform-initialsetup-cs' />
<snippet id='ganttview-ganttcheckboxform-initialsetup-vb' />

# See Also

* [Custom Data Items]({%slug winforms/ganttview/custom-items/data-items%})
* [Custom Task Elements]({%slug winforms/ganttview/custom-items/task-elements%})
* [Customizing editor]({%slug winforms/ganttview-/editing/customizing-editor%})
* [Editing Graphical View]({%slug winforms/ganttview-/editing/editing-graphical-view%})
* [Editing Text View]({%slug winforms/ganttview-/editing/editing-text-view%})
