---
title: OLE Drag and Drop
page_title: OLE Drag and Drop - WinForms Diagram Control
description: Learn how you can create shapes in WinForms Diagram after dragging an object from a separate control. For the purpose of the example we are going to use a RadGridView.
slug: winforms/diagram/drag-and-drop/ole-drag-and-drop
tags: drag and drop,another control
published: True
position: 1
---

# OLE Drag and Drop

__RadDiagram__ is capable of performing drag and drop operation using the native OLE drag and drop support. The example below handles a scenario in which shape elments are being dragged from one diagram control and dropped onto another.

>caption Figure 1: Drag and Drop Between Two Diagrams 

![WinForms RadDiagram Drag and Drop Between Two Diagrams](images/diagram-drag-and-drop-ole-drag-and-drop001.gif)

In order to achieve the desired result the MouseDown, MouseMove and MouseUp events need to be handled in the first diagram. The drag operation will be started in the handler of the MouseMove event. The second diagram instance needs to be subscribed to the DragEnter and DragDrop events.

#### Subscribe to Events

<snippet id='diagram-ole-drag-and-drop-subscribeevents-cs'/>
<snippet id='diagram-ole-drag-and-drop-subscribeevents-vb'/>



For the purpose of the example we will define a grid model object storing information about the shapes.

## Handling Events

__RadDiagram__ will accept the dragged data only if it is dropped on the diagram element. The __PreviewDragDrop__ event handler will be responsible for reading the data and transforming it to a shape.

#### Drag and Drop Events

<snippet id='diagram-ole-drag-and-drop-handleevents-cs'/>
<snippet id='diagram-ole-drag-and-drop-handleevents-vb'/>



# See Also

* [RadGridView]({%slug winforms/gridview%})
* [Populating with Data]({%slug winforms/diagram/populating-with-data%})
* [Commands]({%slug winforms/diagram/features/commands%}) 
* [Diagram Events]({%slug winforms/diagram/events/diagram-events%})
* [Items Events]({%slug winforms/diagram/events/items-events%})
