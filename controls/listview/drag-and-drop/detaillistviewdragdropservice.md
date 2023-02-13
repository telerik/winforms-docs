---
title: DetailListViewDragDropService
page_title: DetailListViewDragDropService - WinForms ListView Control
description: WinForms ListView supports DetailsView mode which allows columns rearranging by its DetailListViewDragDropService.
slug: winforms/listview/drag-and-drop/detaillistviewdragdropservice
tags: drag,and,drop,in,bound,mode
published: True
position: 1 
---

# DetailListViewDragDropService

When **RadListView** is in *DetailsView* it provides a grid-like interface for displaying items with more than one data fields. In this mode it displays columns and supports columns rearranging by the **DetailListViewDragDropService**. In order to enable columns reordering, the **AllowColumnReorder** property must be set to *true*. The service can be accessed by the DetailListViewElement.**ColumnDragDropService** property.

>caption Figure 1: Reorder columns

![WinForms RadListView Reorder columns](images/listview-detaillistviewdragdropservice001.gif)

As a descendant of [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%}), **DetailListViewDragDropService** exposes the same events as its parent. Thus, you can customize the default functionality according to the specific requirements.

# See Also

* [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%})	
* [Drag and Drop using RadDragDropService]({%slug winforms/listview/drag-and-drop/drag-and-drop-using-raddragdropservice%})

