---
title: Drag and Drop
page_title: Drag and Drop | RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-drag-drop
tags: radtabbedform
published: True
position: 0
---

# Drag and Drop

## Reordering via Drag and Drop

By default you can reader the tabs via drag an drop.

>caption Figure 1: Reorder Tabs.

![radtabbedform-drag-drop001](images/radtabbedform-drag-drop001.gif)


## Detach a tab in a single windows. 

By default you can popup any tab in a standalone window. 

>caption Figure 2: Detach Tabs.

![radtabbedform-drag-drop002](images/radtabbedform-drag-drop002.gif)


## Attach a to the main form

You can attach any stand alone tabbed form to the main form as well.

>caption Figure 3: Attach Tabs.

![radtabbedform-drag-drop003](images/radtabbedform-drag-drop003.gif)

## Drag Mode

There are three drag modes that are currently supported:
* __Immediate:__ the tabs are moved while dragging.
* __Preview:__ the tab is moved after the mouse is released.
* __None:__ the drag and drop functionality is disabled.

#### Setting the Drag Drop Mode

{{source=..\SamplesCS\Forms_And_Dialogs\TabbedFormCode.cs region=DragDropMode}} 
{{source=..\SamplesVB\Forms_And_Dialogs\TabbedFormCode.vb region=DragDropMode}}
````C#
````
````VB.NET
```` 

{{endregion}} 

![radtabbedform-drag-drop004](images/radtabbedform-drag-drop004.gif)

