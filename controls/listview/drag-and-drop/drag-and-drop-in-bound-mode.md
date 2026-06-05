---
title: Drag and Drop in bound mode
page_title: Drag and Drop in bound mode - WinForms ListView Control
description: WinForms ListView allows achieving items drag and drop functionality in bound mode. Learn how to use the default service.
slug: winforms/listview/drag-and-drop/drag-and-drop-in-bound-mode
tags: drag,and,drop,in,bound,mode
published: True
position: 2
previous_url: listview-drag-and-drop-drag-and-drop-in-bound-mode
---

# Drag and Drop in bound mode

When __RadListView__ is in bound mode, it does not support drag and drop functionality out of the box due to the specificity of the data source. However, this can be easily achieved by using the built-in __ListViewDragDropService__. You only need to handle events, emanating from this service.

>caption Figure 1: Drag and drop in bound mode

![WinForms RadListView Drag and drop in bound mode](images/listview-drag-and-drop-drag-and-drop-in-bound-mode001.gif)

1\. Let’s start with populating the __RadListView__ with data. For this purpose we will create a class **Item** and fill a **BindingList** with items:

<snippet id='listview-dragdropinboundmode-createitem-cs' />
<snippet id='listview-dragdropinboundmode-createitem-vb' />



2\. In order to enable the drag and drop functionality, set the RadListView.__AllowDragDrop__ property to *true*:

<snippet id='listview-dragdropinboundmode-enabledragdrop-cs' />
<snippet id='listview-dragdropinboundmode-enabledragdrop-vb' />



3\. Use the ListViewElement.DragDropService.__PreviewDragStart__ event to get the dragged item. Subscribe to the ListViewElement.DragDropService.__PreviewDragOver__ event, which allows you to control on what targets the item, being dragged, can be dropped on:

<snippet id='listview-dragdropinboundmode-dragstartover-cs' />
<snippet id='listview-dragdropinboundmode-dragstartover-vb' />



4\. The last event we need to handle in our implementation is the ListViewElement.DragDropService.__PreviewDragDrop__ event. This is where we will initiate the actual physical move of the item from one position to another. Implement the handler as follows:

<snippet id='listview-dragdropinboundmode-dragdrop-cs' />
<snippet id='listview-dragdropinboundmode-dragdrop-vb' />



# See Also

* [Drag and Drop from another control]({%slug winforms/listview/drag-and-drop/drag-and-drop-from-another-control%})
* [Drag and Drop using RadDragDropService]({%slug winforms/listview/drag-and-drop/drag-and-drop-using-raddragdropservice%})	
* [Combining RadDragDropService and OLE drag-and-drop]({%slug winforms/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop%})	



