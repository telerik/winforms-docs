---
title: GridViewRowInfo
page_title: GridViewRowInfo | RadGridView
description: GridViewRowInfo
slug: winforms/gridview/rows/gridviewrowinfo
tags: gridviewrowinfo
published: True
position: 0
previous_url: gridview-rows-gridviewrowinfo
---

# GridViewRowInfo



__GridViewRowInfo__ class is the logical representation of a single row. Some of the significant properties include:

* __IsEditable__: The row can be edited.

* __IsExpanded__: This property indicates if the row has been expanded when the row is a grouping header row or when displaying hierarchy.

* [IsPinned]({%slug winforms/gridview/rows/pinned-rows%}): Can be pinned to the top of the grid so the row will always be visible, even when scrolling.

* [IsSelected:]({%slug winforms/gridview/rows/selected-rows-and-current-row%}) If set to __True,__ the row is selected.

* __Height__: The height of the row in pixels.

* [IsCurrent:]({%slug winforms/gridview/rows/selected-rows-and-current-row%}) If set to __True,__ the row is selected.

* __AllowResize__: If __True__, the height of the row can be resized. If __False__ the splitter mouse cursor does not display and the row is prevented from being resized.
          

* __IsVisible__ determines whether the row is visible. Note this is NOT related to scrolling but visible in general.

GridViewRowInfo also has an __EnsureVisible__ method that scrolls a row into view.
      

The example below demonstrates the behavior of several of these properties:<br>![gridview-rows-gridviewrowinfo 001](images/gridview-rows-gridviewrowinfo001.png)

#### Using GridViewRowInfo 

{{source=..\SamplesCS\GridView\Rows\GridViewRowInfo1.cs region=GridViewRowInfo}} 
{{source=..\SamplesVB\GridView\Rows\GridViewRowInfo1.vb region=GridViewRowInfo}} 

````C#
GridViewRowInfo lastRow = radGridView1.Rows[radGridView1.Rows.Count - 1];
lastRow.EnsureVisible();
lastRow.IsSelected = true;
lastRow.Height = 100;
lastRow.AllowResize = false;

````
````VB.NET
Dim lastRow As GridViewRowInfo = RadGridView1.Rows(RadGridView1.Rows.Count - 1)
lastRow.EnsureVisible()
lastRow.IsSelected = True
lastRow.Height = 100
lastRow.AllowResize = False

````

{{endregion}} 

## 

__Difference between GridViewInfo.Rows and GridViewTemplate.Rows__

One __GridViewTemplate__ corresponds to one DataSource. As its name speaks, it is a template and it defines the structure of the data presented - the number, order, header text and other properties of the columns. In addition it has properties for user interaction - *AllowAddNewRow*, *ShowColumnHeaders*, etc. On the other side, you may have several __GridViewInfo's__(views) for one DataSource. In a RadGridView displaying flat data, there is one __GridViewTemplate__ and one __GridViewInfo__ for one DataSource. Therefore, you will find that some of their properties will return one and the same values. In order to understand the actual difference, let's analyze the case of hierarchical grid with 2 levels of hierarchy - one parent and one child levels. Since there are two DataSources in this case, there are two __GridViewTemplates__ - one per level. These __GridViewTemplates__ govern the data structure properties. However, you may have several __GridViewInfos__ for one __GridViewTemplate__ - if you have three rows of the __MasterTemplate__ expanded, you will have three GridViewInfos for the child GridViewTemplate.
        
__GridViewInfo.Rows__ are a subset of __GridVIewTemplate.Rows__. The subset is created dynamically so it is slower operation.
        
