---
title: UI Virtualization
page_title: UI Virtualization | RadGridView
description: UI Virtualization
slug: winforms/gridview/fundamentals/ui-virtualization
tags: ui,virtualization
published: True
position: 10
previous_url: gridview-fundamentals-ui-virtualization
---

# UI Virtualization

__RadGridView__ uses virtualization for its cells and rows. To put it simply, this means that when binding to a DataTable with 1000 rows, you get 1000 data row objects created in RadGridView (of type __GridViewDataRowInfo__). However, not all data row objects can be visible at the same time in the RadGridView estate area in your application. This is why only the visual rows that can be shown in the estate area get created (these visual rows are of type __GridDataRowElement__), or about 20-30 rows for an average application with medium-sized RadGridView. These visual elements are reused during scrolling, filtering and other operations with the grid, meaning dramatically improved performance and memory footprint as only a small number of visual items are created.        
        

## Formatting events

Because of the virtualization you cannot access UI elements at design time or directly by using the element tree or a property. Instead, you have to use formatting events. These events in RadGridView are __CellFormatting__ for data cells and __RowFormatting__ for data rows. When customizing system rows and cells, one should use __ViewCellFormatting__ and __ViewRowFormatting__ events instead. [Read more]({%slug winforms/gridview/cells/formatting-cells%})

Here is a quick sample:

{{source=..\SamplesCS\GridView\Fundamentials\UIVirtualization.cs region=cellFormatting}} 
{{source=..\SamplesVB\GridView\Fundamentials\UIVirtualization.vb region=cellFormatting}} 


{{endregion}} 


![gridview-fundamentals-ui-virtualization 001](images/gridview-fundamentals-ui-virtualization001.png)

## Style property

Another solution is the __Style__ property which is available when accessing logical cell objects. It allows for directly setting visual properties that will reflect the specified cell element. [Read more]({%slug winforms/gridview/cells/formatting-cells%})

## Conditional formatting

Another feature that we provide is the conditional formatting which is available for end user via context menu. [Read more]({%slug winforms/gridview/cells/conditional-formatting-cells%})

