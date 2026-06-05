---
title: Drag and Drop
page_title: Drag and Drop - RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-drag-drop
tags: radtabbedform
published: True
position: 0
---

# Drag and Drop

## Drag Drop Service

**RadTabbedFormControl** is working with a drag-drop service which manages the entire drag-drop operation. The service is exposed by the main element of the control. The **RadTabbedFormDragDropService** inherits the base [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%}) and also exposes two important events providing information when dragging a tab outside of their form results in creating a new form. 

* **TabbedFormCreating**: Gets or Sets the new form which is about to be shown and it also exposes the dragged tab. The event can be canceled.
* **TabbedFormShown**: Gets the tabbed form which also exposes the added **RadTabbedFormControl**.

>important The tabbed control is added to the form in its **Shown** event. If the **TabbedFormControl** property of the form is accessed before showing it, it will return *null*.

#### RadTabbedFormDragDropService

<snippet id='tabbedform-tabbedformcode-dragdropservice-cs' />
<snippet id='tabbedform-tabbedformcode-dragdropservice-vb' />




## Reordering via Drag and Drop

By default you can reorder the tabs via drag an drop.

>caption Figure 1: Reorder Tabs

![WinForms RadTabbedForm Reorder Tabs](images/radtabbedform-drag-drop001.gif)


## Detach a tab in a single window. 

By default you can popup any tab in a standalone window. 

>caption Figure 2: Detach Tabs

![WinForms RadTabbedForm Detach Tabs](images/radtabbedform-drag-drop002.gif)

## Attach a tab to the main form

You can attach any stand alone tabbed form to the main form as well.

>caption Figure 3: Attach Tabs

![WinForms RadTabbedForm Attach Tabs](images/radtabbedform-drag-drop003.gif)

## Drag Mode

There are three drag modes that are currently supported:
* __Immediate:__ the tabs are moved while dragging.
* __Preview:__ the tab is moved after the mouse is released.
* __None:__ the drag and drop functionality is disabled.

#### Setting the Drag Drop Mode

<snippet id='tabbedform-tabbedformcode-dragdropmode-cs' />
<snippet id='tabbedform-tabbedformcode-dragdropmode-vb' />



![WinForms RadTabbedForm Drag Drop Mode](images/radtabbedform-drag-drop004.gif)

